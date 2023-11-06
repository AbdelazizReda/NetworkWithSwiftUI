//
//  PinterestCell.swift
//  NetworkWithSwiftUI
//
//  Created by Abdelaziz Reda on 06/11/2023.
//

import SwiftUI

struct PinterestCell: View {
    @State var pin: Pin
    
    var body: some View {
        VStack {
            Image(pin.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity, maxHeight: 200)
            //                .overlay(
            //                    VStack {
            //                        Button(action: {
            //                            pin.isFavorite.toggle()
            //                        }) {
            //                            Image(systemName: pin.isFavorite ? "heart.fill" : "heart")
            //                                .foregroundColor(pin.isFavorite ? .red : .gray)
            //                                .padding(8)
            //                                .background(
            //                                    Circle()
            //                                        .fill(pin.isFavorite ? Color.red.opacity(0.4) : Color.gray.opacity(0.4))
            //                                        .frame(width: 40, height: 40)
            //                                )
            //                        }
            //                        Button(action: {
            //                            // Add action for the cart button here
            //                        }) {
            //                            Image(systemName: "cart")
            //                                .foregroundColor(.blue)
            //                                .padding(8)
            //                                .background(
            //                                    Circle()
            //                                        .fill(Color.blue.opacity(0.4))
            //                                        .frame(width: 40, height: 40)
            //                                )
            //                        }
            //                    }
            //                        .offset(x: 70, y: -50)
            //                )
            //
            
            HStack (spacing:10) {
                Button(action: {
                    pin.isFavorite.toggle()
                }) {
                    Image(systemName: pin.isFavorite ? "heart.fill" : "heart")
                        .foregroundColor(pin.isFavorite ? .red : .red)
                        .padding(8)
                        .background(
                            Circle()
                                .fill(pin.isFavorite ? Color.red.opacity(0.3) : Color.gray.opacity(0.3))
                                .frame(width: 35, height: 35)
                        )
                }
                
                Button(action: {
                    // Add action for the cart button here
                    pin.inCart.toggle()
                }) {
                    Image(systemName: pin.inCart ? "cart.fill" : "cart")
                        .foregroundColor(.blue)
                        .padding(8)
                        .background(
                            Circle()
                                .fill(pin.inCart ? Color.blue.opacity(0.3) : Color.gray.opacity(0.3))
                                .frame(width: 35, height: 35)
                        )
                }
                
                Button(action: {
                    // Add action for the cart button here
                    pin.inSheard.toggle()
                }) {
                    Image(systemName: pin.inSheard ? "arrowshape.turn.up.left.2.fill" : "arrowshape.turn.up.left.2")
                        .foregroundColor(.green)
                        .padding(8)
                        .background(
                            Circle()
                                .fill(pin.inSheard ? Color.green.opacity(0.3) : Color.gray.opacity(0.3))
                                .frame(width: 35, height: 35)
                        )
                }
            }
            .padding(.horizontal, 10) // Adjust the horizontal padding as needed
            .padding(.vertical, 10)
            
            
            
        
            
            Text(pin.title)
                .font(.headline)
                .padding(.top, 8)
            
            Text(pin.description)
                .font(.subheadline)
                .foregroundColor(.gray)
                .padding(.top, 4)
        }
        .padding(8)
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 2)
    }
}



#Preview {
    PinterestCell(pin: Pin(imageName:  "test", title: "HP Probook", description: "HP Probook 450 G8 Laptop - 11th Intel Core i5-1135G7, 8GB RAM, 256GB PCIe NVMe SSD, 15.6"))
}
