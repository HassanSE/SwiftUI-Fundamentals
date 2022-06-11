//
//  RemoteImage.swift
//  Appetizers
//
//  Created by Muhammad Hassan on 11/06/2022.
//

import SwiftUI

final class ImageLoader: ObservableObject {
    @Published var image: Image? = nil
    
    func load(from urlString: String) {
        NetworkManager.shared.downloadImage(from: urlString) { [self] uiImage in
            guard let uiImage = uiImage else { return }
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)
            }
        }
    }
}

struct RemoteImage: View {
    @StateObject var imageLoader = ImageLoader()
    let urlString: String
    
    var body: some View {
        (imageLoader.image?.resizable() ?? Image("food-placeholder").resizable())
            .onAppear {
                imageLoader.load(from: urlString)
            }
    }
}
