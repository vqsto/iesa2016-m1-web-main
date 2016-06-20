//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// 23
class Shape {
    var sidesCount = 0
    func getInfo() -> String {
        return "A shape with \(sidesCount) sides."
    }
}

// 24
var shape = Shape()
shape.sidesCount = 7
var shapeDescription = shape.getInfo()

// 25
class NamedShape {
    var sidesCount: Int = 0
    var name: String
    init(name: String) { self.name = name }
    func getInfo() -> String { return "\(sidesCount) sides" }
}

var carre = NamedShape(name:"drapeau")

// 26
class Square : NamedShape {
    var sideLength: Double
    init(length: Double, name: String) {
        self.sideLength = length
        super.init(name: name)
        sidesCount = 4
    }
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func getInfo() -> String {
        return "Square: L\(sideLength)."
    }
}

let s = Square(length: 5.2, name: "myS")
s.area()
s.getInfo()





// Petit TP
class Personnage {
    var pouvoir: String
    init (pouvoir: String) { self.pouvoir = pouvoir }
    func manger() -> String { return "miam miam \(pouvoir)" }
}

class Humain : Personnage {
    var sexe: String
    init(sexe: String, pouvoir: String) {
        self.sexe = sexe
        super.init(pouvoir: pouvoir)
    }
    func Ecrire() -> String { return "Son sexe est \(sexe). Son pouvoir est \(pouvoir)" }
}

let p = Humain(sexe: "Féminin", pouvoir: "Magie")
p.Ecrire()
p.manger()


class Person {
    var name : String
    init (name: String) { self.name = name }
    
    func getName() -> String { return self.name }
    func setName(name : String) { self.name = name }
}

var romain = Person(name : "Romain")
romain.getName()
romain.setName("Axel")
romain.getName()



class EquilateralTriangle: NamedShape{
    var sideLength:Double = 0.0
    init(length: Double, name : String){
        self.sideLength = length
        super.init(name: name)
        sidesCount = 3
    }
    var perimeter: Double{
        get{
            return 3.0 * sideLength
        }
        set{
            sideLength = newValue/3.0
        }
        
    }
    

override func getInfo()->String{
    return "Length=\(sideLength)"
}}

var triangle = EquilateralTriangle(length: 3.1, name: "un triangle")

print(triangle)
triangle.perimeter = 9.9
print(triangle.sideLength)
// test


class Counter{
    var count: Int = 0
    func incrementBy(amount:Int, numberOfTimes times:Int){
        count += amount * times
    }
}

var counter = Counter ()
counter.incrementBy(2, numberOfTimes:7)

