//
//  TiresView.swift
//  vehicule
//
//  Created by hafid yassine on 23/10/2023.
//

import SwiftUI

struct TiresView: View {
        @State var selectedOption: Int = 1
        
        var body: some View {
            Text("Tires")
                .frame(maxWidth: .infinity, alignment: .leading)
            VStack (alignment: .leading, spacing: 20) {
                RadioButtonView2(index: 1, title: "Hard tires", selectedIndex: $selectedOption , price: "0 credits")
                RadioButtonView2(index: 2, title: "Soft tires", selectedIndex: $selectedOption, price: "30 credits")
        
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding()
        }
    }
    struct RadioButtonView2: View {
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
    


struct TiresView_Previews: PreviewProvider {
    static var previews: some View {
        TiresView()
    }
}
