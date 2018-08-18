//
//  ContentsTableView.swift
//  HealthGuide
//
//  Created by Harshit Satyaseel on 17/06/18.
//  Copyright © 2018 Harshit Satyaseel. All rights reserved.
//

import UIKit

class ContentsTableView: UITableViewCell {
    @IBOutlet weak var pointerToshowImage: UIImageView!
    
    
    @IBOutlet weak var contentsShow: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        contentsShow.isUserInteractionEnabled = true
        let tabGestureRecogniser = UITapGestureRecognizer(target: self, action: #selector(ContentsTableView.addPulse))
        tabGestureRecogniser.numberOfTapsRequired = 1
        contentsShow.addGestureRecognizer(tabGestureRecogniser)
        
    }

    @objc func addPulse(){
        let pulse = Pulsing(numberOfPulses: 1, radius: 200, position: contentsShow.center)
        pulse.animationDuration = 0.8
        pulse.backgroundColor = UIColor.red.cgColor
        self.contentView.layer.insertSublayer(pulse, below: contentsShow.layer)

        


    }

    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
