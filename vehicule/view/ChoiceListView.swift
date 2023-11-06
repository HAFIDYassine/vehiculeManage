//
//  TypeListView.swift
//  }
//
//  Created by invite on 03/11/2023.
//

import SwiftUI

struct ChoiceListView: View {
    let repository = TypeRepository.shared
    let repository1 = TiresRepository.shared
    let repository2 = ExtrasRepository.shared
    
    @State var selectedchoice : Int = 0
    
    let types : [Type]
    let tiress : [Tires]
    let extrass : [Extras]
    

    @State var selectedtype: Type = Type(name: "", credits: 0, Id: 0)
    @State var selectedtire : Tires = Tires(name: "", credits: 0, Id: 0)
    //@State var selectedextra : Extras = Extras(name: "", credits: 0, Id: 0, ischecked: false)
    init() {
        self.types = repository.types
        self.tiress = repository1.tires
        self.extrass = repository2.extras
    }
    
    
    var body: some View {
            HStack {
                Text("Tune your vehicule")
                
                
            }
            
            
            
            List(types) {
                type in TypeView(selectedOption: $selectedtype, type: type)
            }
            
            List(tiress) {
                tires in TiresView(selectedOption: $selectedtire, tires: tires)
            }
            
            List(extrass) {
                extras in ExtrasView(extras: extras)
                
            }
            
            
            HStack {
                Text("Total")
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                
                    
                Text("\(selectedtire.credits + selectedtype.credits) credits")
              //  Text("\(selectedchoice) credits")
                Text("215 credits available")
                
                
            }
        
        NavigationView{
            HStack{
                    NavigationLink(destination: PurchaseDoneView()){
                        Text("Purchase").frame(width: 150,
                                               height: 50, alignment: .center).background(Color.purple)
                            .cornerRadius(50)
                    }
                
            }
        }
        }
    
        
    }
