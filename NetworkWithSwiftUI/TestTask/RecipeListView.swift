//
//  RecipeListView.swift
//  NetworkWithSwiftUI
//
//  Created by Abdelaziz Reda on 05/01/2024.
//

import SwiftUI
struct RecipeListView: View {
    var recipes: [Recipe]
    var isLoading: Bool
    var errorMessage: String?
    
    var body: some View {
        if isLoading {
            ProgressView("Loading...")
                .progressViewStyle(CircularProgressViewStyle())
                .padding()
        } else if let errorMessage = errorMessage {
            Text(errorMessage)
                .foregroundColor(.red)
                .padding()
        } else {
            List(recipes) { recipe in
                // Display your recipe information here
                VStack {
                    Text(recipe.title)
                    Text(recipe.source)
                    // Add image here using AsyncImage or URLImage
                }
            }
        }
    }
}
struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView(recipes: [], isLoading: false, errorMessage: nil)
    }
}
