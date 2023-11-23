//
//  MobileScannerError.swift
//  abc_upi_mobile_scanner
//
//  Created by Ram Mohan Annamalai on 09/11/2023.
//
import Foundation

enum MobileScannerError: Error {
    case noCamera
    case alreadyStarted
    case alreadyStopped
    case torchError(_ error: Error)
    case cameraError(_ error: Error)
    case torchWhenStopped
    case zoomWhenStopped
    case zoomError(_ error: Error)
    case analyzerError(_ error: Error)
}
