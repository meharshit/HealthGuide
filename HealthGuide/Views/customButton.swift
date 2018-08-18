//
//  customButton.swift
//  HealthGuide
//
//  Created by Harshit Satyaseel on 18/06/18.
//  Copyright © 2018 Harshit Satyaseel. All rights reserved.
//

import Foundation
import UIKit

class CustomButton: UIButton {
    override func draw(_ rect: CGRect) {
        updateLayerProperties()
    }
    
    func updateLayerProperties() {
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3).cgColor
        self.layer.shadowOffset = CGSize(width: 0, height: 3)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 10.0
        self.layer.masksToBounds = false
        
    }
    
    
}

