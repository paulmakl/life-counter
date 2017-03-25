//
//  GameModel.swift
//  life-counter
//
//  Created by Paul Makl on 3/14/17.
//  Copyright © 2017 Life Counter Co. All rights reserved.
//

import Foundation

import UIKit

enum LifeCounterErrors: Error {
    case invalidNumberOfPlayers
}

/* 
 It might be right to change Player to a struct like 
 struct Player {
    var life: Int
    var name: String
 }
 and move all the smarts to the Game
*/

class Player {
    var lifeTotal: Int! = nil
    var name: String! = nil
    var isDead: Bool! {
        get {
            return lifeTotal < 1
        }
    }
    init(name: String!, lifeTotal: Int!) {
        self.name = name
        self.lifeTotal = lifeTotal
    }
}

class Game {
    var players: [Player] = []
    var startingLifeTotal = 20
    let defaultName = "Player"
    var numberOfPlayers: Int{
        get {
            return players.count
        }
    }
    init(newNumberOfPlayers: Int) {
        try! setNumberOfPlayers(newNumberOfPlayers: newNumberOfPlayers)
    }
    func resetGame() {
        for player in players {
            player.lifeTotal = startingLifeTotal
        }
    }
    func setNumberOfPlayers(newNumberOfPlayers: Int) throws {
        if newNumberOfPlayers > 4 || newNumberOfPlayers < 0 {
            throw LifeCounterErrors.invalidNumberOfPlayers
        }
        
        for player in players{
            var person = player
            var count = 0
            person = Player(name: defaultName + "\(count)",
                            lifeTotal: startingLifeTotal)
            count += 1
        }
    }
}
