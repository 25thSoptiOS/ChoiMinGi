//
//  LoginViewController.swift
//  system_ui_exam
//
//  Created by Minki Choe on 03/10/2019.
//  Copyright © 2019 Minki Choe. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var loginUserid: UITextField!
    @IBOutlet weak var loginPassword: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == self.loginUserid {
            textField.resignFirstResponder()
            self.loginPassword.becomeFirstResponder()
        }
        textField.resignFirstResponder()
        return true
    }

}
