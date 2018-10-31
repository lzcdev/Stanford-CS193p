//
//  Concentration.swift
//  Concentration
//
//  Created by lzcdev on 2018/10/31.
//  Copyright © 2018 lzcdev. All rights reserved.
//

import Foundation

class Concentration {
    var cards = [Card]()
    
    var indexOfOneAndOnlyFaceUpdaCard: Int?
    
    func chooseCard(at index: Int) {

        if !cards[index].isMatched {
            if let matchIndex = indexOfOneAndOnlyFaceUpdaCard, matchIndex != index {
               // check if cards match
                if cards[matchIndex].identifier == cards[index].identifier {
                    cards[matchIndex].isMatched = true
                    cards[index].isMatched = true
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpdaCard = nil
            } else {
                // either no matchs or 2 cards are face up
                for flipDownIndex in cards.indices {
                    cards[flipDownIndex].isFaceUp = false
                }
                cards[index].isFaceUp = true
                indexOfOneAndOnlyFaceUpdaCard = index
            }
        }
    }
    
    init(numberOfPairsOfCards: Int) {
        for _ in 0..<numberOfPairsOfCards {
            let card = Card()
            cards += [card, card]
        }
        
        // TODO: Shuffle the cards
    }
}

























