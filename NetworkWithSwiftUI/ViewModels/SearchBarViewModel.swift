//
//  SearchBarViewModel.swift
//  NetworkWithSwiftUI
//
//  Created by Abdelaziz Reda on 03/01/2024.
//

import Foundation
import Combine
import Alamofire

class SearchViewModel: ObservableObject {
      @Published var items: [YourModel] = []
      @Published var filteredItems: [YourModel] = []
      @Published var searchText: String = ""

      private var cancellables: Set<AnyCancellable> = []

      init() {
          fetchData()
          setupSearch()
          self.items = [YourModel(userId: 1, id: 2, title: "ttttt", body: "yyyy")]
      }

      private func fetchData() {
          AF.request("https://jsonplaceholder.typicode.com/post1")
              .publishDecodable(type: [YourModel].self)
              .tryMap { response -> [YourModel] in
                  guard let items = response.value else {
                      throw AFError.responseValidationFailed(reason: .dataFileNil)
                  }
                  return items
              }
              .sink { completion in
                  switch completion {
                  case .finished:
                      break
                  case .failure(let error):
                      print("Error: \(error)")
                  }
              } receiveValue: { [weak self] items in
                  self?.items = items
                  self?.filteredItems = items
              }
              .store(in: &cancellables)
      }

      private func setupSearch() {
          $searchText
              .debounce(for: .seconds(0.5), scheduler: RunLoop.main)
              .sink { [weak self] searchText in
                  guard let self = self else { return }
                  if searchText.isEmpty {
                      self.filteredItems = self.items
                  } else {
                      self.filteredItems = self.items.filter { $0.title.lowercased().contains(searchText.lowercased()) }
                  }
              }
              .store(in: &cancellables)
      }
}
