//
//  FrameworkGridView.swift
//  Apple-Frameworks
//
//  Created by Muhammad Hassan on 28/05/2022.
//

import SwiftUI

struct FrameworkGridView: View {
    
    @StateObject var viewModel = FrameworkGridViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks) { framework in
                    NavigationLink(destination: FrameworkDetailView(framework: framework, isShowingDetailView: $viewModel.isShowingDetailView)) {
                        FrameworkTitleView(name: framework.name, imageName: framework.imageName)
                    }
                }
            }.navigationTitle("🍎 Frameworks")
        }.navigationViewStyle(.stack)
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
            .preferredColorScheme(.dark)
    }
}
