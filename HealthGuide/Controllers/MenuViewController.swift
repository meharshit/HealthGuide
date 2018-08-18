//
//  MenuViewController.swift
//  HealthGuide
//
//  Created by Harshit Satyaseel on 11/06/18.
//  Copyright © 2018 Harshit Satyaseel. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate,UITableViewDelegate,UITableViewDataSource{

    @IBOutlet weak var nameOfLoginPerson: UILabel!
    @IBOutlet weak var loginPersonImage: UIImageView!
    @IBOutlet weak var drawerTableView: UITableView!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // making image circle
        loginPersonImage.layer.cornerRadius = loginPersonImage.frame.size.height/2;
        loginPersonImage.layer.masksToBounds = true;
        loginPersonImage.layer.borderWidth = 0
        
        drawerTableView.delegate = self
        drawerTableView.dataSource = self
        displayContentInDrawer()
       // self.navigationController?.isNavigationBarHidden = true
        
       
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
    }
    
    
 
    
//    override func viewWillAppear(_ animated: Bool) {
//        self.navigationController?.isNavigationBarHidden = true
//    }
    
    var values : [CellValues] = [] // A globel variable for holding the data model

    func displayContentInDrawer(){ // function for data model
        
        let value1 = CellValues(myImages: #imageLiteral(resourceName: "aboutUs"), title: "About Us")
        let value2 = CellValues(myImages: #imageLiteral(resourceName: "appTutorial"), title: "App Tutorial")
        let value3 = CellValues(myImages: #imageLiteral(resourceName: "language"), title: "Change Language")
        let value4 = CellValues(myImages: #imageLiteral(resourceName: "record"), title: "Medical Records")
        let value5 = CellValues(myImages: #imageLiteral(resourceName: "chat"), title: "Chat With Us")
        let value6 = CellValues(myImages: #imageLiteral(resourceName: "support"), title: "Help & Support")
        let value7 = CellValues(myImages: #imageLiteral(resourceName: "signOut"), title: "SignOut")
        
        values.append(value1)
        values.append(value2)
        values.append(value3)
        values.append(value4)
        values.append(value5)
        values.append(value6)
        values.append(value7)
    }
    
    // image picker from phone
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let image = info[UIImagePickerControllerOriginalImage] as! UIImage
        dismiss(animated: true, completion: nil)
        loginPersonImage.image = image
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        let controller = UIImagePickerController()
        controller.delegate = self
        controller.sourceType = .photoLibrary // this can be presented as camera and one more option is there
        present(controller, animated: true, completion: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return values.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 6{
            let goingPage = storyboard?.instantiateViewController(withIdentifier: "loginpage") as! LoginPage
            
            self.navigationController?.pushViewController(goingPage, animated: true)
            self.navigationItem.setHidesBackButton(true, animated:true)
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let data = cellContents[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell") as! MenuTableViewCellController
        cell.setData(cellValues: values[indexPath.row])
        return cell
    }
        
        
}
      
        
        
    


   

