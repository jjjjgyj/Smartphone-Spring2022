//
//  StockViewController.swift
//  NailStocks
//
//  Created by Yunjia Gao on 2/20/22.
//

import UIKit
import SwiftyJSON
import SwiftSpinner
import Alamofire

class StockViewController: UIViewController {

    @IBOutlet weak var txtStockSymbol: UITextField!
    
    

    @IBOutlet weak var lblStockPrice: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func getStockPrice(_ sender: Any) {
        
        guard let symbol = txtStockSymbol.text else {return}
        
        let url = "\(shortQuoteURL)\(symbol.uppercased())?apikey=\(apiKey)"
        
        print(url)
        SwiftSpinner.show("Getting Stock Value for \(symbol)")
        AF.request(url).responseJSON { response in
            SwiftSpinner.hide(nil)
            if response.error != nil {
                print(response.error!)
                return
            }
            // if I am here I got the data
            let stocks = JSON(response.data!).array
            
            guard let stock = stocks!.first else {return}
            
            
            print(stocks)
            
            let quote = QuoteShort()
            quote.symbol = stock["symbol"].stringValue
            quote.rating = stock["ratingScore"].intValue
            quote.ratingRecommendation = stock["ratingRecommendation"].stringValue
        
            self.lblStockPrice.text = "\(quote.symbol) : \(quote.rating), \(quote.ratingRecommendation)"
            
        }
        
    }
    

}
