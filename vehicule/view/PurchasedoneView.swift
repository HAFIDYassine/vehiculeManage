//
//  PurchaseDoneView.swift
//  vehicule
//
//  Created by invite on 02/11/2023.
//

import SwiftUI

struct PurchaseDoneView: View {
    var body: some View {
        Text("Purchase done")
        VStack {
            Text("Total amount: 130 credits")
                .lineLimit(1)
                .truncationMode(.tail)
                .frame(maxWidth: .infinity,
                       alignment: .leading)
            
            
            Button("Copy to clipboard") {
                // on click
            }
            .buttonStyle(.bordered)
            
            Image(.helmet)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding(8)
            
        }
    }
}

struct PurchaseDoneView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseDoneView()
    }
}
