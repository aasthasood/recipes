//
//  IngradientCell.swift
//  recipes
//
//  Created by Aastha Sood on 03/05/2023.
//

import UIKit

class IngradientCell: UITableViewCell {
    // MARK: - IBOutlets
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var measurementsLabel: UILabel!

    func updateCell(with item: Ingredient) {
        nameLabel.text = item.name
        measurementsLabel.text = item.measurement
    }
}
