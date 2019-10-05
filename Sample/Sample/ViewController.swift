//
//  ViewController.swift
//  Sample
//
//  Created by Masamitsu Ochiai on 2019/09/16.
//  Copyright © 2019 exam_org. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var myTextField: UITextField!
    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // コメント追記（サンプルのコメント）
        
//      myTextFieldのデリゲートになる
        myTextField.delegate = self
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange,
                   replacementString string: String) -> Bool {
        let tmpStr = textField.text! as NSString
        let replacedString = tmpStr.replacingCharacters(in: range, with: string)
        if replacedString == "" {
            myLabel.text = "0"
        } else{
            if let num = Int(replacedString) {
                myLabel.text = String(num*25)
            }
        }
        
        return true
        // コメント追加！！！
    }
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        myLabel.text = "0"
        return true
    }
    
    @IBAction func tspView(_ sender: Any) {
        view.endEditing(true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

