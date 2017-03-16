//
//  EditTableVC.swift
//  CoffeeStoreMS
//
//  Created by Nguyen Duy Khanh on 3/15/17.
//  Copyright © 2017 Nguyen Duy Khanh. All rights reserved.
//

import UIKit

class EditTableVC: UIViewController,UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var tableView: UITableView!

    var tables:[Tables] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getData()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "editTableCell", for: indexPath) as? EditTableCell {
            let table = tables[indexPath.row]
            if let tableName = table.name {
                cell.tableNameTf.text = tableName
            }
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tables.count
    }
    
    func getData() {
        do {
            tables = try context.fetch(Tables.fetchRequest())
        }
        catch {
            print("Fetching Failed")
        }
    }

}
