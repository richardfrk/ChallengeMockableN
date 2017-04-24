//
//  LoginViewController.swift
//  ChallengeMockableN
//
//  Created by Richard Frank on 24/04/17.
//  Copyright © 2017 Richard Frank. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginEmailTextField: UITextField!
    @IBOutlet weak var loginPassTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        loginEmailTextField.resignFirstResponder()
        loginPassTextField.resignFirstResponder()
    }
    
    @IBAction func loginValidate(_ sender: UIButton) {
        
        MockableAPI.validateLogin(user: loginEmailTextField.text!, password: loginPassTextField.text!) { (result) in
            
            print(result)
        }
    }
}
