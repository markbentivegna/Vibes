//
//  LogInViewController.swift
//  Vibes
//
//  Created by Mark Bentivegna on 6/1/18.
//  Copyright © 2018 Mark Bentivegna. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

protocol LogInDelegate {
    
}

class LogInViewController: UIViewController {
    
    var delegate : LogInDelegate?
    
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
    
    
    @IBAction func logInButtonPressed(_ sender: UIButton) {
        SVProgressHUD.show()
        
        //TODO: Log in the user
        Auth.auth().signIn(withEmail: emailTextField.text!, password: passwordTextField.text!) { (user, error) in
            if error != nil {
                print(error!)
            } else {
                print("Log in successful!")
                
                SVProgressHUD.dismiss()
                
            }
        }
    }
    
}
