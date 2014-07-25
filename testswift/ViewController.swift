//
//  ViewController.swift
//  testswift
//
//  Created by tangdou on 14-6-27.
//  Copyright (c) 2014年 tangdou. All rights reserved.
//

import UIKit


enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten
    case Jack, Queen, King
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.toRaw())
        }
    }
}

enum StickerType: Int{
    case kSticker_type_love = 1
    case kSticker_type_hi,kSticker_type_good,kSticker_type_day
}

protocol  SimpleProtocol {
    
    var simpleDescription: String {get};
    mutating func adjust();
}

class SimpleClass : SimpleProtocol{
    
    var simpleDescription:String = "Simple class"
    
    func adjust () {
        simpleDescription += "Good"
    }
}

struct SimpleStuct : SimpleProtocol{
    
    var simpleDescription:String = "Simple struct"
    
    mutating func adjust(){
        simpleDescription += "Yes"
    }
}


enum SimpleEnum2:Int,SimpleProtocol {
    
    case First = 1
    case Two
    
    var simpleDescription:String {
    
    get {
        return "Simple enum";
    }
    }
    
    mutating func adjust(){
       
    }
}


extension Int : SimpleProtocol{

var simpleDescription:String {
    
    get {
        return "num \(self)";
    }
    }
    
    mutating func adjust(){
       self += 1;
    }
}

struct Point {
    var x = 0.0, y = 0.0
     mutating func moveByX(deltaX: Double, y deltaY: Double) {
        x += deltaX
        y += deltaY
    }
    static func description() ->String{
        return "Point"
    }
    
   
}

@infix func +(op1:Point, op2:Point) ->Point{
    return  Point(x:op1.x+op2.x,y:op1.y+op2.y)
}

struct Color {
    let red = 0.0, green = 0.0, blue = 0.0
    init(red: Double, green: Double, blue: Double) {
        self.red   = red
        self.green = green
        self.blue  = blue
    }
}

class Movie{
    
    var name:String?
    var director:String?
    
    init(name:String, director:String){
        
        self.name = name
        self.director = director
    }
    
}

struct BlackjackCard {
    
    // nested Suit enumeration
    enum Suit: Character {
        case Spades = "♠", Hearts = "♡", Diamonds = "♢", Clubs = "♣"
    }
    
    // nested Rank enumeration
    enum Rank: Int {
        case Two = 2, Three, Four, Five, Six, Seven, Eight, Nine, Ten
        case Jack, Queen, King, Ace
        struct Values {
            let first: Int, second: Int?
        }
        var values: Values {
        switch self {
        case .Ace:
            return Values(first: 1, second: 11)
        case .Jack, .Queen, .King:
            return Values(first: 10, second: nil)
        default:
            return Values(first: self.toRaw(), second: nil)
            }
        }
    }
    
    // BlackjackCard properties and methods
    let rank: Rank, suit: Suit
    var description: String {
    var output = "suit is \(suit.toRaw()),"
        output += " value is \(rank.values.first)"
        if let second = rank.values.second {
            output += " or \(second)"
        }
        return output
    }
}

extension Double{
    var km: Double { return self * 1_000.0 }
    var m: Double { return self }
    var cm: Double { return self / 100.0 }
    var mm: Double { return self / 1_000.0 }
    var ft: Double { return self / 3.28084 }
}

struct Size {
    var width = 0.0, height = 0.0
}
//struct Point {
//    var x = 0.0, y = 0.0
//}
struct Rect {
    var origin = Point()
    var size = Size()
}

extension Rect {
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2)
        let originY = center.y - (size.height / 2)
        self.init(origin: Point(x: originX, y: originY), size: size)
    }
}

extension Int {
    func repetitions(task: () -> ()) {
        for i in 0..self {
            task()
        }
    }
}

extension Int {
    mutating func square() {
        self = self * self
    }
}

extension Int {
    subscript(digitIndex: Int) -> Int {
        var decimalBase = 1
            for _ in 1...digitIndex {
                decimalBase *= 10
            }
            return (self / decimalBase) % 10
    }
}

extension Character {
    enum Kind {
        case Vowel, Consonant, Other
    }
    var kind: Kind {
    switch String(self).lowercaseString {
    case "a", "e", "i", "o", "u":
        return .Vowel
    case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
    "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
        return .Consonant
    default:
        return .Other
        }
    }
}

func findIndex<T:Equatable>(array: T[], valueToFind: T) -> Int? {
    for (index, value) in enumerate(array) {
        if value == valueToFind {
            return index
        }
    }
    return nil
}

@objc protocol CounterDataSource {
    @optional func incrementForCount(count: Int) -> Int
    @optional var fixedIncrement: Int { get }
}

@assignment func += (inout left: Point, right: Point) {
    left = left + right
}

class ViewController: UIViewController {
    
    class func simpeFlagName()->String{
        return "ViewController"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //NSExtensionContext *myExtensionContext = [self extensionContext];
       // [self beginRequestWithExtensionContext(context:nil)];
        var  aShape  = Shape(name:"good");
        println(aShape.description())
        
        println(aShape.myAge);
        println(aShape.readyonlyVar)

        
        var aSqure = Square(sideLength:10, name:"best")
        println(aSqure.description());
        
        aSqure.length = 1;
        println(aSqure.description())
        
        aSqure.length = 4;
        println(aSqure.description())
        
        aSqure.increaseSideLength(10, factor:0.2);
        
        println(aSqure.description())
        
        let ace = Rank.Ace;
        println(ace);
        let aceraw = ace.toRaw()
        println("raw value = \(aceraw)")
        println(ace.simpleDescription())
        
        let type = StickerType.kSticker_type_love
        println(type);

        var en = SimpleEnum2.First
        println(en.simpleDescription);

        println(10.simpleDescription);
        
        println("################\n\n\n\n")
        var pt:Point = Point(x:1.0, y:2.0)
        println("pt(\(pt.x), \(pt.y))");
        
        println(Point.description())
        println(ViewController.simpeFlagName())
        
        //var col = Color(_:1.0,_:1.0,_:1.0)
        
        
        var things = Any[]()
        
        things.append(0)
        things.append(0.0)
        things.append(42)
        things.append(3.14159)
        things.append("hello")
        things.append((3.0, 5.0))
        things.append(Movie(name: "Ghostbusters", director: "Ivan Reitman"))
        
        for thing in things {
            
            switch thing{
                
            case 0 as Int:
                println("is int zero")
            case 0 as Double:
                println("is double zero")
            case let someInt as Int:
                println("int value \(someInt)")
            case let someMovie as Movie:
                println("move aobject \(someMovie.name) \(someMovie.director)")
                
                default:
                println(thing)
            }
        }
        
        
        let theAceOfSpades = BlackjackCard(rank: .Ace, suit: .Spades)
        println("theAceOfSpades: \(theAceOfSpades.description)")
        
        
        var double:Double = 20.0
        println("km = \(double.km) 1 = \(1.0.cm)")
        
        2.repetitions({println("hello")})
        
        3.repetitions{println("good")}
        
        var d = 3
        d.square()
        println(d)
        
        let x = 1
        let y = x &/ 0
        
        var p1:Point
        var p2:Point;
        p1 = Point(x:1.0, y:2.0)
        p2 = Point(x:1.1, y:3.0)
        var p = p1 + p2
        println(p)
        println("################\n\n\n\n")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

