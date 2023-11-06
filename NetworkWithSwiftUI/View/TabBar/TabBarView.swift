//
//  TabBarView.swift
//  NetworkWithSwiftUI
//
//  Created by Abdelaziz Reda on 04/11/2023.
//

import SwiftUI


// ContentView
struct TabBarView: View {
    
    @StateObject private var viewModel = TabViewModel()
    
    var body: some View {
        TabView(selection: $viewModel.selectedTabIndex) {
            ForEach(0..<viewModel.tabs.count, id: \.self) { index in
                TabItemView(tab: viewModel.tabs[index])
                    .tabItem {
                        Image(systemName: viewModel.tabs[index].imageName)
                        Text(viewModel.tabs[index].name)
                    }
                    .tag(index)
            }
        }
        .onAppear {
            UITabBar.appearance().barTintColor = .white // Set the tab bar background color
        }
    }
}

// TabItemView
struct TabItemView: View {
    let tab: TabItem
    
    var body: some View {
        Group {
            if tab.name == "Tab 1" {
                HomeView()
            } else if tab.name == "Tab 2" {
                pinterestCollection()
            } else if tab.name == "Tab 3" {
                Tab3ContentView()
            } else if tab.name == "Tab 4" {
                HomeView()
            }
        }
    }
}

// Individual Content Views for Each Tab
struct Tab1ContentView: View {
    var body: some View {
        Text("Content for Tab 1")
            .font(.largeTitle)
            .padding()
    }
}

struct Tab2ContentView: View {
    var body: some View {
        Text("Content for Tab 2")
            .font(.largeTitle)
            .padding()
    }
}

struct Tab3ContentView: View {
    var body: some View {
        Text("Content for Tab 3")
            .font(.largeTitle)
            .padding()
    }
}

struct Tab4ContentView: View {
    var body: some View {
        Text("Content for Tab 4")
            .font(.largeTitle)
            .padding()
    }
}


