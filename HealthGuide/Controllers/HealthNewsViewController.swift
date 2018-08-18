//
//  HealthNewsViewController.swift
//  HealthGuide
//
//  Created by Harshit Satyaseel on 15/06/18.
//  Copyright © 2018 Harshit Satyaseel. All rights reserved.
//

import UIKit

class HealthNewsViewController: UIViewController {

    @IBOutlet weak var newsTableView: UITableView!
    var dataArray = [[String: Any]]()
    
    let service = NetworkHandler()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newsTableView.alpha = 0.0 // to make the table view disapper.
        
        service.parseData(urlString: "https://newsapi.org/v2/top-headlines?sources=medical-news-today&apiKey=ed668c2b11464bca8442704fe5731f1c") { (result) in
            self.dataArray = result["articles"] as! [[String : Any]]
            DispatchQueue.main.async {
                self.newsTableView.alpha = 1.0
                self.newsTableView.reloadData()
            }
        }

    }
    
}

extension HealthNewsViewController: UITableViewDataSource,UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 461
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell", for: indexPath) as! NewsTableViewCell
        
                print("Indexpath.row : \(indexPath.row)")
                let currentCellObject = dataArray[indexPath.row]
                if let tempauthor = currentCellObject["author"] as? String // written in if let so that sometime the value can be nil so unwrap this way
                {
                    cell.author.text = tempauthor
                }
                if let title = currentCellObject["title"] as? String{
                    cell.title.text = title
                }
                if let mydescription = currentCellObject["description"] as? String{
                    cell.contents.text = mydescription
                }
                if let newsImages = currentCellObject["urlToImage"] as? String{
                    service.myimages(urlString: newsImages) { (downloadedImage) in
                        print("Got image : \(String(describing: downloadedImage))")
                        cell.newsImage.image = downloadedImage
                    }
                }
    
            return cell
    }
 
}
