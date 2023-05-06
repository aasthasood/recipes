//
//  MealsServices.swift
//  recipes
//
//  Created by Aastha Sood on 03/05/2023.
//

import Foundation

protocol MealsServicesProtocol {
    func fetchMeals(for category: String) async throws -> [Meal]
    func fetchMealDetail(with id: String) async throws -> MealDetail?
}

class MealsServices: MealsServicesProtocol {
    func fetchMeals(for category: String) async throws -> [Meal] {
        let resource = Resource<MealBase<[Meal]>>(baseURL: KConstants.baseURL,
                                                  endPoint: "api/json/v1/1/filter.php",
                                                  params: ["c": category],
                                                  headers: [:])
        let meal = try await NetworkManager.shared.get(resource)
        return meal?.meals ?? []
    }
    
    func fetchMealDetail(with id: String) async throws -> MealDetail? {
        let resource = Resource<MealBase<[MealDetail]>>(baseURL: KConstants.baseURL,
                                                  endPoint: "api/json/v1/1/lookup.php",
                                                  params: ["i": id],
                                                  headers: [:])
        let meal = try await NetworkManager.shared.get(resource)
        return meal?.meals.first
    }
}
