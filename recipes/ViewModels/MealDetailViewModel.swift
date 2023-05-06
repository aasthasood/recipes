//
//  MealDetailViewModel.swift
//  recipes
//
//  Created by Aastha Sood on 03/05/2023.
//

import Foundation

class MealDetailViewModel {
    private let mealServices: MealsServicesProtocol
    
    init(mealServices: MealsServicesProtocol = MealsServices()) {
        self.mealServices = mealServices
    }
    
    func fetchMealDetail(of id: String) async throws -> MealDetail? {
        let mealDetail = try await mealServices.fetchMealDetail(with: id)
        return mealDetail
    }
}
