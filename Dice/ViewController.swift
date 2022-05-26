//
//  ViewController.swift
//  Dice
//
//  Created by Negin Zahedi on 2022-05-24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var DiceOne: UIImageView!
    @IBOutlet weak var DiceTwo: UIImageView!
    
    //An array holds diceOne to DiceSix images
    let dicesArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DiceOne.isHidden = true;
        DiceTwo.isHidden = true;

    }
    
    //    assign dices randomly
    @IBAction func throwDice(_ sender: Any) {
        DiceOne.isHidden = false;
        DiceTwo.isHidden = false;
        DiceOne.image = dicesArray.randomElement()
        DiceTwo.image = dicesArray.randomElement()
    }
    
    
}

