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
        TabItem(name: "Tab 1", imageName: "1.circle.fill"),
        TabItem(name: "Tab 2", imageName: "2.circle.fill"),
        TabItem(name: "Tab 3", imageName: "3.circle.fill"),
        TabItem(name: "Tab 4", imageName: "4.circle.fill")
    ]
}
