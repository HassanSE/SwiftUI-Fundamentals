//
//  AppetizerListView.swift
//  Appetizers
//
//  Created by Muhammad Hassan on 06/06/2022.
//

import SwiftUI

struct AppetizerListView: View {
    @StateObject private var viewModel = AppetizerListViewModel()
    @State private var isShowingDetail = false
    @State private var selectedAppetizer: Appetizer?
    var body: some View {
        ZStack {
            NavigationView {
                List(viewModel.appetizers) { appetizer in
                    AppetizerListCell(appetizer: appetizer)
                        .onTapGesture {
                            isShowingDetail = true
                            selectedAppetizer = appetizer
                        }
                }
                .navigationTitle("🍟 Appetizers")
                .disabled(isShowingDetail)
            }
            .navigationViewStyle(.stack)
            .blur(radius: isShowingDetail ? 20 : 0)
            if isShowingDetail {
                AppetizerDetailView(appetizer: selectedAppetizer!,
                                    isShowingDetail: $isShowingDetail)
            }
            if viewModel.isLoading {
                LoadingView()
            }
        }
        .onAppear {
            viewModel.getAppetizers()
        }
        .alert(item: $viewModel.alertItem) { alert in
            Alert(title: alert.title, message: alert.message, dismissButton: alert.dismissButton)
        }
    }
}

struct AppetizerListView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListView()
    }
}
