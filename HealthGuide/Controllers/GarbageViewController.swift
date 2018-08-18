//
//  GarbageViewController.swift
//  HealthGuide
//
//  Created by Harshit Satyaseel on 15/06/18.
//  Copyright © 2018 Harshit Satyaseel. All rights reserved.
//

import UIKit

class GarbageViewController: UIViewController {
    var nextpage : MapForCollectorViewController! 
    
    override func viewDidLoad() {
        super.viewDidLoad()
         nextpage = self.storyboard?.instantiateViewController(withIdentifier: "MapForCollectorView") as! MapForCollectorViewController

            }
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = false
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    @IBAction func requestForCollectionButton(_ sender: Any) {
        
    }
    
    @IBAction func seeCollectorsButton(_ sender: UIButton) {
        sender.ShakeTheButton {
            self.navigationController?.pushViewController(self.nextpage, animated: true)
        }
        
    }
    

}
