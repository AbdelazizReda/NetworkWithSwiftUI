//
//  pinterestCollection.swift
//  NetworkWithSwiftUI
//
//  Created by Abdelaziz Reda on 06/11/2023.
//

import SwiftUI

struct pinterestCollection: View {
    @State private var pins: [Pin] = [
         Pin(imageName: "test", title: "HP Probook", description: "HP Probook 450 G8 Laptop - 11th Intel Core i5-1135G7, 8GB RAM 1"),
         Pin(imageName: "test", title: "HP Zbook", description: "HP Probook 450 G8 Laptop - 11th Intel Core i5-1135G7, 8GB RAM 2"),  Pin(imageName: "test", title: "HP book", description: "HP Probook 450 G8 Laptop - 11th Intel Core i5-1135G7, 8GB RAM 2"),  Pin(imageName: "test", title: "HP Z-book", description: "HP Probook 450 G8 Laptop - 11th Intel Core i5-1135G7, 8GB RAM 2"),  Pin(imageName: "test", title: "HP Probook", description: "HP Probook 450 G8 Laptop - 11th Intel Core i5-1135G7, 8GB RAM 2"),  Pin(imageName: "test", title: "HP Elite", description: "HP Probook 450 G8 Laptop - 11th Intel Core i5-1135G7, 8GB RAM 2")
         // Add more pins here
         //test
         //test
         //test

         //test

     ]

     var body: some View {
         ScrollView {
             LazyVGrid(columns: [GridItem(.adaptive(minimum: 150))], spacing: 10) {
                 ForEach(pins) { pin in
                     PinterestCell(pin: pin)
                 }
             }
         }
     }
}

#Preview {
    pinterestCollection()
}
