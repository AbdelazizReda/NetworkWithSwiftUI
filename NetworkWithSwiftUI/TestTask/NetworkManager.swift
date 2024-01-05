//
//  NetworkManager.swift
//  NetworkWithSwiftUI
//
//  Created by Abdelaziz Reda on 05/01/2024.
//

import Foundation

import Alamofire
import Combine

enum NetworkError: Error {
    case invalidURL
    case requestFailed(Error)
}

class NetworkManagerr {
    static func request<T: Codable>(_ url: URL, method: HTTPMethod = .get, parameters: Parameters? = nil) -> AnyPublisher<T, NetworkError> {
        return Future { promise in
            AF.request(url, method: method, parameters: parameters)
                .validate()
                .responseDecodable(of: T.self) { response in
                    switch response.result {
                    case .success(let value):
                        promise(.success(value))
                    case .failure(let error):
                        promise(.failure(.requestFailed(error)))
                    }
                }
        }
        .eraseToAnyPublisher()
    }
}
