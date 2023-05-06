//
//  RecipesViewModel.swift
//  recipes
//
//  Created by Aastha Sood on 03/05/2023.
//

import Foundation

class RecipesViewModel {
    private let mealServices: MealsServicesProtocol
    
    init(mealServices: MealsServicesProtocol = MealsServices()) {
        self.mealServices = mealServices
    }
    
    func fetchMeals() async throws -> [Meal] {
        let meals = try await mealServices.fetchMeals(for: "Dessert")
        return filterEmptyAndSortMeals(meals)
    }
    
    func filterEmptyAndSortMeals(_ meals: [Meal]) -> [Meal] {
        // alphabetically sorted
        return meals.filter({!$0.name.isEmpty}).sorted(by: {$0.name.lowercased() < $1.name.lowercased()})
    }
}
