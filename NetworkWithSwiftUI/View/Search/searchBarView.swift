//
//  searchBarView.swift
//  NetworkWithSwiftUI
//
//  Created by Abdelaziz Reda on 03/01/2024.
//

import SwiftUI
import Combine

@available(iOS 15.0, *)

struct searchBarView: View {
    @ObservedObject var viewModel = SearchViewModel()

     var body: some View {
         NavigationView {
             List{
                 ForEach($viewModel.filteredItems) { item in
                     Text("")
                 }
                 .searchable(text: $viewModel.searchText) // Use searchable modifier
                 .navigationTitle("Search Bar Example")
             }
         }
     }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        searchBarView()
    }
}
