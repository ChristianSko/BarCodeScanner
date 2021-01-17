//
//  ContentView.swift
//  BarCodeScanner
//
//  Created by Christian Skorobogatow on 11/1/21.
//

import SwiftUI



struct BarScodeScannerView: View {
    
    @StateObject var viewModel = BarCodeScannerViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                ScannerView(scannedCode: $viewModel.scannedCode, alertItem: $viewModel.alertItem)
                    .frame(maxWidth: .infinity , maxHeight: 300)
                
                Label("Scanner Barcode", systemImage: "barcode.viewfinder")
                    .font(.title)
                
                Text(viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(viewModel.statusTextColor)
                    .padding()
                
                Button{
                    
                } label: {
                    
                }
            }
            .navigationTitle("Barcode Scannner")
            .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title),
                      message: Text(alertItem.message),
                      dismissButton: alertItem.dismissButton)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarScodeScannerView()
    }
}
