//
//  Appetizer.swift
//  Appetizers
//
//  Created by Muhammad Hassan on 06/06/2022.
//

import Foundation

struct Appetizer {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: URL
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse {
    let request: [Appetizer]
}
