//
//  ViewController.swift
//  TaxEasyCalculator小費計算機
//
//  Created by Rose on 2021/5/4.
//

import UIKit

class ViewController: UIViewController {
    // 輸入匡
    @IBOutlet weak var priceTextField: UITextField!
    @IBOutlet weak var taxTextField: UITextField!
    @IBOutlet weak var peopleTextField: UITextField!
    //計算結果
    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var taxPriceLabel: UILabel!
    @IBOutlet weak var onePriceLabel: UILabel!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // 收起鍵盤
        
    }
    
    @IBAction func calculator(_ sender: UIButton) {
        
        //將三個textfield鍵盤收起
        priceTextField.resignFirstResponder()
        taxTextField.resignFirstResponder()
        peopleTextField.resignFirstResponder()
        
        // 上面三個textfield 有一方未填的話 下方兩個label顯示0
        if priceTextField.text == "" || taxTextField.text == "" || peopleTextField.text == ""{
            totalPriceLabel.text = "0"
            taxPriceLabel.text = "0"
            onePriceLabel.text = "0"
        }else{
            // 計算稅金
            let tax = Double(priceTextField.text!)! * Double(taxTextField.text!)! / 100
            let total = Double(priceTextField.text!)! + tax
            let share = total / Double(peopleTextField.text!)!
            
            totalPriceLabel.text = String(total)
            taxPriceLabel.text = String(tax)
            onePriceLabel.text = String(share)
            
        }
        
        //print(priceTextField.text)
    }
    
    @IBAction func pressClearBtn(_ sender: UIButton) {
        priceTextField.text = ""
        taxTextField.text = ""
        peopleTextField.text = ""
        totalPriceLabel.text = "0"
        taxPriceLabel.text = "0"
        onePriceLabel.text = "0"
    }
    @IBAction func onTap(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    

    

}

