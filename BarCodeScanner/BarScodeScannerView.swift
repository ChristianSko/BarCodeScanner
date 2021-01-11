//
//  ContentView.swift
//  BarCodeScanner
//
//  Created by Christian Skorobogatow on 11/1/21.
//

import SwiftUI

struct BarScodeScannerView: View {
    var body: some View {
        NavigationView {
            VStack{
                Rectangle()
                    .frame(maxWidth: .infinity , maxHeight: 300)
                
                Label("Scanner Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text("Not Yet Scanned")
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(.green)
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
