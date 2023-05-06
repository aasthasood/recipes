//
//  NetworkManager.swift
//  recipes
//
//  Created by Aastha Sood on 02/05/2023.
//

import Foundation

private let sharedManager = NetworkManager.init()

class NetworkManager {
    var session = URLSession.shared

    class var shared: NetworkManager {
        return sharedManager
    }
    
    func get<T: Decodable>(_ resource: Resource<T>) async throws -> T? {
        
        var request = URLRequest(url: URL(string: resource.baseURL + resource.endPoint)!)
        
        // Encode the parameters and add them to the URL
        var components = URLComponents(url: request.url!, resolvingAgainstBaseURL: false)!
        components.queryItems = resource.params.map { (key, value) in
            URLQueryItem(name: key, value: value)
        }
        
        // Create the URLRequest with the specified headers
        request = URLRequest(url: components.url!)
        request.httpMethod = "GET"
        
        for (key, value) in resource.headers {
            request.addValue(value, forHTTPHeaderField: key)
        }
        
//        let configuration = URLSessionConfiguration.default
//        configuration.httpAdditionalHeaders = ["Content-Type": "application/json"]
        
//        let session = URLSession(configuration: configuration)
        let (data, response) = try await session.data(for: request)
        debugPrint(try data.makeJson())
        
        let httpResponse = response as! HTTPURLResponse
        if (httpResponse.statusCode >= 200 && httpResponse.statusCode < 300) {
            
            // Parse the response data
            let decoder = JSONDecoder()
            let decodedData = try decoder.decode(T.self, from: data)
            return decodedData
        }
        
        return nil
    }
}
