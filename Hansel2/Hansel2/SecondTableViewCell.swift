//
//  SecondTableViewCell.swift
//  Hansel2
//
//  Created by 정창용 on 2020/11/02.
//  Copyright © 2020 정창용. All rights reserved.
//

import UIKit

class SecondTableViewCell: UITableViewCell {
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var startTime: UILabel!
    @IBOutlet weak var finishTime: UILabel!
    @IBOutlet weak var memoTextView: UITextView! {
        didSet {
            memoTextView.layer.borderWidth = 1.0
            memoTextView.layer.borderColor = UIColor.black.cgColor
            memoTextView.layer.cornerRadius = 20
        }
    }
    @IBOutlet weak var lineImageView: UIImageView!
    @IBOutlet weak var deleteButton: UIButton!
    
    @IBAction func deleteButtonAction(_ sender: UIButton) {
        let alert = UIAlertController(title: "정말 삭제하시겠습니까?", message: "선택하신 기록이 삭제됩니다.", preferredStyle: UIAlertController.Style.alert)
        
        let cancelAction = UIAlertAction(title: "취소", style: .default, handler: nil)
        
        let deleteAction = UIAlertAction(title: "삭제", style: .destructive) {
            (action) in
        }
        
        alert.addAction(cancelAction)
        alert.addAction(deleteAction)
        
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
    }
    
}

