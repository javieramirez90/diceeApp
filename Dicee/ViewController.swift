//
//  ViewController.swift
//  Dicee
//
//  Created by Xavier on 6/2/19.
//  Copyright © 2019 Xavier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceeIndex1: Int = 0
    var randomDiceeIndex2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDiceImages()
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?){
        updateDiceImages()
    }

    @IBAction func rollBottonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages() {
        randomDiceeIndex1 = Int.random(in: 0 ... 5)
        randomDiceeIndex2 = Int.random(in: 0 ... 5)
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceeIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceeIndex2])
    }
    
}

