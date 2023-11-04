//
//  NetworkLayer.swift
//  NetworkWithSwiftUI
//
//  Created by Abdelaziz Reda on 03/11/2023.
//

import Foundation
import Alamofire


import Alamofire

class NetworkManager {
    static let shared = NetworkManager()
    
    private init() { }
    
    func request<T: Decodable>(_ endpoint: Endpoint, model: T.Type, completion: @escaping (Result<T, Error>) -> Void) {
        AF.request(endpoint)
            .validate()
            .responseDecodable(of: T.self) { response in
                switch response.result {
                case .success(let data):
                    completion(.success(data))
                case .failure(let error):
                    completion(.failure(error))
                }
            }
    }
}
