//
//  MovieDataController.swift
//  IRDBJSON
//
//  Created by Sean Halstead on 3/20/19.
//  Copyright © 2019 Sean Halstead. All rights reserved.
//

import Foundation

class MovieDataController: NSObject {
    
    let JSONurl = "https://api.myjson.com/bins/1e5uji"
    var dataModel: Any?
    
    func getRebootData(completion: @escaping (_ dataModel: movieDataModel) -> ()) {
        
        let jsonurl = URL(string: JSONurl)
        
        let dataTask = URLSession.shared.dataTask(with: jsonurl!) { (data, response, error) in
            guard let data = data else {
                return
                
            }
            do {
                let decoder = JSONDecoder()
                let mediaData = try decoder.decode(movieDataModel.self, from: data)
                
                print(mediaData.franchise[0].franchiseName)
                
                self.dataModel = mediaData
                    
            } catch let err{
                print("Err", err)
            }
            
            DispatchQueue.main.async {
                completion(self.dataModel as! movieDataModel)
            }
        }
        dataTask.resume()
    }
}


