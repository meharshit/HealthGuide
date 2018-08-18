//
//  HomeScreenVC.swift
//  HealthGuide
//
//  Created by Harshit Satyaseel on 11/06/18.
//  Copyright © 2018 Harshit Satyaseel. All rights reserved.
//

import UIKit

class HomeScreenVC: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    
    var menuVc : MenuViewController!
    
    var mySlideViewImages = [UIImage]()
    var imageArray = [UIImage]()
    var requests = ["Request For Appoinment","Doctor Visit Request","Lab Tests","Request For Nurse","Doctor's Consult","Hospital Rooms Bookings","Emergeny Ambulence","Prescription request","Governments Schemes","Fitness Trainner","Free Checkup"]
    
    @IBOutlet weak var emergencyButtonOutlet: UIButton!
    @IBOutlet weak var contentsTableView: UITableView!
    @IBOutlet weak var sliderPionter: UIPageControl!
    @IBOutlet weak var myScrollView: UIScrollView!
    @IBOutlet weak var appDrawer: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        menuVc = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
        imageArray = [#imageLiteral(resourceName: "slideImage1"),#imageLiteral(resourceName: "slideImage2"),#imageLiteral(resourceName: "slideImage3"),#imageLiteral(resourceName: "slideImage4"),#imageLiteral(resourceName: "slideImage5")]
        
        for i in 0..<imageArray.count{
            
            let imageView = UIImageView()
            imageView.image = imageArray[i]
            imageView.contentMode = .scaleToFill
            let xPosition = self.view.frame.width * CGFloat(i)
            imageView.frame = CGRect(x: xPosition, y: 0, width: 414.0, height: self.myScrollView.frame.height)
            myScrollView.contentSize.width = 414.0 * CGFloat(i + 1)
            myScrollView.addSubview(imageView)
            
            // code for the button shadow and effects
            emergencyButtonOutlet.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.3).cgColor
            emergencyButtonOutlet.layer.shadowOffset = CGSize(width: 0, height: 3)
            emergencyButtonOutlet.layer.shadowOpacity = 1.0
            emergencyButtonOutlet.layer.shadowRadius = 10.0
            emergencyButtonOutlet.layer.masksToBounds = false
            emergencyButtonOutlet.layer.borderWidth = 0.8
            emergencyButtonOutlet.layer.borderColor = UIColor.red.cgColor
            emergencyButtonOutlet.layer.cornerRadius = 20
            contentsTableView.delegate = self
            contentsTableView.dataSource = self
            
        }
        // code for making the text of the navigation title bar to red
        let textAttributes = [NSAttributedStringKey.foregroundColor:UIColor.black]
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.isNavigationBarHidden = false
        self.tabBarController?.tabBar.isHidden = false
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return requests.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = contentsTableView.dequeueReusableCell(withIdentifier: "contents") as! ContentsTableView
        cell.contentsShow.text = requests[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print ("hello")
        if indexPath.row == 0{
            let vc = storyboard?.instantiateViewController(withIdentifier: "dataforRequest") as! RequestForAppoinmentVC
            self.navigationController?.pushViewController(vc, animated: true)
        }
       
    }
   
    @IBAction func appDrawerAction(_ sender: UIBarButtonItem) {
        
        if AppDelegate.menuBool{
            // show the menu
            showMenu()
        }else{
        }
        
    }
    // two functions to show that i.e shoe and hide the menubar
    
    func showMenu(){
        //let menuController = self.storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
        self.navigationController?.pushViewController(menuVc, animated: true)
    }
   
    @IBAction func emergencyButton(_ sender: UIButton) {
        sender.ShakeTheButton {
            
        }
        
    }
}
