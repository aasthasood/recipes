//
//  MealDetailViewModelTests.swift
//  recipesTests
//
//  Created by Aastha Sood on 05/05/2023.
//

import XCTest
@testable import recipes

final class MealDetailViewModelTests: XCTestCase {

    func test_fetch_meal_detail_failure() async {
        let mockService = MockMealsServices()
        mockService.mealDetailMockData = nil
        let sut = MealDetailViewModel(mealServices: mockService)
        let mealDetail = try? await sut.fetchMealDetail(of: "")
        XCTAssertNil(mealDetail)
    }
    
    func test_fetch_meal_detail_success() async {
        let mockService = MockMealsServices()
        
        mockService.mealDetailMockData = mockService.mockMealDetailData()
        let sut = MealDetailViewModel(mealServices: mockService)
        let mealDetail = try? await sut.fetchMealDetail(of: "")
        XCTAssertNotNil(mealDetail)
    }
}
