import UIKit

class ColorModel {
    //here we call the struct ColorObject and initialize it within the class ColorModel
    let colorObject: ColorObject
    
    //here we set the ColorObject to the function getNewColor()
    //when we initialize the class in the viewDidLoad in the ViewController we call the class, then the inititalized struct within the class, and call on it's property color
    init(colorObject: ColorObject = getNewColor()) {
        self.colorObject = colorObject
    }
    
    //we make the function static so we make a reference of the function
    //without making the function static it requires a parameter, this defeats the functions purpose, therefore we make it static so it cannot be overridden.  It is what it is.
    //func getNewColor is used to randomize UIColor
    static func getNewColor() -> ColorObject {
        let alpha: CGFloat = 1
        let red = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let randomColor = UIColor(displayP3Red: red, green: green, blue: blue, alpha: alpha)
       
        return ColorObject(color: randomColor, red: red, green: green, blue: blue)
    }
    
    //this function is taking in the struct ColorObject and returning a UIColor
    func isDominant(object: ColorObject) -> UIColor {
        //here we initialize the properties of the struct
        let red = object.red
        let blue = object.blue
        let green = object.green
        //this is the variable we will return
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
