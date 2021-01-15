//
//  ContentView.swift
//  BarCodeScanner
//
//  Created by Christian Skorobogatow on 11/1/21.
//

import SwiftUI

struct BarScodeScannerView: View {
    @State private var scannedCode: String = ""
    
    
    
    var body: some View {
        NavigationView {
            VStack{
                ScannerView(scannedCode: $scannedCode)
                    .frame(maxWidth: .infinity , maxHeight: 300)
                
                Label("Scanner Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(scannedCode.isEmpty ? "Not Yet Scanned" : scannedCode)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(scannedCode.isEmpty ? .red : .green)
                    .padding()
            }
            .navigationTitle("Barcode Scannner")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarScodeScannerView()
    }
}
