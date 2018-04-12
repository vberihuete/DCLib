//
//  ViewController.swift
//  DCLib
//
//  Created by vberihuete on 04/10/2018.
//  Copyright (c) 2018 vberihuete. All rights reserved.
//

import UIKit
import DCLib

class ViewController: UIViewController {

    @IBOutlet weak var contentSV: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let userInput = DCInputField(label: "Username")
        let passwordInput = DCInputField(label: "Password")
        
        userInput.textField.delegate = self
        passwordInput.textField.delegate = self
        
        userInput.textField.returnKeyType = .next
        passwordInput.textField.returnKeyType = .done
        passwordInput.textField.isSecureTextEntry = true
        
        contentSV.insertArrangedSubview(passwordInput, at: 0)
        contentSV.insertArrangedSubview(userInput, at: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}


extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.shake()
        return true
    }
}
