//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //making the connection with the two imageView of the dices
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //well doing nothing here after the viewLoad
    }


    @IBAction func rollBtn(_ sender: UIButton) {
        //storing all the imageLiteral in an array
        let diceArray = [#imageLiteral(resourceName: "DiceOne") ,#imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]
        diceImage1.image = diceArray.randomElement()    //getting an random image from the array
        diceImage2.image = diceArray[Int.random(in: 0...5)]   //getting an random image from the array
        
    
    }
}

