import SwiftUI

struct ChoiceListView: View {
    let repository = TypeRepository.shared
    let repository1 = TiresRepository.shared
    let repository2 = ExtrasRepository.shared
    
    let types : [Type]
    let tiress : [Tires]
    let extrass : [Extras]
    

    @State var selectedtype: Type = Type(name: "", credits: 0, Id: 0)
    @State var selectedtire : Tires = Tires(name: "", credits: 0, Id: 0)
    @State var selectedextra : Extras = Extras(name: "", credits: 0, Id: 0,nitrochecked: false,spoilerchecked: false)
  



    
    init() {
        self.types = repository.types
        self.tiress = repository1.tires
        self.extrass = repository2.extras
        
    }
    
    let creditdisponible = 215
    
      var total: Int {
        calculerTotal()
    }
    
    func calculerTotal() -> Int {
           return calculcredit() + calculextra()
       }
 
    func calculcredit() -> Int {
        var total: Int = 0
        if selectedtype.Id != 3 {
            total += selectedtire.credits
        }
        total += selectedtype.credits
        return total
    }
    
    
    func calculextra() -> Int {
           var extracredit: Int = 0
           if selectedextra.nitrochecked {
               extracredit += 100
           }
           if selectedextra.spoilerchecked {
               extracredit += 200
           }
           return extracredit
       }
    
    func selectedItems() -> String {
        var selectedItemsSummary = "Purchased: "
        
        
        if selectedtype.Id != 0 {
            selectedItemsSummary += "\(selectedtype.name), "
        }
        
        
        if selectedtire.Id != 0 && selectedtype.Id != 3 {
            selectedItemsSummary += "\(selectedtire.name), "
        }
        
      
        
            if selectedextra.nitrochecked {
                selectedItemsSummary += "Nitro(10 units), "
            }
            if selectedextra.spoilerchecked {
                selectedItemsSummary += "Spoiler, "
            }
        
        
        
        if selectedItemsSummary.hasSuffix(", ") {
            selectedItemsSummary.removeLast(2)
        }
        
        return selectedItemsSummary
    }


    

  
    
    var body: some View {
            HStack {
                Text("Tune your vehicule")
                
            }
            Text("Type")

                List(types) {
                    type in TypeView(selectedOption: $selectedtype, type: type)
                    
                }
            Text("Tire")

                List(tiress) {
                    tires in TiresView(selectedOption: $selectedtire, tires: tires)
                        .disabled(selectedtype.Id == 3) // Désactiver la liste si le type est Hovercraft
                }
                
               /* List(extrass) {
                    extras in ExtrasView(extras: extras, isChecked: false, selectedChecked: $selectedextra)
                    
                }*/
            Text("Extra")

            List(extrass) {
                extras in ExtrasView(extras: extras, selectedChecked: $selectedextra)
                
            }
        
      
 
            
            HStack {
                Text("Total")
                    .lineLimit(1)
                    .truncationMode(.tail)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                
         

                
                Text("\(total) credits")
              
                
              
                
               
               
                Text("\(creditdisponible)credits available")
                    .foregroundColor(total > creditdisponible ? .red : .black)
                
            }
      
        NavigationView{
            HStack{
                    NavigationLink(destination: PurchaseDoneView(selectedItemsSummary: selectedItems(),
                                                                totalCreditsSpent: total,
                                                                creditsRemaining:  creditdisponible - total)){
                        Text("Purchase").frame(width: 150,
                                               height: 50, alignment: .center).background(total > creditdisponible ? Color.gray : Color.purple)
                            .foregroundColor(Color.white)
                            .cornerRadius(50)
                            
                        
                    }
                  
                    .disabled(total > creditdisponible)
            }
        }
        }
    
        
    }

