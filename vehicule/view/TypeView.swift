//
//  TypeView.swift
//  vehicule
//
//  Created by invite on 03/11/2023.
//

import SwiftUI

struct TypeView: View {
    
    @Binding var selectedOption: Type
    var type: Type
    var body: some View {
        
        
      
        HStack(spacing: 20) {
            RadioButtonViewtype(index: type, selectedIndex: $selectedOption )
            Text(type.name)
                .lineLimit(1)
                .truncationMode(.tail)
                .frame(maxWidth: .infinity,
                       alignment: .leading)
            Text("\(type.credits) credits")
            
        }
    }
}

struct RadioButtonViewtype: View {
    
    var index: Type
    @Binding var selectedIndex : Type
    var body: some View {
        Button(action: {
            selectedIndex = index
        }) {
            HStack {
                Image(systemName: selectedIndex.Id == index.Id ? "largecircle.fill.circle" : "circle")
                    
            }
        }
    }
}

struct RadioButtonViewtires: View {
    
    var index: Tires
    @Binding var selectedIndex : Tires
    var body: some View {
        Button(action: {
            selectedIndex = index
        }) {
            HStack {
                Image(systemName: selectedIndex.Id == index.Id ? "largecircle.fill.circle" : "circle")
                    
            }
        }
    }
}

