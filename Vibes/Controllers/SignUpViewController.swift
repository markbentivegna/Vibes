//
//  SignUpViewController.swift
//  Vibes
//
//  Created by Mark Bentivegna on 5/14/18.
//  Copyright © 2018 Mark Bentivegna. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

protocol SignUpDelegate {
    
}

class SignUpViewController: UIViewController {

    var delegate : SignUpDelegate?
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func createAccountPressed(_ sender: UIButton) {
        
        Auth.auth().createUser(withEmail: emailTextField.text!, password: passwordTextField.text!) {
            (user, error) in
            
            SVProgressHUD.show()
            
            if error != nil {
                print(error!)
            } else {
                //success
                print("Registration Successful!")
                
                SVProgressHUD.dismiss()
                
                
            }
            
        }
        
    }
    
}

