//
//  SearchBar.swift
//  NetworkWithSwiftUI
//
//  Created by Abdelaziz Reda on 05/01/2024.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    var onSearchButtonClicked: () -> Void
    
    var body: some View {
        HStack {
            TextField("Search", text: $text)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(.horizontal)
            
            Button("Search") {
                onSearchButtonClicked()
            }
            .padding(.trailing)
        }
    }
}
//
//#Preview {
//
//    SearchBar()
//}

struct SearchBar_Previews: PreviewProvider {
    @State static var searchText: String = ""

    static var previews: some View {
        SearchBar(text: $searchText, onSearchButtonClicked: {})
            .previewLayout(.sizeThatFits)
    }
}
