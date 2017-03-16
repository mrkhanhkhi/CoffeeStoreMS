//
//  EditTableCell.swift
//  CoffeeStoreMS
//
//  Created by Nguyen Duy Khanh on 3/15/17.
//  Copyright © 2017 Nguyen Duy Khanh. All rights reserved.
//

import UIKit

class EditTableCell: UITableViewCell {

    @IBOutlet weak var tableNameTf: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func displayTable(table:Tables) {
        tableNameTf.text = table.name
    }

    @IBAction func deleteBtnPressed(_ sender: Any) {
        
    }

}
