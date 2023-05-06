//
//  Services.swift
//  recipes
//
//  Created by Aastha Sood on 03/05/2023.
//

import SDWebImage

class Services {
    
    static func showAlert(on: UIViewController? = nil,style: UIAlertController.Style, title: String?, message: String?, actions: [UIAlertAction] = [UIAlertAction(title: "Ok", style: .default, handler: nil)], completion: (() -> Swift.Void)? = nil) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: style)
        for action in actions {
            alert.addAction(action)
        }
        
        DispatchQueue.main.async {
            if let vc = on {
                vc.present(alert, animated: true, completion: completion)
                return
            }
        }
    }
    
    static func showErrorAlert(on: UIViewController? = nil, with message: String) {
        showAlert(on: on, style: .alert, title: "Error", message: message)
    }
}

// MARK: - Image Picker
extension Services {
    static func setImage(imageView: UIImageView, imageUrl: String?, placeholder imageName: String) {

        if imageUrl == nil {
            imageView.image = UIImage(named: imageName)
            return
        }

        guard let  URL = URL(string: imageUrl!) else {
            imageView.image = UIImage(named: imageName)
            return
        }

        imageView.sd_imageIndicator = SDWebImageActivityIndicator.grayLarge
        imageView.sd_setImage(with: URL, placeholderImage: UIImage(named: imageName), options: .scaleDownLargeImages, completed: nil)
    }
}

