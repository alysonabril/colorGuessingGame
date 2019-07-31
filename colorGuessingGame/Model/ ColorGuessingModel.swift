//
//   ColorGuessingModel.swift
//  colorGuessingGame
//
//  Created by Alyson Abril on 7/30/19.
//  Copyright © 2019 Alyson Abril. All rights reserved.
//

import UIKit

//class ColorGuessingModel {    
//    
//    var randomCGNum = CGFloat.random(in: 0...1)
//    var currentColor = UIColor.getNewColor()
//    
//   
//    
//   
//    
//    
//}

extension UIColor {
    static func getNewColor() -> UIColor {
        // let randomCGNum = CGFloat.random(in: 0...1)
        let red = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let randomColor = UIColor(displayP3Red: red, green: green, blue: blue, alpha: 1)
        return randomColor
    }
}


