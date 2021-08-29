//
//  ProductEndPoint.swift
//  Challenge
//
//  Created by Shilpa Joy on 2021-08-28.
//

import Foundation

import Foundation

 enum ProductEndPoint{
    case listProducts
    case favourited
    case notFavourited
    
    var method: String {
        switch self {
        case .listProducts:
            return "GET"
        case.favourited:
            return "POST"
        case .notFavourited:
            return "DELETE"
        }
    }
    var path: String {
        switch self {
        case .listProducts:
            return "products"
        case .favourited,.notFavourited:
           return "favorites"
        }
    }
}

 func createURLEndPoint(requestType: ProductEndPoint) -> URLRequest{
    let baseUrl = "https://demo5514996.mockable.io/"
    var urlRequest = URLRequest(url: URL(string: baseUrl.appending(requestType.path))!)
    urlRequest.httpMethod = requestType.method
    urlRequest.addValue("application/json", forHTTPHeaderField: "Content-Type")
   return urlRequest
}
