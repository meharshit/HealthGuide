//
//  LoginPage.swift
//  HealthGuide
//
//  Created by Harshit Satyaseel on 08/06/18.
//  Copyright © 2018 Harshit Satyaseel. All rights reserved.
//

import UIKit

class LoginPage: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var sethoscope: UIImageView!
    @IBOutlet weak var entreIdOutlet: UITextField!
    @IBOutlet weak var SignInPasswordOutlet: UITextField!
    @IBOutlet weak var loginSubmitOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureTextField()
       // configureTapGesture()
       // self.navigationController?.isNavigationBarHidden = true
        self.navigationItem.setHidesBackButton(true, animated:true) // hiding the back button item
       self.tabBarController?.tabBar.isHidden = true
        
    }
    
    private func configureTextField(){
        entreIdOutlet.delegate = self
        SignInPasswordOutlet.delegate = self
    }
    
//    func configureTapGesture(){
//        let tapgesture = UITapGestureRecognizer(target: self, action: #selector(UIViewController.handleTap))
//        view.addGestureRecognizer(tapgesture)
//    }
//   @objc func handleTap(){
//        print("handle tab was pressed")
//        view.endEditing(true)
//
//    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        entreIdOutlet.resignFirstResponder()
        SignInPasswordOutlet.resignFirstResponder()
        return true
        
    }

    @IBAction func loginSubmit(_ sender: LoginSubmitButton) {
      sender.pulseRate()
         self.performSegue(withIdentifier: "mainPage", sender: self)
      
    }
    
//    @IBAction func signUPButtonAction(_ sender: Any) {
//    }
    
    @IBAction func forgotPassword(_ sender: Any) {
    }
    
    @IBAction func signUpAction(_ sender: Any) {
      //   self.navigationController?.pushViewController(signUppage, animated: true)
        
    }
    
}
