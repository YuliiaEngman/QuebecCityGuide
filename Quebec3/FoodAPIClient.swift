//
//  FoodAPIClient.swift
//  Quebec3
//
//  Created by Yuliia Engman on 1/6/20.
//  Copyright © 2020 Yuliia Engman. All rights reserved.
//

import Foundation


//Change it for correct URL

//struct ElementAPIClient {
//   static func fetchElement(completion: @escaping (Result<[Element], AppError>) -> ()) { // for searchQuery: String
//       
//       //let searchQuery = searchQuery.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? "" // using to correct transfer what user searches to link it to URL
//       
//       // using string interpolation to buld endpoint url
//       let elementEndpointURL = "https://5c1d79abbc26950013fbcaa9.mockapi.io/api/v1/elements"
//       
//       // Later we will look at URLComponents and URLQueryItems
//       guard let url = URL(string: elementEndpointURL) else {
//           completion(.failure(.badURL(elementEndpointURL)))
//           return
//       }
//       let request = URLRequest(url: url)
//       
//       NetworkHelper.shared.performDataTask(with: request) {(result) in
//           switch result {
//           case .failure(let appError):
//               completion(.failure(.networkClientError(appError)))
//           case .success(let data):
//               do {
//                   // always decode top level struct from the model
//                   // if in our model we have only 1 struct - it will be an array
//                   // but if it is a higher on it should be just TOP LEVEL (includes array)
//                   let elements = try JSONDecoder().decode([Element].self, from: data)
//                   
//                  // let podcasts = searchResults
//
//                   completion(.success(elements))
//               } catch {
//                   completion(.failure(.decodingError(error)))
//               }
//           }
//       }
//   }
//}
