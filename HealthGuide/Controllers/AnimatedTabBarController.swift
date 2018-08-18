//
//  AnimatedTabBarController.swift
//  HealthGuide
//
//  Created by Harshit Satyaseel on 11/06/18.
//  Copyright © 2018 Harshit Satyaseel. All rights reserved.
//

import UIKit
import CoreGraphics

class AnimatedTabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
// tag+1 is necessary because we get the animation from 1 last item so we do plus 1 to animate the current item.
        let subView = tabBar.subviews[item.tag + 1] // array of the tag
        let imageView = subView.subviews.first as! UIImageView
        imageView.animateImageView()
}
}
