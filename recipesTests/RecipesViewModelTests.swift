//
//  RecipesViewModelTests.swift
//  recipesTests
//
//  Created by Aastha Sood on 05/05/2023.
//

import XCTest
@testable import recipes

final class RecipesViewModelTests: XCTestCase {

    func test_fetch_meals_failure() async {
        let mockService = MockMealsServices()
        let sut = RecipesViewModel(mealServices: mockService)
        let meals = try? await sut.fetchMeals()
        XCTAssert(meals!.isEmpty)
    }
    
    func test_fetch_meals_success() async {
        let mockService = MockMealsServices()
        guard let mockMeals = mockService.mockMeals() else {
            return
        }
        
        mockService.mockData = mockMeals
        
        let sut = RecipesViewModel(mealServices: mockService)
        let meals = try? await sut.fetchMeals()
        XCTAssert(!meals!.isEmpty)
    }
    
    func test_alphabetically_sorted_and_remove_emoty_name_meals_success() async {
        let inputMeals = [
            Meal(name: "Apple & Blackberry Crumble", imageURL: "https://www.themealdb.com/images/media/meals/xvsurr1511719182.jpg", id: "52893"),
            Meal(name: "Bakewell tart", imageURL: "https://www.themealdb.com/images/media/meals/wyrqqq1468233628.jpg", id: "52767"),
            Meal(name: "Chinon Apple Tarts", imageURL: "https://www.themealdb.com/images/media/meals/qtqwwu1511792650.jpg", id: "52910")
        ]
        
        let mockService = MockMealsServices()
        mockService.mockData = inputMeals
        
        let sut = RecipesViewModel(mealServices: mockService)
        let sortedMeals = sut.filterEmptyAndSortMeals(inputMeals)
        XCTAssertEqual(inputMeals, sortedMeals)
    }

    func test_alphabetically_sorted_and_remove_emoty_name_meals_faliure() {
        let inputMeals = [
            Meal(name: "Chinon Apple Tarts", imageURL: "https://www.themealdb.com/images/media/meals/qtqwwu1511792650.jpg", id: "52910"),
            Meal(name: "Apple & Blackberry Crumble", imageURL: "https://www.themealdb.com/images/media/meals/xvsurr1511719182.jpg", id: "52893"),
            Meal(name: "Bakewell tart", imageURL: "https://www.themealdb.com/images/media/meals/wyrqqq1468233628.jpg", id: "52767"),
        ]
        
        let mockService = MockMealsServices()
        
        mockService.mockData = inputMeals
        
        let sut = RecipesViewModel(mealServices: mockService)
        let sortedMeals = sut.filterEmptyAndSortMeals(inputMeals)
        XCTAssertNotEqual(inputMeals, sortedMeals)
    }
}
