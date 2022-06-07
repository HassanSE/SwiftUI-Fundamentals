//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Muhammad Hassan on 06/06/2022.
//

import SwiftUI

struct AppetizerListView: View {
    var body: some View {
        NavigationView {
            List(MockData.appetizers) { appetizer in
                Text(appetizer.name)
            }
            .navigationTitle("🍟 Appetizers")
        }
        .navigationViewStyle(.stack)
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
