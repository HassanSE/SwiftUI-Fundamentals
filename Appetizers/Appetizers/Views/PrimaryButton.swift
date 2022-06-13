//
//  PrimaryButton.swift
//  Appetizers
//
//  Created by Muhammad Hassan on 13/06/2022.
//

import SwiftUI

struct PrimaryButton: View {
    let title: LocalizedStringKey
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .background(Color.brandPrimary)
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

struct PrimaryButton_Previews: PreviewProvider {
    static var previews: some View {
        PrimaryButton(title: "Test Title")
    }
}
