//
//  ViewController.swift
//  colorGuessingGame
//
//  Created by Alyson Abril on 7/30/19.
//  Copyright © 2019 Alyson Abril. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let model = ColorModel()
    
    //elements that will be changing
    
    @IBOutlet weak var currentScoreIntLabel: UILabel!
    @IBOutlet weak var highScoreIntLabel: UILabel!
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redButton: UIButton!
    @IBOutlet weak var greenButton: UIButton!
    @IBOutlet weak var blueButton: UIButton!
    @IBOutlet weak var gameStatusLabel: UILabel!
    @IBOutlet weak var newGameLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        colorView.backgroundColor = model.colorObject.color
    }
    
    @IBAction func colorGuessedButtonPressed (_ sender: UIButton) {
        
    }
    
    
    
    
}

