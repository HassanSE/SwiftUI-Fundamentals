//
//  WeatherButton.swift
//  SwiftUI-Weather
//
//  Created by Muhammad Hassan on 24/05/2022.
//

import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var backgroundColor: Color
    var textColor: Color
    
    var body: some View {
        Text(title)
            .frame(width: 280, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .medium))
            .cornerRadius(10)
    }
}
