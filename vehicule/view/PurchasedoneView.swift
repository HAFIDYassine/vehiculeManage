//
//  PurchaseDoneView.swift
//  vehicule
//
//  Created by invite on 02/11/2023.
//

import SwiftUI

struct PurchaseDoneView: View {
    //@State var text: String = "Total amount: 130 credits - Purchased"
    
    var body: some View {
        Text("Purchase done")
        VStack {
            Text("Total amount: 130 credits - Purchased")
                .lineLimit(1)
                .truncationMode(.tail)
                .frame(maxWidth: .infinity,
                       alignment: .leading)
            
            
            Button("Copy to clipboard") {
                copyTOClipboard()
            }
            .buttonStyle(.bordered)
            
            Image("Helmet")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .padding(8)
            
        }
    }
}


func copyTOClipboard(){
    @State var text: String = "Total amount: 130 credits - Purchased"
    UIPasteboard.general.string = text
    
}

struct PurchaseDoneView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseDoneView()
    }
}
