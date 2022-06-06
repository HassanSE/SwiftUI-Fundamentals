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
            Text("Appetizer List View")
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
