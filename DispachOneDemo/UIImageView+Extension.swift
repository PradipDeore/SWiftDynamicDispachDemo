//
//  UIImageView+Extension.swift
//  DispachOneDemo
//
//  Created by Pradip Deore on 18/06/24.
//

import Foundation
import UIKit

extension UIImageView {
    func loadImage(from url: URL, placeholder: UIImage? = nil) {
        // Set placeholder image if available
        if let placeholder = placeholder {
            self.image = placeholder
        }

        // Create a data task to fetch the image data
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            // Check for errors and valid data
            if let error = error {
                print("Error fetching image: \(error)")
                return
            }
            
            guard let data = data, let image = UIImage(data: data) else {
                print("No image data or unable to create image from data")
                return
            }
            
            // Update the UIImageView on the main thread
            DispatchQueue.main.async {
                self.image = image
            }
        }
        task.resume()
    }
}
