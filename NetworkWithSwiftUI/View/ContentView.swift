//
//  ContentView.swift
//  NetworkWithSwiftUI
//
//  Created by Abdelaziz Reda on 03/11/2023.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ViewModel()
    @ObservedObject var tabviewModel = TabViewModel()
    
    
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
            ContentView()
        }
    }
}
