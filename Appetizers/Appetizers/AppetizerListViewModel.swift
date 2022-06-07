//
//  AppetizerListViewModel.swift
//  Appetizers
//
//  Created by Muhammad Hassan on 07/06/2022.
//

import Foundation

final class AppetizerListViewModel: ObservableObject {
    @Published var appetizers: [Appetizer] = []
    
    func getAppetizers() {
        NetworkManager.shared.getAppetizers { result in
            DispatchQueue.main.async {
                switch result {
                case .success(let appetizers):
                    self.appetizers = appetizers
                default:
                    break
                }
            }
        }
    }
}
