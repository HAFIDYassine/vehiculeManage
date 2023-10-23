//
//  ContentView.swift
//  vehicule
//
//  Created by hafid yassine on 16/10/2023.

import SwiftUI
struct ContentView: View {
    
    @State var selectedOption: Int = 1
    
    var body: some View {
        Text("Tune your vehicule").font(.headline)
        Text("Type")
            .frame(maxWidth: .infinity, alignment: .leading)
        VStack (alignment: .leading, spacing: 20) {
            RadioButtonView(index: 1, title: "car", selectedIndex: $selectedOption , price: "0 credits")
            RadioButtonView(index: 2, title: "Motorbike", selectedIndex: $selectedOption, price: "0 credits")
            RadioButtonView(index: 3, title: "Hovercraft", selectedIndex: $selectedOption, price: "50 credits")
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}
struct RadioButtonView: View {
    var index: Int
    var title: String
    @Binding var selectedIndex: Int
    var price: String
    var body: some View {
        Button(action: {
            selectedIndex = index
        }) {
            HStack {
                Image(systemName: self.selectedIndex == self.index ? "largecircle.fill.circle" : "circle")
                    .foregroundColor(.black)
                Text(title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                Text(price)
                    .font(.system(size: 12))
                    .foregroundStyle(.black)
                
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
