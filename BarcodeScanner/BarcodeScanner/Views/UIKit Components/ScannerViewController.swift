//
//  ScannerViewController.swift
//  BarcodeScanner
//
//  Created by Muhammad Hassan on 02/06/2022.
//

import Foundation
import AVFoundation
import UIKit

enum CameraError: Error {
    case invalidDeviceInput
    case invalidScannedValue
}

protocol ScannerViewControllerDelegate: AnyObject {
    func didScan(barcode: String)
    func didFail(error: CameraError)
}

final class ScannerViewController: UIViewController {
    let captureSession = AVCaptureSession()
    var previewLayer: AVCaptureVideoPreviewLayer?
    weak var scannerDelegate: ScannerViewControllerDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupCaptureSession()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        guard let previewLayer = previewLayer else {
            scannerDelegate?.didFail(error: .invalidDeviceInput)
            return
        }
        previewLayer.frame = view.layer.bounds
    }
    
    private func setupCaptureSession() {
        guard let videoCaptureDevice = AVCaptureDevice.default(for: .video) else {
            scannerDelegate?.didFail(error: .invalidDeviceInput)
            return
        }
        let videoInput: AVCaptureDeviceInput
        do {
            try videoInput = AVCaptureDeviceInput(device: videoCaptureDevice)
        } catch {
            scannerDelegate?.didFail(error: .invalidDeviceInput)
            return
        }
        if captureSession.canAddInput(videoInput) {
            captureSession.addInput(videoInput)
        } else {
            scannerDelegate?.didFail(error: .invalidDeviceInput)
            return
        }
        let metaDataOutput = AVCaptureMetadataOutput()
        if captureSession.canAddOutput(metaDataOutput) {
            captureSession.addOutput(metaDataOutput)
            metaDataOutput.setMetadataObjectsDelegate(self, queue: DispatchQueue.main)
            metaDataOutput.metadataObjectTypes = [.ean8, .ean13]
        } else {
            scannerDelegate?.didFail(error: .invalidDeviceInput)
            return
        }
        previewLayer = AVCaptureVideoPreviewLayer(session: captureSession)
        previewLayer?.videoGravity = .resizeAspectFill
        view.layer.addSublayer(previewLayer!)
        captureSession.startRunning()
    }
}

extension ScannerViewController: AVCaptureMetadataOutputObjectsDelegate {
    func metadataOutput(_ output: AVCaptureMetadataOutput, didOutput metadataObjects: [AVMetadataObject], from connection: AVCaptureConnection) {
        guard let object = metadataObjects.first,
              let machineReadableObject = object as? AVMetadataMachineReadableCodeObject,
              let barcode = machineReadableObject.stringValue else {
            scannerDelegate?.didFail(error: .invalidScannedValue)
            return
        }
        scannerDelegate?.didScan(barcode: barcode)
    }
}
