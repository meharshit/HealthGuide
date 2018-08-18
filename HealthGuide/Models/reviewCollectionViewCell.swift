//
//  reviewCollectionViewCell.swift
//  HealthGuide
//
//  Created by Harshit Satyaseel on 19/06/18.
//  Copyright © 2018 Harshit Satyaseel. All rights reserved.
//

import UIKit

class reviewCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var reviewersImage: UIImageView!
    
    @IBOutlet weak var nameofPerson: UILabel!
    
    
    override func awakeFromNib() {
        
        reviewersImage.layer.cornerRadius = reviewersImage.frame.size.height/2;
        reviewersImage.layer.masksToBounds = true;
        reviewersImage.layer.borderWidth = 0
        
    }
    
    
    
}
