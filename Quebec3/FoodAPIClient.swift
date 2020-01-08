//
//  FoodAPIClient.swift
//  Quebec3
//
//  Created by Yuliia Engman on 1/6/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import Foundation


//Change it for correct URL

struct CreperieAPIClient {
    static func fetchCreperie(completion: @escaping (Result<[Business], AppError>) -> ()) { // for searchQuery: String
        
        //let searchQuery = searchQuery.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? "" // using to correct transfer what user searches to link it to URL
        
        // using string interpolation to buld endpoint url
        let businessEndpointURL = "https://api.yelp.com/v3/businesses/search?term=creperie&limit=50&location=quebec"
        
        // Later we will look at URLComponents and URLQueryItems
        guard let url = URL(string: businessEndpointURL) else {
            completion(.failure(.badURL(businessEndpointURL)))
            return
        }
        var request = URLRequest(url: url)
        
        request.httpMethod = "GET"
        
        // from Postman my header has keys: "Authorization", Value: "Bearer"
        request.addValue("Bearer 6cwXbv6RK9NXPcCRTbpRS7OEmkIIUnX9IhvIgFuFZFvxhZIJSO7zn_tkqjorf2itPPVo8zqDsSQ7doMV3riuMd7s7n545OE8ONY2dfUCLFd7yUBnWjMgjdoN1aETXnYx", forHTTPHeaderField: "Authorization")
        
        NetworkHelper.shared.performDataTask(with: request) {(result) in
            switch result {
            case .failure(let appError):
                completion(.failure(.networkClientError(appError)))
            case .success(let data):
                do {
                    // always decode top level struct from the model
                    // if in our model we have only 1 struct - it will be an array
                    // but if it is a higher on it should be just TOP LEVEL (includes array)
                    let creperie = try JSONDecoder().decode(Creperie.self, from: data)
                    
                    // let podcasts = searchResults
                    
                    completion(.success(creperie.businesses
                        ))
                } catch {
                    completion(.failure(.decodingError(error)))
                }
            }
        }
    }
}
