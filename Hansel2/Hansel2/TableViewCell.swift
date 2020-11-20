//
//  TableViewCell.swift
//  Hansel2
//
//  Created by 정창용 on 2020/10/23.
//  Copyright © 2020 정창용. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var countLabel: UILabel! {
        didSet {
            countLabel.layer.borderWidth = 2.0
            countLabel.layer.borderColor = UIColor.black.cgColor
            countLabel.layer.cornerRadius = 29
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}

