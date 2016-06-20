//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playgroundddd"

class Shape {
    var sidesCount = 0
    func getInfo() ->String{
        return "A shape with \(sidesCount) sides"
    }
}

var shape = Shape()

class NamedShape{
    var sidesCount: Int = 0
    var name: String
    init(name:String){self.name = name}
    func getInfo() -> String {return "sides" }
}

var carre = NamedShape(name : "drapeau")