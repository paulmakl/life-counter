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
    var players: Array = [Player]()
    var startingLifeTotal: Int = 20
    var numberOfPlayers: Int {
        get {
            return players.count
        }
    }
    init(newNumberOfPlayers: Int) {
        
    }
    func resetGame() {
        for player in players {
            player.lifeTotal = startingLifeTotal
        }
    }
    func setNumberOfPlayers(newNumberOfPlayers: Int) throws {
        throw LifeCounterErrors.invalidNumberOfPlayers
    }
}
