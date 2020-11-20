//
//  TableViewController.swift
//  Hansel2
//
//  Created by 정창용 on 2020/10/22.
//  Copyright © 2020 정창용. All rights reserved.
//

import UIKit

class MainTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var HanselTableView: UITableView!
    @IBOutlet weak var BackgroundView: UIView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hansel.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mainCell") as! TableViewCell
        
        cell.dateLabel.text = date
        cell.countLabel.text = String(hansel.count)
        
        return cell
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        HanselTableView.dataSource = self
        HanselTableView.delegate = self
        HanselTableView.rowHeight = 95
        
        let border = CALayer()
        border.frame = CGRect(x: 0, y: BackgroundView.frame.size.height-1, width: BackgroundView.frame.width, height: 1)
        border.backgroundColor = UIColor.black.cgColor
        BackgroundView.layer.addSublayer(border)
        
        useUserDefaults()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        HanselTableView.reloadData()
        
    }
    
    func useUserDefaults() {
        UserDefaults.standard.object(forKey: "year")
        UserDefaults.standard.object(forKey: "month")
        UserDefaults.standard.object(forKey: "day")
        
        UserDefaults.standard.object(forKey: "sh")
        UserDefaults.standard.object(forKey: "sm")
        
        UserDefaults.standard.object(forKey: "fh")
        UserDefaults.standard.object(forKey: "fm")
        
        UserDefaults.standard.object(forKey: "address")
        UserDefaults.standard.object(forKey: "memo")
        
    }

}

