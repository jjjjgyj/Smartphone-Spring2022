//
//  StockViewController.swift
//  StockMaster
//
//  Created by Yunjia Gao on 2/27/22.
//

import UIKit
import RealmSwift

class StockViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // print(Realm.Configuration.defaultConfiguration.fileURL?.path)
        loadStockValues()

    }

    @IBAction func addDBAction(_ sender: Any) {
    
        let stock = StockShort()
        stock.symbol = symbol
        stock.price = 120.96
        stock.volume = 234234234234
        
        do{
            let realm = try Realm()
            try realm.write({
                realm.add(stock, update: .modified)
            })
            
        } catch {
            print("Error in writing to db")
        }
        
    }

    func loadStockValues(){
        do{
            let realm = try Realm()
            let stocks = realm.objects(StockShort.self)
            
            // print(stocks)
            
            for stock in stocks{
                print(stock.symbol)
            }
            
        } catch {
            print("Error in reading from Realm")
        }
        
        
    }
    
    func getTslaSTock()-> StockShort{
        do{
            let realm = try Realm()
            let stocks = realm.objects(StockShort.self)
            
            // print(stocks)
            
            for stock in stocks{
                if stock.symbol == "TSLA"{
                    return stock
                }
            }
        } catch {
            print("Error in reading from Realm")
        }
        
        return StockShort()
        
    }
    
    func deleteStockFromDB(stock: StockShort){
        do {
            let realm = try Realm()
            try realm.write({
                realm.delete(stock)
            })
            
        } catch{
            print("Unable to delete from Realm DB")
        }
    }
    
    @IBAction func deleteTSLAStock(_ sender: Any) {
        let tsla = getTslaSTock()
        deleteStockFromDB(stock: tsla)
        
    }
    
    func addStockToDB(symbol: String){
        
    }
    
    @IBAction func addStocksAction(_ sender: Any) {
        
        var txtField: UITextField?
        
        let alertController = UIAlertController(title: "Add Stock", message: "", preferredStyle: .alert)
        
        let OKButton = UIAlertAction(title: "OK", style: .default) { action in
            guard let symbol = txtField?.text else {
                return
            }
            self.addStockToDB(symbol: symbol)
        }
        
        let cancelButton = UIAlertAction(title: "Cancel" , style: .cancel) { <#UIAlertAction#> in
            <#code#>
        }
        
        alertController.addAction(OKButton)
        alertController.addAction(cancelButton)
        
        alertController.addTextField { stockTextField in
            stockTextField.placeholder = "Type Stock Symbol"
            txtField = stockTextField
            
        }
        
        
    }
    
    self.presnet(UIAlertController)
    



}

