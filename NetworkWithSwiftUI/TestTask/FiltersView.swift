//
//  FiltersView.swift
//  NetworkWithSwiftUI
//
//  Created by Abdelaziz Reda on 05/01/2024.
//

import SwiftUI


struct FiltersView: View {
    @Binding var selectedFilter: String?

      var body: some View {

          ScrollView(.horizontal, showsIndicators: false) {
              HStack {
                  ForEach(["ALL", "Low Sugar", "Dairy-Free", "Vegan"], id: \.self) { filter in
                      Button(action: {
                          selectedFilter = filter == "ALL" ? nil : filter
                      }) {
                          Text(filter)
                              .padding(.horizontal, 12)
                              .padding(.vertical, 8)
                              .background(selectedFilter == filter ? Color.blue : Color.gray)
                              .foregroundColor(.white)
                              .cornerRadius(16)
                      }
                  }
              }
          }
      }
}


struct FiltersView_Previews: PreviewProvider {
    @State static var previewSelectedFilter: String? = nil

    static var previews: some View {
        FiltersView(selectedFilter: $previewSelectedFilter)
    }
}


