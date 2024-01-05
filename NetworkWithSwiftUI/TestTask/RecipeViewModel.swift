//
//  RecipeViewModel.swift
//  NetworkWithSwiftUI
//
//  Created by Abdelaziz Reda on 05/01/2024.
//

import Foundation


import Combine
import Alamofire

class RecipeViewModel: ObservableObject {
    private var cancellables: Set<AnyCancellable> = []
    
    @Published var recipes: [Recipe] = []
    @Published var isLoading = false
    @Published var errorMessage: String?
    
    func searchRecipes(query: String, healthFilter: String?) {
        // Reset data when a new search is performed
        recipes = []
        
        guard let url = buildURL(query: query, healthFilter: healthFilter) else {
            errorMessage = "Invalid URL"
            return
        }
        
        isLoading = true
        
        NetworkManagerr.request(url, method: .get)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { [weak self] completion in
                switch completion {
                case .finished:
                    self?.isLoading = false
                case .failure(let error):
                    self?.isLoading = false
                    self?.errorMessage = error.localizedDescription
                }
            }, receiveValue: { [weak self] (response: [Recipe]) in
                self?.recipes.append(contentsOf: response)
            })
            .store(in: &cancellables)
    }
    
    private func buildURL(query: String, healthFilter: String?) -> URL? {
        var components = URLComponents()
        components.scheme = "https"
        components.host = "jsonplaceholder.typicode.com" // Replace with your actual API domain
        components.path = "/posts"
        
        var queryItems = [URLQueryItem]()
        queryItems.append(URLQueryItem(name: "query", value: query))
        if let healthFilter = healthFilter {
            queryItems.append(URLQueryItem(name: "healthFilter", value: healthFilter))
        }
        
        components.queryItems = queryItems
        
        return components.url
    }
}
