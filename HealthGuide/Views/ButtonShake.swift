//
//  ButtonShake.swift
//  HealthGuide
//
//  Created by Harshit Satyaseel on 19/06/18.
//  Copyright © 2018 Harshit Satyaseel. All rights reserved.
//

import Foundation

import UIKit

extension UIButton {
    
    func ShakeTheButton(completion: @escaping ()-> Void){
        
        let shake =  CABasicAnimation(keyPath: "position")
        shake.duration = 0.2
        shake.repeatCount = 2.0
        shake.autoreverses = true
        
        let fromPoint = CGPoint(x: center.x - 2, y: center.y)
        let fromValue = NSValue(cgPoint: fromPoint)
        
        let toPoint = CGPoint(x: center.x + 2, y: center.y)
        let toValue = NSValue(cgPoint: toPoint)
        
        
        shake.fromValue = fromValue
        shake.toValue = toValue
        
        layer.add(shake, forKey: nil)
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2, execute: {
            completion()
        })
    }
    
}
