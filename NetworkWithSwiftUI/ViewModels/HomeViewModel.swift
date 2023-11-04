//
//  HomeViewModel.swift
//  NetworkWithSwiftUI
//
//  Created by Abdelaziz Reda on 03/11/2023.
//

import Foundation

class ViewModel: ObservableObject {
    @Published var data: YourModel?
    
    func fetchData() {
        NetworkManager.shared.request(.fetchData, model: YourModel.self) { result in
            switch result {
            case .success(let model):
                self.data = model
            case .failure(let error):
                print("Error fetching data: \(error)")
            }
        }
    }
}
