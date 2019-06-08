//
//  ViewController.swift
//  Dicee
//
//  Created by Xavier on 6/2/19.
//  Copyright © 2019 Xavier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceeIndex1: Int = 0
    var randomDiceeIndex2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func rollBottonPressed(_ sender: UIButton) {
        randomDiceeIndex1 = Int.random(in: 1 ... 6)
        randomDiceeIndex2 = Int.random(in: 1 ... 6)
        
        print(randomDiceeIndex1)
        
        diceImageView1.image = UIImage(named: "dice\(randomDiceeIndex1)")
        diceImageView2.image = UIImage(named: "dice\(randomDiceeIndex2)")
    }
    
}

