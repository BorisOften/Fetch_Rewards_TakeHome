//
//  imageViewExtension+Network.swift
//  Fetch_Rewards_TakeHome
//
//  Created by Boris Ofon on 1/2/23.
//

import UIKit


extension UIImageView{
    
    // this function will take the url of an image, download the image and set downloaded image as the image of the UIImageView
    
    func downloadImage(from URLString: String) {
        
        guard let url = URL(string: URLString) else {
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard error == nil else {
                print(error?.localizedDescription)
                return
            }
            
            guard let httpURLResponse = response as? HTTPURLResponse,
                  httpURLResponse.statusCode == 200,
                  let data = data else {
                print(error?.localizedDescription)
                return
            }
            
            if let image = UIImage(data: data){
                
                DispatchQueue.main.async {
                    self.image = image
                }
            }
        }.resume()
    }
}
