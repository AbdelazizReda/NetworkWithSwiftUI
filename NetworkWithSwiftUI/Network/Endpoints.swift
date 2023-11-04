//
//  Endpoints.swift
//  NetworkWithSwiftUI
//
//  Created by Abdelaziz Reda on 03/11/2023.
//

import Foundation
import Alamofire

enum Endpoint: URLRequestConvertible {
    case fetchData
    
    var method: HTTPMethod {
        switch self {
        case .fetchData:
            return .get
        }
    }
    
    var path: String {
        switch self {
        case .fetchData:
            return "/posts/1"
        }
    }
    

    
    func asURLRequest() throws -> URLRequest {
        let url = try Constants.API.baseUrl.asURL()
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        urlRequest.httpMethod = method.rawValue
        
        return urlRequest
    }
}
