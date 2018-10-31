//
//  Card.swift
//  Concentration
//
//  Created by lzcdev on 2018/10/31.
//  Copyright © 2018 lzcdev. All rights reserved.
//

import Foundation

struct Card {
    var isFaceUp: Bool = false
    var isMatched = false
    var identifier: Int
    
    static var identifierFactory = 0
    
    static func getUniqueIdentifier() -> Int {
        identifierFactory += 1
        return identifierFactory
    }
    
    init() {
        self.identifier = Card.getUniqueIdentifier()
    }
}









