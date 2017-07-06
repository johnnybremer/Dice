//
//  ViewController.swift
//  Dice
//
//  Created by Vamsi Kaza on 06/07/17.
//  Copyright © 2017 Sem1colon Inc. All rights reserved.
//

import UIKit

let diceArray : Array = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
var RandomIndex1 : Int = 0
var RandomIndex2 : Int = 0



class ViewController: UIViewController {

    @IBOutlet weak var DiceImage1: UIImageView!
    @IBOutlet weak var DiceImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonPresed(_ sender: Any) {
        
        updateDiceImages()
    }

    func updateDiceImages(){
        
        RandomIndex1 = Int(arc4random_uniform(6))
        RandomIndex2 = Int(arc4random_uniform(6))
        DiceImage1.image = UIImage(named: diceArray[RandomIndex1])
        DiceImage2.image = UIImage(named: diceArray[RandomIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        updateDiceImages()
    }
}

