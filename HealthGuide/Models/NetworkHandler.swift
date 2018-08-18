//
//  NetworkHandler.swift
//  HealthGuide
//
//  Created by Harshit Satyaseel on 15/06/18.
//  Copyright © 2018 Harshit Satyaseel. All rights reserved.
//

import Foundation
import UIKit

class NetworkHandler {
    
    func myimages(urlString: String, completion : @escaping (UIImage?) -> ()) {
        guard let url = URL(string: urlString) else {  // converting string to URL
            return
        }
        var request = URLRequest(url:url)
        request.httpMethod = "GET"
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
            guard let unwrappedData = data else { // very important to unwrap the data when fetched keep in mind
                print("no data")
                return }
            if let image = UIImage(data: unwrappedData)
            {
                completion(image)
            }
            else{
                completion(nil)
            }
        }
        task.resume()
    }
    let urlString = ""
    
    func parseData(urlString: String, completion : @escaping ([String: Any]) -> ()) {
        guard let url = URL(string: urlString) else {  // converting string to URL
            return
        }
        var request = URLRequest(url:url)
        request.httpMethod = "GET"
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration, delegate: nil, delegateQueue: OperationQueue.main)
        let task = session.dataTask(with: request) { (data, response, error) in
            if(error != nil){
                print("Error")
            }
            else {
                do {
                    let dataArray = try JSONSerialization.jsonObject(with: data!, options: .mutableLeaves) as! [String: Any]
                    print("Data : \(String(describing: dataArray)))")
                    completion(dataArray)
                    
                }
                catch{
                    print("error 2")
                }
            }
        }
        task.resume()
    }
    
}

