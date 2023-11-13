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
    @State var selectedextra : Extras = Extras(name: "", credits: 0, Id: 0, ischecked: false)
    init() {
        self.types = repository.types
        self.tiress = repository1.tires
        self.extrass = repository2.extras
    }
    
    /*func calculateSelectedExtrasCredits() -> Int {
        var totalCredits = 0
        
        for extra in extrass {
            if extra.ischecked {
                totalCredits += extra.credits
            }
        }
        return totalCredits
    }*/
    
    
    var body: some View {
            HStack {
                Text("Tune your vehicule")
                    //.padding(.top, 10)
                    //.padding(.bottom, 12)
                
                
            }
        VStack{
            Text("Type")
                .frame(maxWidth: .infinity,
                       alignment: .leading)
        }
            List(types) {
                type in TypeView(selectedOption: $selectedtype, type: type)
            }
        
            
        VStack{
            Text("Tires")
                .frame(maxWidth: .infinity,
                       alignment: .leading)
        }
        
        
            List(tiress) {
                tires in TiresView(selectedOption: $selectedtire, tires: tires)
            }
        
        VStack{
            Text("Extras")
                .frame(maxWidth: .infinity,
                       alignment: .leading)
        }
            
            List(extrass) {
                extras in ExtrasView(extras: extras, isChecked:false)
                
            }
        /*ForEach(extrass) { extras in
            /*@START_MENU_TOKEN@*/Text(extras.name)/*@END_MENU_TOKEN@*/
            
        }*/
        
            HStack {
                Text("Total")
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                
                
        Text("\(selectedtire.credits + selectedtype.credits  ) credits")
                Text("215 credits available")
                   
                
            }
        
        
        NavigationView{
            HStack{
                    NavigationLink(destination: PurchaseDoneView()){
                        Text("Purchase").frame(width: 150,
                                               height: 50, alignment: .center).background(Color.purple)
                            .cornerRadius(50)
                            .padding(.bottom,15)
                    }
                
            }
        }
        }
    
        
    }
