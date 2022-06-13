//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Muhammad Hassan on 11/06/2022.
//

import SwiftUI

struct AppetizerDetailView: View {
    let appetizer: Appetizer
    @Binding var isShowingDetail: Bool
    var body: some View {
        VStack {
            RemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fill)
                .frame(width: 300, height: 225)
                .clipped()
            
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
                HStack(spacing: 40) {
                    VStack(spacing: 5) {
                        Text("Calories")
                            .bold()
                            .font(.caption)
                        Text("\(appetizer.calories)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    VStack(spacing: 5) {
                        Text("Carbs")
                            .bold()
                            .font(.caption)
                        Text("\(appetizer.carbs)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                    VStack(spacing: 5) {
                        Text("Protein")
                            .bold()
                            .font(.caption)
                        Text("\(appetizer.protein)")
                            .foregroundColor(.secondary)
                            .fontWeight(.semibold)
                            .italic()
                    }
                }
            }
            
            Spacer()
            
            Button {
                print("Tapped")
            } label: {
                PrimaryButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
            }
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetail = false
        } label: {
            ZStack {
                Circle()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.white)
                    .opacity(0.6)
                Image(systemName: "xmark")
                    .imageScale(.small)
                    .frame(width: 44, height: 44)
                    .foregroundColor(.black)
            }
        }, alignment: .topTrailing)
    }
}

struct AppetizerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(appetizer: MockData.sampleAppetizer,
                            isShowingDetail: .constant(false))
    }
}
