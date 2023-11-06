//
//  TabBarViewModel.swift
//  NetworkWithSwiftUI
//
//  Created by Abdelaziz Reda on 04/11/2023.
//

import Foundation

// ViewModel
class TabViewModel: ObservableObject {
    @Published var selectedTabIndex = 0
    let tabs: [TabItem] = [
        TabItem(name: "Home", imageName: "2.circle.fill"),
        TabItem(name: "Caregories", imageName: "command"),
        TabItem(name: "Search", imageName: "magnifyingglass"),
        TabItem(name: "Profile", imageName: "person")
//        TabItem(name: "home", imageName: "2.circle.fill"),
//        TabItem(name: "Tab 2", imageName: "2.circle.fill"),
//        TabItem(name: "Tab 2", imageName: "2.circle.fill"),
//        TabItem(name: "Tab 2", imageName: "2.circle.fill")

    ]
}
