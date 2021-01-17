//
//  BarcodeScannerViewModel.swift
//  BarCodeScanner
//
//  Created by Christian Skorobogatow on 17/1/21.
//

import SwiftUI


final class BarCodeScannerViewModel: ObservableObject {
    
    @Published var scannedCode: String = ""
    @Published var alertItem: AlertItem?
    
    var statusText: String {
        scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode
    }
    
    var statusTextColor: Color {
        scannedCode.isEmpty ? .red : .green
    }
    
}
