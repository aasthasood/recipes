//
//  Resource.swift
//  recipes
//
//  Created by Aastha Sood on 02/05/2023.
//

import Foundation

struct Resource<T: Decodable> {
    var baseURL: String = KConstants.baseURL
    var endPoint: String
    var params: [String: String]
    var headers: [String: String]
}
