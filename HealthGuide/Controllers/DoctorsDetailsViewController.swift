//
//  DoctorsDetailsViewController.swift
//  HealthGuide
//
//  Created by Harshit Satyaseel on 19/06/18.
//  Copyright © 2018 Harshit Satyaseel. All rights reserved.
//

import UIKit
import MessageUI

class DoctorsDetailsViewController: UIViewController,UINavigationControllerDelegate,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var doctorsImage: UIImageView!
    @IBOutlet weak var dislikeButton: UIButton!
    @IBOutlet weak var doctorsNameinDetails: UILabel!
    @IBOutlet weak var doctorSpeciality: UILabel!
    @IBOutlet weak var ratingLabel: UILabel!
    @IBOutlet weak var reviewCollectionView: UICollectionView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet weak var starButton1Outlet: UIButton!
    @IBOutlet weak var starButton2Outlet: UIButton!
    @IBOutlet weak var starButton3Outlet: UIButton!
    @IBOutlet weak var starButton4Outlet: UIButton!
    @IBOutlet weak var starButton5Outlet: UIButton!
    
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var navigateToDoctorButton: UIButton!
    @IBOutlet weak var callDoctorButton: UIButton!
    
    let rating = [UIButton]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        reviewCollectionView.delegate = self
        reviewCollectionView.dataSource = self
       
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("I came here")
        
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionViewforReviews = collectionView.dequeueReusableCell(withReuseIdentifier: "reviews", for: indexPath) as! reviewCollectionViewCell
        return collectionViewforReviews
    }
    
    

    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
    }

    @IBAction func shareButtonAction(_ sender: UIButton) {
        sender.ShakeTheButton {
            
            // code to present the activity view controller.
            let activityVC = UIActivityViewController(activityItems: ["Dr.Sujan Gill","EyeSpecialist","check out him at HealthGuideApp",self.doctorsImage], applicationActivities: nil)
            activityVC.popoverPresentationController?.sourceView = self.view
            self.present(activityVC, animated: true, completion: nil)
            
        }
    }
    @IBAction func navigationButtonAction(_ sender: UIButton) {
        sender.ShakeTheButton {
            let goingPage = self.storyboard?.instantiateViewController(withIdentifier: "doctorNavigation") as! DoctorNavigationViewController
            self.navigationController?.pushViewController(goingPage, animated: true)
            
        }
      
    }
    
    @IBAction func callButtonAction(_ sender: UIButton) {
        sender.ShakeTheButton {
            // code to join call app with the application
            
            let callingUrl : NSURL = URL(string: "TEL://123456789")! as NSURL
            UIApplication.shared.open(callingUrl as URL, options: [:], completionHandler: nil)
        }
        
    }
    
    @IBAction func starButtonAction(_ sender: UIButton) {
        
        
        
    }
    
}
