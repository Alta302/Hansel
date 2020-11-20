//
//  ListTableViewController.swift
//  Hansel2
//
//  Created by 정창용 on 2020/10/25.
//  Copyright © 2020 정창용. All rights reserved.
//

import UIKit

// var list = [Hansel]()

class ListTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var yearLabel : UILabel!
    @IBOutlet weak var dateLabel : UILabel!
    @IBOutlet weak var countLabel : UILabel!
    @IBOutlet weak var routesCount: UITextView!
    @IBOutlet weak var listTableView: UITableView!
    
    var cellCount: Int = 1
    
    
    
    @IBAction func deleteButton(_ sender : UIBarButtonItem){
        let alert = UIAlertController(title: "정말 삭제하시겠습니까?", message: "현재 날짜의 모든 기록이 삭제됩니다.", preferredStyle: UIAlertController.Style.alert)
        
        let cancelAction = UIAlertAction(title: "취소", style: .default, handler: nil)
        let deleteAction = UIAlertAction(title: "삭제", style: .destructive, handler: nil)
        
        alert.addAction(cancelAction)
        alert.addAction(deleteAction)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        yearLabel.text = year
        dateLabel.text = date
        countLabel.text = String(cellCount)
        
        listTableView.dataSource = self
        listTableView.delegate = self
        
        listTableView.rowHeight = 152
        
        self.navigationController?.navigationBar.topItem?.title = "All Routes"
        
        self.routesCount.layer.cornerRadius = 0.5 * routesCount.bounds.size.width
        self.routesCount.layer.borderWidth = 2.0
        self.routesCount.layer.borderColor = UIColor.black.cgColor
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellCount
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondcell") as! SecondTableViewCell
        
        cell.addressLabel?.text = Hansel[indexPath.row].address
        cell.startTime?.text = starttime
        cell.finishTime?.text = finishtime
        cell.memoTextView?.text = hansel[indexPath.row].memo
        
        return cell
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        listTableView.reloadData()
        
    }

}

