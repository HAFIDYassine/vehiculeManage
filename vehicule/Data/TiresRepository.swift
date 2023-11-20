//
//  TiresRepository.swift
//  vehicule
//
//  Created by invite on 03/11/2023.
//

import Foundation

class TiresRepository {
    
    static let shared = TiresRepository()
    
    private(set) var tires = [
        Tires(name: "Hard tires", credits: 0 , Id: 1),
        Tires(name: "Soft tires", credits: 30, Id : 2)
        ]
}
