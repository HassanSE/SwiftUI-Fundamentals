//
//  ContentView.swift
//  Appetizers
//
//  Created by Muhammad Hassan on 06/06/2022.
//

import SwiftUI

struct AppetizerTabView: View {
    var body: some View {
        TabView {
            AppetizerListView()
                .tabItem {
                    Label("Home", systemImage: "house")
                        .environment(\.symbolVariants, .none)
                }
            AccountView()
                .tabItem {
                    Label("Account", systemImage: "person")
                        .environment(\.symbolVariants, .none)
                }
            OrderView()
                .tabItem {
                    Label("Order", systemImage: "bag")
                        .environment(\.symbolVariants, .none)
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerTabView()
    }
}
