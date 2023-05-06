//
//  MealBase.swift
//  recipes
//
//  Created by Aastha Sood on 02/05/2023.
//

import Foundation

struct MealBase<T: Decodable>: Decodable {
    let meals: T
}
