//
//  SecondTableViewController.swift
//  Hansel2
//
//  Created by 정창용 on 2020/11/04.
//  Copyright © 2020 정창용. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    @IBOutlet weak var secondTableView: UITableView!
    @IBOutlet weak var yearLabel: UILabel!
    @IBOutlet weak var dateLabel : UILabel!
    @IBOutlet weak var routesCount: UITextView!
    
    @IBAction func AllRoutesButton (_ sender : UIBarItem){
        self.navigationController?.popViewController(animated: true)
        
    }

    @IBAction func DeleteButton(_ sender : UIBarButtonItem){
        let alert = UIAlertController(title: "정말 삭제하시겠습니까?", message: "현재 날짜의 모든 기록이 삭제됩니다.", preferredStyle: UIAlertController.Style.alert)
        
        let cancelAction = UIAlertAction(title: "취소", style: .default, handler: nil)
        
        let deleteAction = UIAlertAction(title: "삭제", style: .destructive) {
            (action) in hansel.removeAll()
            self.navigationController?.popViewController(animated: true)
            
        }
        
        alert.addAction(cancelAction)
        alert.addAction(deleteAction)
        
        present(alert, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        yearLabel.text = yeardate
//        dateLabel.text = date
//        countLabel.text = String(hansel.count)
        
        
        secondTableView.dataSource = self
        secondTableView.delegate = self
        secondTableView.rowHeight = 152
        
        self.navigationController?.navigationBar.topItem?.title = "All Routes"
        
        self.routesCount.layer.cornerRadius = 0.5 * routesCount.bounds.size.width
        self.routesCount.layer.borderWidth = 2.0
        self.routesCount.layer.borderColor = UIColor.black.cgColor
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return hansel.count
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secondCell") as! SecondTableViewCell
        
        cell.addressLabel?.text = hansel[indexPath.row].address
//        cell.startTime?.text = arrivetime
//        cell.finishTime?.text = leavetime
        cell.memoTextView?.text = hansel[indexPath.row].memo
        
        cell.deleteButton.tag = indexPath.row
        cell.deleteButton.addTarget(self, action: #selector(deleteDetailButton(sender:)), for: .touchUpInside)
        
        return cell
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        secondTableView.reloadData()
        
    }

    @objc func deleteDetailButton(sender: UIButton) {
        let alert = UIAlertController(title: "정말 삭제하시겠습니까?", message: "선택하신 기록이 삭제됩니다.", preferredStyle: UIAlertController.Style.alert)
        
        let cancelAction = UIAlertAction(title: "취소", style: .default, handler: nil)
        
        let deleteAction = UIAlertAction(title: "삭제", style: .destructive) {
            (action) in
            hansel.remove(at: sender.tag)
            self.secondTableView.reloadData()
            
        }
        
        alert.addAction(cancelAction)
        alert.addAction(deleteAction)
        
        present(alert, animated: true, completion: nil)
        
    }

}

