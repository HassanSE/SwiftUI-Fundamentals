//
//  Alert.swift
//  Appetizers
//
//  Created by Muhammad Hassan on 08/06/2022.
//

import SwiftUI

struct AlertItem: Identifiable {
    let id = UUID()
    let title: Text
    let message: Text
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidData      = AlertItem(title: Text(""),
                                       message: Text(""),
                                       dismissButton: .default(Text("")))
    static let invalidResponse  = AlertItem(title: Text(""),
                                       message: Text(""),
                                       dismissButton: .default(Text("")))
    static let invalidURL       = AlertItem(title: Text(""),
                                       message: Text(""),
                                       dismissButton: .default(Text("")))
    static let unableToComplete = AlertItem(title: Text(""),
                                       message: Text(""),
                                       dismissButton: .default(Text("")))
}
