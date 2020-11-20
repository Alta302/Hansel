//
//  Hansel.swift
//  Hansel2
//
//  Created by 정창용 on 2020/11/01.
//  Copyright © 2020 정창용. All rights reserved.
//

import Foundation

struct Hansel {
    var year: String = ""
    var month: String = ""
    var day: String = ""
    var sh: String = ""
    var sm: String = ""
    var fh: String = ""
    var fm: String = ""
    var address: String = ""
    var memo: String = ""
    var yeardate : String = ""
    var date : String = ""
    var startTime : String = ""
    var finishTime : String = ""
 
    init (year : String, month : String, day : String, sh : String, sm : String, fh : String, fm : String, address : String, memo : String){
        self.year = year
        self.month = month
        self.day = day
        self.sh = sh
        self.sm = sm
        self.fh = fh
        self.fm = fm
        self.address = address
        self.memo = memo
        self.yeardate = year + "년"
        self.date = month + "월" + day + "일"
        self.startTime = sh + ":" + sm
        self.finishTime = fh + ":" + fm
        
    }

}

