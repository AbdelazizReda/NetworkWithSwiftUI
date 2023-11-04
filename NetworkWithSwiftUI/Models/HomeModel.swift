//
//  HomeModel.swift
//  NetworkWithSwiftUI
//
//  Created by Abdelaziz Reda on 03/11/2023.
//

import Foundation
import SwiftUI

struct YourModel: Identifiable, Decodable {
    let userId: Int
    let id: Int
    let title: String
    let body:String
}
