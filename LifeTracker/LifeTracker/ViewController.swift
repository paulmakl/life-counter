//
//  ViewController.swift
//  LifeTracker
//
//  Created by Mark Frankle on 1/8/17.
//  Copyright © 2017 Mark Frankle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Player1Name: UILabel!
    
    @IBOutlet weak var Player2Name: UILabel!
    
    @IBOutlet weak var Player1Life: UIButton!

    @IBOutlet weak var Player2Life: UILabel!
    
    /**
        Trying to get the lifetotal to add when the plus button is clicked. Having trouble with optionals wrapping/unwrapping, could use a hand
    */
    @IBAction func AddPlayer1(_ sender: UIButton) {
        let player1Life = sender.currentTitle!
        let newPlayer1Life = Int(player1Life)! + 1
        let newPlayer1LifeString = String(newPlayer1Life)
        //What is UIControlState? Grrr
        sender.setTitle(newPlayer1LifeString, for: UIControlState)
        
    }
    
    @IBAction func SubtractPlayer1(_ sender: UIButton) {
    }

    @IBAction func AddPlayer2(_ sender: UIButton) {
    }
    
    
    @IBAction func SubtractPlayer2(_ sender: UIButton) {
    }
}

