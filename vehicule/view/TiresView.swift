//
//  TiresView.swift
//  vehicule
//
//  Created by invite on 03/11/2023.
//
import SwiftUI

struct TiresView: View {
    
    @Binding var selectedOption: Tires
    var tires: Tires
    var body: some View {
      
        HStack(spacing: 16) {
            RadioButtonViewtires(index: tires, selectedIndex: $selectedOption )
            Text(tires.name)
                .lineLimit(1)
                .truncationMode(.tail)
                .frame(maxWidth: .infinity,
                       alignment: .leading)
            Text("\(tires.credits) credits")
              
        }
    }
}
