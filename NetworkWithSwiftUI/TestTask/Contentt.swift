//
//  Contentt.swift
//  NetworkWithSwiftUI
//
//  Created by Abdelaziz Reda on 05/01/2024.
//

import SwiftUI

struct Contentt: View {
        @ObservedObject var viewModel = RecipeViewModel()
         @State private var searchText = ""
         @State private var selectedFilter: String? = nil
         
         var body: some View {
             NavigationView {
                 VStack {
                     SearchBar(text: $searchText, onSearchButtonClicked: {
                         viewModel.searchRecipes(query: searchText, healthFilter: selectedFilter)
                     })
                     
                     FiltersView(selectedFilter: $selectedFilter)
                     
                     RecipeListView(recipes: viewModel.recipes, isLoading: viewModel.isLoading, errorMessage: viewModel.errorMessage)
                 }
                 .navigationBarTitle("Recipe Search")
             }
         
    }
}

#Preview {
    Contentt()
}
