import UIKit

class ColorModel {
    let colorObject: ColorObject
    
    init(colorObject: ColorObject = getNewColor()) {
        self.colorObject = colorObject
    }
    
    static func getNewColor() -> ColorObject {
        let alpha: CGFloat = 1
        let red = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let randomColor = UIColor(displayP3Red: red, green: green, blue: blue, alpha: alpha)
        return ColorObject(color: randomColor, red: red, green: green, blue: blue)
    }
    
    func isDominant(object: ColorObject) -> UIColor {
        let red = object.red
        let blue = object.blue
        let green = object.green
        var dominantColor: UIColor
        
        if max(red, green, blue) == red {
            dominantColor = .red
        } else if max(red, green, blue) == green {
            dominantColor = .green
        } else {
            dominantColor = .blue
        }
        return dominantColor
    }
    
    func validateAnswer(object: ColorObject, sender: UIButton) -> Bool {
        let dominantColor = isDominant(object: object)
        var isCorrect = Bool()
        var myGuess: UIColor
        switch sender.tag {
            case 0:
                myGuess = .red
            case 1:
                myGuess = .green
            case 2:
                myGuess = .blue
            default:
                myGuess = .clear
        }
        
        if myGuess == dominantColor {
            isCorrect = true
        } else {
            isCorrect = false
        }
        
        return isCorrect
    }
}
