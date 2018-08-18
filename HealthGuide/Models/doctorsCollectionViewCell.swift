//
//  doctorsCollectionViewCell.swift
//  HealthGuide
//
//  Created by Harshit Satyaseel on 19/06/18.
//  Copyright © 2018 Harshit Satyaseel. All rights reserved.
//

import UIKit

class doctorsCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var doctorsImage: UIImageView!
    
    @IBOutlet weak var doctorsNameLabel: UILabel!
    
    @IBOutlet weak var doctorsSpecialityLabel: UILabel!
    
    override func awakeFromNib() {
        doctorsImage.layer.cornerRadius = doctorsImage.frame.size.height/2
        doctorsImage.layer.masksToBounds = true
        doctorsImage.layer.borderWidth = 0
        doctorsImage.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.6).cgColor
        doctorsImage.layer.shadowOffset = CGSize(width: 0, height: 3)
        doctorsImage.layer.shadowOpacity = 1.0
        doctorsImage.layer.shadowRadius = 10.0
        
    }
    
    
}
