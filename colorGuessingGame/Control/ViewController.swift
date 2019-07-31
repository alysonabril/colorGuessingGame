//
//  ViewController.swift
//  colorGuessingGame
//
//  Created by Alyson Abril on 7/30/19.
//  Copyright © 2019 Alyson Abril. All rights reserved.
//

import UIKit
//var randomCGNum = CGFloat.random(in: 0...1)
//var currentColor: UIColor

func getNewColor() -> UIColor {
    let randomCGNum = CGFloat.random(in: 0...1)
    let randomColor = UIColor(red: randomCGNum, green: randomCGNum, blue: randomCGNum, alpha: randomCGNum)
    return randomColor
}

class ViewController: UIViewController {
    
    //elements that will be changing
    
    @IBOutlet weak var currentScoreIntLabel: UILabel!
    @IBOutlet weak var highScoreIntLabel: UILabel!
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var gameStatusLabel: UILabel!
    @IBOutlet weak var newGameLabel: UILabel!
    
    
    var testRGBArray: [UIColor] = [.red, .green, .blue]
    

   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        colorView.backgroundColor = getNewColor()
    }

    @IBAction func colorGuessedButtonPressed (_ sender: UIButton) {
        colorView.backgroundColor = getNewColor()
    }
    
    
    
    
}

