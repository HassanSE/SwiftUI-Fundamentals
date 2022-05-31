//
//  FrameworkTitleView.swift
//  Apple-Frameworks
//
//  Created by Muhammad Hassan on 30/05/2022.
//

import SwiftUI

struct FrameworkTitleView: View {
    let name: String
    let imageName: String
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .frame(width: 70, height: 70)
            Text(name)
                .font(.title2)
                .fontWeight(.semibold)
                .scaledToFit()
                .minimumScaleFactor(0.5)
                .padding()
        }
    }
}

struct FrameworkTitleView_Previews: PreviewProvider {
    static var previews: some View {
        let framework = MockData.sampleFramework
        FrameworkTitleView(name: framework.name, imageName: framework.imageName)
    }
}
