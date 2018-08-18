//
//  DoctorsViewController.swift
//  HealthGuide
//
//  Created by Harshit Satyaseel on 19/06/18.
//  Copyright © 2018 Harshit Satyaseel. All rights reserved.
//

import UIKit

class DoctorsViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {

    @IBOutlet weak var doctorsCollectionView: UICollectionView!
    @IBOutlet weak var doctorSearchbarOutlet: UISearchBar!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        doctorsCollectionView.delegate = self
        doctorsCollectionView.dataSource = self

        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let doctorDetails = storyboard?.instantiateViewController(withIdentifier: "doctorsdetails") as! DoctorsDetailsViewController
        self.navigationController?.pushViewController(doctorDetails, animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 12
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let collectionView = collectionView.dequeueReusableCell(withReuseIdentifier: "doctors", for: indexPath) as! doctorsCollectionViewCell
        return collectionView
    }
   
}
