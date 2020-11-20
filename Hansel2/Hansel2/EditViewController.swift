//
//  ViewController.swift
//  Hansel2
//
//  Created by 정창용 on 2020/10/22.
//  Copyright © 2020 정창용. All rights reserved.
//

import UIKit

var hansel = [Hansel]()

class EditViewController: UIViewController {
    @IBOutlet weak var yearTF: UITextField!
    @IBOutlet weak var monthTF: UITextField!
    @IBOutlet weak var dayTF: UITextField!
    
    @IBOutlet weak var startHourTF: UITextField!
    @IBOutlet weak var startMinuteTF: UITextField!
    @IBOutlet weak var finishHourTF: UITextField!
    @IBOutlet weak var finishMinuteTF: UITextField!
    
    @IBOutlet weak var addressTF: UITextField!
    @IBOutlet weak var memoTextView: UITextView!
    
    @IBOutlet weak var addButton: UIButton!

    var year : String = ""
    var month : String = ""
    var day : String = ""

    var sh : String = ""
    var sm : String = ""
    
    var fh : String = ""
    var fm : String = ""

    var address : String = ""
    var memo : String = ""
    
    @IBAction func allRouteButtonAction(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
    
    @IBAction func addButtonAction(_ sender: Any) {
        year = yearTF.text!
        month = monthTF.text!
        day = dayTF.text!
        
        sh = startHourTF.text!
        sm = startMinuteTF.text!
        
        fh = finishHourTF.text!
        fm = finishMinuteTF.text!
        
        address = addressTF.text!
        memo = memoTextView.text!
        
        let item : Hansel = Hansel(year : year, month : month, day: day, sh : sh, sm : sm, fh : fh, fm : fm, address : address, memo : memo)
        
        useUserDefaults()
        
        // 모르겠다 때려쳐
        
        let alert = UIAlertController(title: "경로를 추가하시겠습니까?", message: nil, preferredStyle: UIAlertController.Style.alert)
        
        let cancelAction = UIAlertAction(title: "취소", style: .default, handler: nil)
        
        let addAction = UIAlertAction(title: "추가", style: .default) {
            (action) in hansel.append(item)
            self.navigationController?.popViewController(animated : true)
            
        }
        
        alert.addAction(cancelAction)
        alert.addAction(addAction)
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setTFLine(yearTF)
        setTFLine(monthTF)
        setTFLine(dayTF)
        setTFLine(startHourTF)
        setTFLine(startMinuteTF)
        setTFLine(finishHourTF)
        setTFLine(finishMinuteTF)
        setTFLine(addressTF)
        
        self.navigationController?.navigationBar.topItem?.title = "All Routes"
        
        memoTextView.layer.borderWidth = 2.0
        memoTextView.layer.borderColor = UIColor.black.cgColor
        memoTextView.layer.cornerRadius = 10
        
        setLine(addButton)
        
    }
    
    func setTFLine (_ nameOfTextField: UITextField) {
        let border = CALayer()
        let width = CGFloat(2.0)
        border.borderColor = UIColor.darkGray.cgColor
        border.frame = CGRect(x: 0, y: nameOfTextField.frame.size.height - width, width: nameOfTextField.frame.size.width, height: nameOfTextField.frame.size.height)
    
        border.borderWidth = width
        
        nameOfTextField.layer.addSublayer(border)
        nameOfTextField.layer.masksToBounds = true
        
    }
    
    func setLine (_ nameOfButton: UIButton) {
        nameOfButton.layer.borderWidth = 2.0
        nameOfButton.layer.cornerRadius = 0.1 * nameOfButton.bounds.size.width
        
    }
    
    func useUserDefaults() {
        UserDefaults.standard.set(year, forKey:"year")
        UserDefaults.standard.set(month, forKey: "month")
        UserDefaults.standard.set(day, forKey: "day")
        
        UserDefaults.standard.set(sh, forKey: "sh")
        UserDefaults.standard.set(sm, forKey: "sm")
        
        UserDefaults.standard.set(fh, forKey: "fh")
        UserDefaults.standard.set(fm, forKey: "fm")
        
        UserDefaults.standard.set(address, forKey: "address")
        UserDefaults.standard.set(memo, forKey: "memo")
        
    }

}

