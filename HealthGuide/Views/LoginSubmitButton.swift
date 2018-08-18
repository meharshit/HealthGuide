//
//  LoginSubmitButton.swift
//  HealthGuide
//
//  Created by Harshit Satyaseel on 09/06/18.
//  Copyright © 2018 Harshit Satyaseel. All rights reserved.
//

import UIKit

class LoginSubmitButton: UIButton {

    struct color {
        static let twitterBlue = UIColor(red: 29.0/255.0, green: 161.0/255.0, blue: 242.0/255.0, alpha: 1.0)
    }
    var isOn = false
    
    override init(frame: CGRect){
     super.init(frame: frame)
        initButton()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initButton()
    }
    
    func initButton(){
        // code for looking like the twitter button
        layer.borderWidth = 2.0
        layer.borderColor = color.twitterBlue.cgColor
        layer.cornerRadius = frame.size.height/2
        setTitleColor(color.twitterBlue, for: .normal)
        
        addTarget(self, action: #selector(LoginSubmitButton.buttonPressed), for: .touchUpInside)
        
    }
    @objc func buttonPressed(){
        activateButton(bool: !isOn) // flipped the off to on
        
    }
    // actually button takes a boolean type
    func activateButton(bool : Bool){
        
        isOn = bool // flipping up the button from off to on that is why it has been set to bool that has been done on in the upper function
        let colors = bool ? color.twitterBlue : .clear
        let title = bool ? "DONE" : "SIGNIN"
        let titleColor = bool ? .white : color.twitterBlue
        
        setTitleColor(titleColor, for: .normal)
        setTitle(title, for: .normal)
        backgroundColor = colors
        
    }
}

extension LoginSubmitButton{
    
    func pulseRate(){
        
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.6
        pulse.fromValue = 0.95
        pulse.toValue = 1.0
        pulse.autoreverses = true
        pulse.repeatCount = 1
        pulse.initialVelocity = 0.5
        pulse.damping = 1.0
        
        layer.add(pulse, forKey:  nil)
        
    }
   
}
