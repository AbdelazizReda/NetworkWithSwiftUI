//
//  pinterstCellModel.swift
//  NetworkWithSwiftUI
//
//  Created by Abdelaziz Reda on 06/11/2023.
//

import Foundation
import SwiftUI


struct Pin: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    var isFavorite = false
    var inCart = false
    var inSheard = false


}
