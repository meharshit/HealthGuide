//
//  MenuTableViewCellController.swift
//  HealthGuide
//
//  Created by Harshit Satyaseel on 12/06/18.
//  Copyright © 2018 Harshit Satyaseel. All rights reserved.
//

import UIKit

class MenuTableViewCellController: UITableViewCell {

    @IBOutlet weak var drawerImages: UIImageView!
    @IBOutlet weak var drawerLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setData(cellValues : CellValues){
        drawerImages.image = cellValues.myImages
        drawerLabel.text = cellValues.title
        
    }

}
