//
//  HomeModel.swift
//  NetworkWithSwiftUI
//
//  Created by Abdelaziz Reda on 03/11/2023.
//

import Foundation
import SwiftUI

struct YourModel: Identifiable, Decodable {
    var userId: Int
    var id: Int
    var title: String
    var body:String
}
