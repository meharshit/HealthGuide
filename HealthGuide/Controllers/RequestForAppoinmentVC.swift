//
//  RequestForAppoinmentVC.swift
//  HealthGuide
//
//  Created by Harshit Satyaseel on 17/06/18.
//  Copyright © 2018 Harshit Satyaseel. All rights reserved.
//

import UIKit
import CoreGraphics

class RequestForAppoinmentVC: UIViewController {

    @IBOutlet weak var infectionImage: UIImageView!
    @IBOutlet weak var specialityTableView: UITableView!
    @IBOutlet weak var SelectDoctorViewOutlet: UIView!
    @IBOutlet weak var cameraButtonOutlet: UIButton!
    @IBOutlet weak var sampleView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    override func viewWillLayoutSubviews() {
        SelectDoctorViewOutlet.layer.masksToBounds =  false
        SelectDoctorViewOutlet.layer.shadowColor = UIColor.darkGray.cgColor;
        SelectDoctorViewOutlet.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        SelectDoctorViewOutlet.layer.shadowOpacity = 1.0
        
        cameraButtonOutlet.layer.masksToBounds =  false
        cameraButtonOutlet.layer.shadowColor = UIColor.darkGray.cgColor;
        cameraButtonOutlet.layer.shadowOffset = CGSize(width: 2.0, height: 2.0)
        cameraButtonOutlet.layer.shadowOpacity = 1.0
        
        self.tabBarController?.tabBar.isHidden = true
        
        
        
       
    }

   
    @IBAction func cameraButton(_ sender: UIButton) {
    }
    
    @IBAction func RequestpageSumitButton(_ sender: UIButton) {
    }
}
