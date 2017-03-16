//
//  TableListVC.swift
//  CoffeeStoreMS
//
//  Created by Nguyen Duy Khanh on 3/9/17.
//  Copyright © 2017 Nguyen Duy Khanh. All rights reserved.
//

import UIKit

class TableListVC: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    @IBOutlet weak var tableCollectionView: UICollectionView!
    
    let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
    var tables:[Tables] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        tableCollectionView.dataSource = self
        tableCollectionView.delegate = self
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        getData()
        tableCollectionView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func getData() {
        do {
            tables = try context.fetch(Tables.fetchRequest())
        }
        catch {
            print("Fetching Failed")
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "tableCell", for: indexPath) as? TableCell {
            let table = tables[indexPath.row]
            if let tableName = table.name {
                cell.tableNameLbl.text = tableName
            }
            return cell
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return tables.count
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }

}
