//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Muhammad Hassan on 31/05/2022.
//

import SwiftUI

struct BarcodeScannerView: View {
    @State private var scannedCode = ""
    var body: some View {
        NavigationView {
            VStack {
                ScannerView(scannedCode: $scannedCode)
                    .frame(maxWidth: .infinity, maxHeight: 300)
                Spacer()
                    .frame(height: 60)
                Label("Scanned Barcode:", systemImage: "barcode.viewfinder")
                    .font(.title)
                Text(scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(scannedCode.isEmpty ? .red : .green)
            }
            .navigationTitle("Barcode Scanner")
        }
        .navigationViewStyle(.stack)
    }
}

struct BarcodeScannerView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
