//
//  ScannerViewController.swift
//  BarcodeScanner
//
//  Created by Muhammad Hassan on 02/06/2022.
//

import Foundation
import AVFoundation
import UIKit

protocol ScannerViewControllerDelegate: AnyObject {
    func didScan(barcode: String)
}

final class ScannerViewController: UIViewController {
    let captureSession = AVCaptureSession()
    var previewLayer: AVCaptureVideoPreviewLayer?
    weak var delegate: ScannerViewControllerDelegate?
}
