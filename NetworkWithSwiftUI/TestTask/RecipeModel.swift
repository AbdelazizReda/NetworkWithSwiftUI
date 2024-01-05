//
//  RecipeModel.swift
//  NetworkWithSwiftUI
//
//  Created by Abdelaziz Reda on 05/01/2024.
//

import Foundation


struct Recipe: Codable, Identifiable {
    let id: Int
    let title: String
    let source: String
    let imageUrl: String
    // Add other properties as needed
}
