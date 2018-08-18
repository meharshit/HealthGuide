//
//  Extensions.swift
//  HealthGuide
//
//  Created by Harshit Satyaseel on 11/06/18.
//  Copyright © 2018 Harshit Satyaseel. All rights reserved.
//

import UIKit

extension UIImageView {
    func animateImageView(){
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
            self.transform = CGAffineTransform.init(scaleX: 1.4, y: 1.4)
            //reducing the size
            UIView.animate(withDuration: 0.5, delay: 0.2, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
                self.transform = CGAffineTransform.init(scaleX: 1, y: 1)
            }) { (flag) in
            }
        }) { (flag) in
            
        }
    }
}
