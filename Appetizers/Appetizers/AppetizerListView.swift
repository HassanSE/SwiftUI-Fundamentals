//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Muhammad Hassan on 06/06/2022.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject private var viewModel = AppetizerListViewModel()
    var body: some View {
        NavigationView {
            List(viewModel.appetizers) { appetizer in
                AppetizerListCell(appetizer: appetizer)
            }
            .navigationTitle("🍟 Appetizers")
        }
        .navigationViewStyle(.stack)
        .onAppear {
            viewModel.getAppetizers()
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
