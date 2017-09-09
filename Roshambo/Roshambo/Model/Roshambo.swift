//
//  Roshambo.swift
//  Roshambo
//
//  Created by Leonardo Vinicius Kaminski Ferreira on 09/09/17.
//  Copyright © 2017 Leonardo Ferreira. All rights reserved.
//

import Foundation

enum PlayerType: String {
    case rock = "Rock"
    case paper = "Paper"
    case scissor = "Scissor"
}

struct Roshambo {
    
    private static func defineWinner(with playerA: PlayerType, playerB: PlayerType) -> PlayerType {
        switch (playerA, playerB) {
        case (.rock, .paper), (.paper, .rock):
            return .paper
        case (.rock, .scissor), (.scissor, .rock):
            return .rock
        case (.paper, .scissor), (.scissor, .paper):
            return .scissor
        case (.scissor, .scissor), (.rock, .rock), (.paper, .paper):
            return playerA
        }
    }
    
    static func generateRandomPlayer() -> PlayerType {
        switch arc4random() % 3 {
        case 0:
            return .paper
        case 1:
            return .rock
        default:
            return .scissor
        }
    }
    
    static func winnerMessage(with playerA: PlayerType, playerB: PlayerType) -> (String, String) {
        if playerA == playerB {
            return ("No body wins! :(", "noImage")
        }
        
        let winner = defineWinner(with: playerA, playerB: playerB)
        return ("\(winner.rawValue) wins \(winner == playerA ? playerB.rawValue : playerA.rawValue), you're \(playerB.rawValue)", winner.rawValue)
    }
    
}
