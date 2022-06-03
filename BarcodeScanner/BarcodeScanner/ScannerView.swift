//
//  ScannerView.swift
//  BarcodeScanner
//
//  Created by Muhammad Hassan on 03/06/2022.
//

import SwiftUI

struct ScannerView: UIViewControllerRepresentable {
    func makeCoordinator() -> Coordinator {
        Coordinator()
    }
    
    func makeUIViewController(context: Context) -> ScannerViewController {
        let viewController = ScannerViewController()
        viewController.scannerDelegate = context.coordinator
        return viewController
    }
    
    func updateUIViewController(_ uiViewController: ScannerViewController, context: Context) {}
    
    final class Coordinator: NSObject, ScannerViewControllerDelegate {
        func didScan(barcode: String) {
            print(barcode)
        }
        
        func didFail(error: CameraError) {
            print(error.rawValue)
        }
    }
}

struct ScannerView_Previews: PreviewProvider {
    static var previews: some View {
        ScannerView()
    }
}
