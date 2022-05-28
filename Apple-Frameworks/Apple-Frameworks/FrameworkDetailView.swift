//
//  FrameworkDetailView.swift
//  Apple-Frameworks
//
//  Created by Muhammad Hassan on 28/05/2022.
//

import SwiftUI

struct FrameworkDetailView: View {
    
    var framework: Framework
    
    var body: some View {
        VStack {
            Spacer()
            FrameworkTitleView(name: framework.name, imageName: framework.imageName)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button {
                
            } label: {
                Text("Learn More")
                    .font(.title2)
                    .fontWeight(.semibold)
                    .frame(width: 280, height: 50)
                    .background(.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            Spacer()
        }
    }
}

struct FrameworkDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailView(framework: MockData.sampleFramework)
            .preferredColorScheme(.dark)
    }
}
