//
//  AccountView.swift
//  Appetizers
//
//  Created by Muhammad Hassan on 06/06/2022.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            Text("Account View")
                .navigationTitle("🙂 Account")
        }
        .navigationViewStyle(.stack)
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}
