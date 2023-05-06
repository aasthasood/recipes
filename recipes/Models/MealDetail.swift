//
//  MealDetail.swift
//  recipes
//
//  Created by Aastha Sood on 03/05/2023.
//

import Foundation

struct MealDetail: Decodable {
    let name: String
    let instructions: String
    let image: String
    let ingredients: [Ingredient]
    private let ingredient1: String
    private let ingredient2: String
    private let ingredient3: String
    private let ingredient4: String
    private let ingredient5: String
    private let ingredient6: String
    private let ingredient7: String
    private let ingredient8: String
    private let ingredient9: String
    private let ingredient10: String
    private let ingredient11: String
    private let ingredient12: String
    private let ingredient13: String
    private let ingredient14: String
    private let ingredient15: String
    private let ingredient16: String
    private let ingredient17: String
    private let ingredient18: String
    private let ingredient19: String
    private let ingredient20: String
    private let strMeasure1: String
    private let strMeasure2: String
    private let strMeasure3: String
    private let strMeasure4: String
    private let strMeasure5: String
    private let strMeasure6: String
    private let strMeasure7: String
    private let strMeasure8: String
    private let strMeasure9: String
    private let strMeasure10: String
    private let strMeasure11: String
    private let strMeasure12: String
    private let strMeasure13: String
    private let strMeasure14: String
    private let strMeasure15: String
    private let strMeasure16: String
    private let strMeasure17: String
    private let strMeasure18: String
    private let strMeasure19: String
    private let strMeasure20: String
    
    enum CodingKeys: String, CodingKey {
        case name = "strMeal"
        case instructions = "strInstructions"
        case image = "strMealThumb"
        case ingredient1 = "strIngredient1"
        case ingredient2 = "strIngredient2"
        case ingredient3 = "strIngredient3"
        case ingredient4 = "strIngredient4"
        case ingredient5 = "strIngredient5"
        case ingredient6 = "strIngredient6"
        case ingredient7 = "strIngredient7"
        case ingredient8 = "strIngredient8"
        case ingredient9 = "strIngredient9"
        case ingredient10 = "strIngredient10"
        case ingredient11 = "strIngredient11"
        case ingredient12 = "strIngredient12"
        case ingredient13 = "strIngredient13"
        case ingredient14 = "strIngredient14"
        case ingredient15 = "strIngredient15"
        case ingredient16 = "strIngredient16"
        case ingredient17 = "strIngredient17"
        case ingredient18 = "strIngredient18"
        case ingredient19 = "strIngredient19"
        case ingredient20 = "strIngredient20"
        case strMeasure1 = "strMeasure1"
        case strMeasure2 = "strMeasure2"
        case strMeasure3 = "strMeasure3"
        case strMeasure4 = "strMeasure4"
        case strMeasure5 = "strMeasure5"
        case strMeasure6 = "strMeasure6"
        case strMeasure7 = "strMeasure7"
        case strMeasure8 = "strMeasure8"
        case strMeasure9 = "strMeasure9"
        case strMeasure10 = "strMeasure10"
        case strMeasure11 = "strMeasure11"
        case strMeasure12 = "strMeasure12"
        case strMeasure13 = "strMeasure13"
        case strMeasure14 = "strMeasure14"
        case strMeasure15 = "strMeasure15"
        case strMeasure16 = "strMeasure16"
        case strMeasure17 = "strMeasure17"
        case strMeasure18 = "strMeasure18"
        case strMeasure19 = "strMeasure19"
        case strMeasure20 = "strMeasure20"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decodeIfPresent(String.self, forKey: .name) ?? ""
        instructions = try values.decodeIfPresent(String.self, forKey: .instructions) ?? ""
        image = try values.decodeIfPresent(String.self, forKey: .image) ?? ""
        ingredient1 = try values.decodeIfPresent(String.self, forKey: .ingredient1) ?? ""
        ingredient2 = try values.decodeIfPresent(String.self, forKey: .ingredient2) ?? ""
        ingredient3 = try values.decodeIfPresent(String.self, forKey: .ingredient3) ?? ""
        ingredient4 = try values.decodeIfPresent(String.self, forKey: .ingredient4) ?? ""
        ingredient5 = try values.decodeIfPresent(String.self, forKey: .ingredient5) ?? ""
        ingredient6 = try values.decodeIfPresent(String.self, forKey: .ingredient6) ?? ""
        ingredient7 = try values.decodeIfPresent(String.self, forKey: .ingredient7) ?? ""
        ingredient8 = try values.decodeIfPresent(String.self, forKey: .ingredient8) ?? ""
        ingredient9 = try values.decodeIfPresent(String.self, forKey: .ingredient9) ?? ""
        ingredient10 = try values.decodeIfPresent(String.self, forKey: .ingredient10) ?? ""
        ingredient11 = try values.decodeIfPresent(String.self, forKey: .ingredient11) ?? ""
        ingredient12 = try values.decodeIfPresent(String.self, forKey: .ingredient12) ?? ""
        ingredient13 = try values.decodeIfPresent(String.self, forKey: .ingredient13) ?? ""
        ingredient14 = try values.decodeIfPresent(String.self, forKey: .ingredient14) ?? ""
        ingredient15 = try values.decodeIfPresent(String.self, forKey: .ingredient15) ?? ""
        ingredient16 = try values.decodeIfPresent(String.self, forKey: .ingredient16) ?? ""
        ingredient17 = try values.decodeIfPresent(String.self, forKey: .ingredient17) ?? ""
        ingredient18 = try values.decodeIfPresent(String.self, forKey: .ingredient18) ?? ""
        ingredient19 = try values.decodeIfPresent(String.self, forKey: .ingredient19) ?? ""
        ingredient20 = try values.decodeIfPresent(String.self, forKey: .ingredient20) ?? ""
        strMeasure1 = try values.decodeIfPresent(String.self, forKey: .strMeasure1) ?? ""
        strMeasure2 = try values.decodeIfPresent(String.self, forKey: .strMeasure2) ?? ""
        strMeasure3 = try values.decodeIfPresent(String.self, forKey: .strMeasure3) ?? ""
        strMeasure4 = try values.decodeIfPresent(String.self, forKey: .strMeasure4) ?? ""
        strMeasure5 = try values.decodeIfPresent(String.self, forKey: .strMeasure5) ?? ""
        strMeasure6 = try values.decodeIfPresent(String.self, forKey: .strMeasure6) ?? ""
        strMeasure7 = try values.decodeIfPresent(String.self, forKey: .strMeasure7) ?? ""
        strMeasure8 = try values.decodeIfPresent(String.self, forKey: .strMeasure8) ?? ""
        strMeasure9 = try values.decodeIfPresent(String.self, forKey: .strMeasure9) ?? ""
        strMeasure10 = try values.decodeIfPresent(String.self, forKey: .strMeasure10) ?? ""
        strMeasure11 = try values.decodeIfPresent(String.self, forKey: .strMeasure11) ?? ""
        strMeasure12 = try values.decodeIfPresent(String.self, forKey: .strMeasure12) ?? ""
        strMeasure13 = try values.decodeIfPresent(String.self, forKey: .strMeasure13) ?? ""
        strMeasure14 = try values.decodeIfPresent(String.self, forKey: .strMeasure14) ?? ""
        strMeasure15 = try values.decodeIfPresent(String.self, forKey: .strMeasure15) ?? ""
        strMeasure16 = try values.decodeIfPresent(String.self, forKey: .strMeasure16) ?? ""
        strMeasure17 = try values.decodeIfPresent(String.self, forKey: .strMeasure17) ?? ""
        strMeasure18 = try values.decodeIfPresent(String.self, forKey: .strMeasure18) ?? ""
        strMeasure19 = try values.decodeIfPresent(String.self, forKey: .strMeasure19) ?? ""
        strMeasure20 = try values.decodeIfPresent(String.self, forKey: .strMeasure20) ?? ""
        
        let ingredients = [
            Ingredient(name: ingredient1, measurement: strMeasure1),
            Ingredient(name: ingredient2, measurement: strMeasure2),
            Ingredient(name: ingredient3, measurement: strMeasure3),
            Ingredient(name: ingredient4, measurement: strMeasure4),
            Ingredient(name: ingredient5, measurement: strMeasure5),
            Ingredient(name: ingredient6, measurement: strMeasure6),
            Ingredient(name: ingredient7, measurement: strMeasure7),
            Ingredient(name: ingredient8, measurement: strMeasure8),
            Ingredient(name: ingredient9, measurement: strMeasure9),
            Ingredient(name: ingredient10, measurement: strMeasure10),
            Ingredient(name: ingredient11, measurement: strMeasure11),
            Ingredient(name: ingredient12, measurement: strMeasure12),
            Ingredient(name: ingredient13, measurement: strMeasure13),
            Ingredient(name: ingredient14, measurement: strMeasure14),
            Ingredient(name: ingredient15, measurement: strMeasure15),
            Ingredient(name: ingredient16, measurement: strMeasure16),
            Ingredient(name: ingredient17, measurement: strMeasure17),
            Ingredient(name: ingredient18, measurement: strMeasure18),
            Ingredient(name: ingredient19, measurement: strMeasure19),
            Ingredient(name: ingredient20, measurement: strMeasure20)
        ]
        self.ingredients = ingredients.filter({!($0.name.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty && $0.measurement.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty)})
    }
}

struct Ingredient {
    let name: String
    let measurement: String
}
