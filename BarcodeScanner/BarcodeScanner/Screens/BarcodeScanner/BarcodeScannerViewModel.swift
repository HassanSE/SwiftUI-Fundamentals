//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Muhammad Hassan on 05/06/2022.
//

import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    @Published var scannedCode = ""
    @Published var alertItem: AlertItem?
    var statusText: String {
        scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    var statusColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
}
