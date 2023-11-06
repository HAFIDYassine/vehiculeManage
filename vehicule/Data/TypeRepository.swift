//
//  ChoiceRepository.swift
//  vehicule
//
//  Created by invite on 02/11/2023.
//

import Foundation
class TypeRepository {
    
    static let shared = TypeRepository()
    
    private(set) var types = [
        Type(name: "car", credits: 0,Id : 1),
    Type(name: "Motorbike", credits: 0,  Id : 2),
    Type(name: "Hovercraft", credits: 50,Id : 3)
        ]

    
    
}
