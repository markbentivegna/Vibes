//
//  SignUpViewController.swift
//  Vibes
//
//  Created by Mark Bentivegna on 5/14/18.
//  Copyright © 2018 Mark Bentivegna. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {
    
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
    }
    
}

