//
//  ExtrasRepository.swift
//  vehicule
//
//  Created by invite on 03/11/2023.
//

import Foundation

class ExtrasRepository {
    
    static let shared = ExtrasRepository()
    
    private(set) var extras = [
    Extras(name: "Nitro(10 units)", credits: 100, Id: 1,nitrochecked: false,spoilerchecked: false),
    Extras(name: "Spoiler", credits: 200, Id: 2,nitrochecked: false, spoilerchecked: false)
        ]
    
   
    
}
