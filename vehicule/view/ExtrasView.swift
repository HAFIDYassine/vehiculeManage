//
//  ExtrasView.swift
//  vehicule
//
//  Created by invite on 03/11/2023.
//
import SwiftUI

struct ExtrasView: View {
    
    var extras: Extras
    @Binding var selectedChecked: Extras
    
    var body: some View {
        HStack(spacing: 16) {
            CheckboxView(isChecked: Binding(
                get: {
                    extras.Id == 1 ? selectedChecked.nitrochecked : selectedChecked.spoilerchecked
                },
                set: { newValue in
                    if extras.Id == 1 {
                        selectedChecked.nitrochecked = newValue
                    } else if extras.Id == 2 {
                        selectedChecked.spoilerchecked = newValue
                    }
                }
            ))

            Text(extras.name)
                .lineLimit(1)
                .truncationMode(.tail)
                .frame(maxWidth: .infinity, alignment: .leading)

            Text("\(extras.credits) credits")
        }
    }
}

struct CheckboxView: View {
    @Binding var isChecked: Bool

    var body: some View {
        Button(action: {
            isChecked.toggle()
        }) {
            Image(systemName: isChecked ? "checkmark.square.fill" : "square")
                .resizable()
                .frame(width: 20, height: 20)
        }
    }
}
