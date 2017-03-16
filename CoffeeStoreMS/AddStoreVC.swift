//
//  AddStoreVC.swift
//  CoffeeStoreMS
//
//  Created by Nguyen Duy Khanh on 3/9/17.
//  Copyright © 2017 Nguyen Duy Khanh. All rights reserved.
//

import UIKit

class AddStoreVC: UIViewController {

    @IBOutlet weak var editTableBtn: UIButton!
    @IBOutlet weak var tableNameTf: UITextField!
    
    @IBOutlet weak var itemIDtf: UITextField!
    @IBOutlet weak var itemNameTf: UITextField!
    @IBOutlet weak var itemPriceTf: UITextField!
    @IBOutlet weak var itemUnitTf: UITextField!
    @IBOutlet weak var itemCategoryTf: UITextField!
    
    var tables:[Tables] = []
    var items:[Item] = []
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addTableButtontapped(_ sender: Any) {
        let tables = Tables(context:context)
        tables.name = tableNameTf.text
        ad.saveContext()
    }

    @IBAction func addItemButtonTapped(_ sender: Any) {
        let item = Item(context: context)
        item.itemID = itemIDtf.text
        item.name = itemNameTf.text
        if let price = itemPriceTf.text {
            item.price = Float(( price as NSString).doubleValue)
        }
        ad.saveContext()
    }
    
    func getData() {
        do {
            tables = try context.fetch(Tables.fetchRequest())
            items = try context.fetch(Item.fetchRequest())
        }
        catch {
            print("Fetching Failed")
        }
    }

}
