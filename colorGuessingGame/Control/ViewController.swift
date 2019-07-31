//
//  ViewController.swift
//  colorGuessingGame
//
//  Created by Alyson Abril on 7/30/19.
//  Copyright © 2019 Alyson Abril. All rights reserved.
//

import UIKit



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
        colorView.backgroundColor = UIColor.getNewColor()
    }

    @IBAction func colorGuessedButtonPressed (_ sender: UIButton) {
        //test to ensure color changing func in model works
        colorView.backgroundColor = UIColor.getNewColor()
    }
    
    
    
    
}

extension UIColor {
    static func getNewColor() -> UIColor {
        let randomCGNum = CGFloat.random(in: 0...1)
        let red = randomCGNum
        let blue = randomCGNum
        let green = randomCGNum
        let randomColor = UIColor(displayP3Red: red, green: green, blue: blue, alpha: 1)
        return randomColor
    }
}
