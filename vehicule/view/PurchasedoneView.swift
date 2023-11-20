//
//  PurchaseDoneView.swift
//  vehicule
//
//  Created by invite on 02/11/2023.
//

import SwiftUI

struct PurchaseDoneView: View {
    
    var selectedItemsSummary: String
    var totalCreditsSpent: Int
    var creditsRemaining: Int
    
    var body: some View {
        Text("Purchase done")
        VStack {
            Text("Total amount : \(totalCreditsSpent) credits")
            Text(selectedItemsSummary)
            Text("credits left: \(creditsRemaining)")
                .lineLimit(1)
                .truncationMode(.tail)
                .frame(maxWidth: .infinity,
                       alignment: .leading)
            
            
            Button("Copy to clipboard") {
                copyToClipboard()
            }
            .buttonStyle(.bordered)
            
            Image("Helmet")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding(8)
            
        }
    }
    
    private func copyToClipboard() {
        let pasteboard = UIPasteboard.general
        let clipboardText = """
                            Total amount: \(totalCreditsSpent) credits
                            \(selectedItemsSummary)
                            Credits left: \(creditsRemaining)
                            """
        pasteboard.string = clipboardText

    }
}
