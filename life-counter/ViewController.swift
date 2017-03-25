//
//  ViewController.swift
//  life-counter
//
//  Created by Paul Makl on 3/14/17.
//  Copyright © 2017 Life Counter Co. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var gameLogic = Game(newNumberOfPlayers: 2)
    
    @IBOutlet weak var LifeTotal: UILabel!
    
    @IBOutlet weak var PlayerName: UILabel!

    @IBAction func AddLife(_ sender: UIButton) {
    }
    
    @IBAction func SubtractLife(_ sender: UIButton) {
    }
    
    @IBAction func Reset(_ sender: UIButton) {
        gameLogic.resetGame()
    }
}

