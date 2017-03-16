//
//  TableCell.swift
//  CoffeeStoreMS
//
//  Created by Nguyen Duy Khanh on 3/9/17.
//  Copyright © 2017 Nguyen Duy Khanh. All rights reserved.
//

import UIKit

class TableCell: UICollectionViewCell {
    
    @IBOutlet weak var tableNameLbl: UILabel!
    

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = 0.5
        layer.borderColor = UIColor.red.cgColor
    }
    
    
}

