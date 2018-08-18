//
//  SignUpViewController.swift
//  HealthGuide
//
//  Created by Harshit Satyaseel on 08/06/18.
//  Copyright © 2018 Harshit Satyaseel. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // self.navigationController?.isNavigationBarHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signUpSubmitButton(_ sender: LoginSubmitButton) {
        sender.pulseRate()
    }
    
    @IBAction func facebookLogin(_ sender: Any) {
        
        
    }
    
    @IBAction func googleLogin(_ sender: Any) {
    }
}
