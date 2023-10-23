//
//  SwiftUIView.swift
//  vehicule
//
//  Created by hafid yassine on 23/10/2023.
//

import SwiftUI

struct SwiftUIView: View {
    @State var isChecked:Bool = false
    var title:String
    func toggle(){isChecked = !isChecked}
    var body: some View {
        Button(action: toggle){
            HStack{
                Image(systemName: isChecked ? "checkmark.square": "square")
                Text(title)
            }
            
        }
    }
}


