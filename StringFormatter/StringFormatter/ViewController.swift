//
//  ViewController.swift
//  StringFormatter
//
//  Created by Anil ORUC on 21/07/2017.
//  Copyright © 2017 Anil ORUC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfieldPhoneNumber: UITextField!
    @IBOutlet weak var textfieldCreditCard: UITextField!
    @IBOutlet weak var textfieldSerialNumber: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        guard let text = textField.text else {
            return true
        }
        let lastText = (text as NSString).replacingCharacters(in: range, with: string) as String
        
        if textfieldPhoneNumber == textField {
            textField.text = lastText.format("(NNN) NNN NN NN", oldString: text)
            return false
        } else if textfieldCreditCard == textField {
            textField.text = lastText.format("nnnn nnnn nnnn nnnn", oldString: text)
            return false
        } else if textfieldSerialNumber == textField {
            textField.text = lastText.format("XX NNNN", oldString: text)
            return false
        }
        return true
    }
}

