//
//  Meal.swift
//  recipes
//
//  Created by Aastha Sood on 02/05/2023.
//

import Foundation

struct Meal: Decodable, Equatable {
    let name: String
    let imageURL: String
    let id: String
    
    enum CodingKeys: String, CodingKey {
        case name = "strMeal"
        case imageURL = "strMealThumb"
        case id = "idMeal"
    }
//    
//    init(from decoder: Decoder) throws {
//        let container = try decoder.container(keyedBy: CodingKeys.self)
//        self.name = try container.decodeIfPresent(String.self, forKey: .name) ?? ""
//        self.imageURL = try container.decodeIfPresent(String.self, forKey: .imageURL) ?? ""
//        self.id = try container.decodeIfPresent(String.self, forKey: .id) ?? ""
//    }
}
