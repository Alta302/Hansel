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
    
    var year: Int = 0
    var month: Int = 0
    var day: Int = 0
    var sh: Int = 0
    var sm: Int = 0
    var fh: Int = 0
    var fm: Int = 0
    var address: String = ""
    var memo: String? = ""
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
    init (year: Int, month: Int, day: Int, sh: Int, sm: Int, fh: Int, fm: Int, address: String, memo: String?) {
        self.year = year
        self.month = month
        self.day = day
        self.sh = sh
        self.sm = sm
        self.fh = fh
        self.fm = fm
        self.address = address
        self.memo = memo
        
    }
    
}

