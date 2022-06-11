//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Muhammad Hassan on 11/06/2022.
//

import SwiftUI

struct AppetizerDetailView: View {
    let appetizer: Appetizer
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        .frame(width: 320, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
    }
}

struct AppetizerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(appetizer: MockData.sampleAppetizer)
    }
}
