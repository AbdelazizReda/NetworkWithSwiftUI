//
//  HomeView.swift
//  NetworkWithSwiftUI
//
//  Created by Abdelaziz Reda on 04/11/2023.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel = ViewModel()
    
    
    var body: some View {
    
        VStack {
            if let data = viewModel.data {
                Text("Data: \(data.body)")
                    .foregroundColor(.blue)
                Text("Data: \(data.title)")
                
            } else {
                Text("Data Loading.... ")
                    .onAppear {
                        viewModel.fetchData()
                    }
            }
        }
        
    }
    
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            HomeView()
        }
    }
}
