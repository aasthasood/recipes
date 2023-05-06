//
//  RecipeCell.swift
//  recipes
//
//  Created by Aastha Sood on 03/05/2023.
//

import UIKit

class RecipeCell: UITableViewCell {
    // MARK: - IBOutlets
    @IBOutlet weak var mealIV: UIImageView!
    @IBOutlet weak var mealNameLabel: UILabel!
    
    func updateCell(with item: Meal) {
        mealNameLabel.text = item.name
        Services.setImage(imageView: mealIV, imageUrl: item.imageURL, placeholder: "")
    }
}
