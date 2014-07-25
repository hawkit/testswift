//
//  Shape.swift
//  testswift
//
//  Created by tangdou on 14-6-27.
//  Copyright (c) 2014年 tangdou. All rights reserved.
//

import Foundation


func repeatItem<ItemType>(item:ItemType, count:Int) -> ItemType[]{
    var result  = ItemType[]();
    for i in  0..count{
        result +=  item
    }
    return result;
}

enum OptionalValue<T>{
    case None
    case Some(T)
}

func swapData(inout a:Int, inout b:Int){
    let tmp = a
    a = b
    b = tmp
}

func  addTowInts(a:Int, b:Int) -> Int{
    return a + b;
}

func mutplyTwoInts(a:Int, b:Int) ->Int{
    return a*b;
}

func testit(){
 
    var testvar:OptionalValue<Int> = .None;
    testvar = .Some(100)
    println("testvar = \(testvar)")
    
    let possibleString: String? = "yes "
    println(possibleString)
    assert( possibleString != nil,"must't nil");
    
    let (x,y) = (1,2);
    
    let yen:Character = "Y"
    println(yen)
    
    let dogString = "Dog!🐶"
    
    for ch in dogString.utf16 {
        println(ch)
    }
    
    for ch in dogString.utf8 {
        println(ch)
    }
    
    for ch in dogString.unicodeScalars {
        println(ch)
    }
    
    var items = ["hi","how are you","good","yeah"]
    for (index, item) in enumerate(items){
        
        println("index = \(index) item = \(item)")
    }
    
    var bouldes = Double[](count:10,repeatedValue:0.0);
    
    var arry = Array(count:10, repeatedValue:0.2);
    
    var airPorts:Dictionary<String, String> = ["BJ":"Bei Jing",  "GX":"Guangxi"];
    
    if let air = airPorts["GL"] {
        println("air \(air)")
    }
    else {
        println("no air")
    }
    
    if var air = airPorts["BJ"] {
        println("air \(air)")
    }
    else {
        println("no air")
    }
    
    for (code, name) in airPorts {
        
        println("\(code) + \(name)")
    }
    
    let newAirPorts = ["BJ":"Beijing", "GL":"Guilin"];
    
   // newAirPorts["BJ"] = "w";
    
    var result:String?
    var counter:Int = 0
    for _ in 0..newAirPorts.count {
        counter++;
        
    }
    
    let anotherCharacter: Character = "a"
    switch anotherCharacter {
    case "a",
     "A":
        println("The letter A")
    default:
        println("Not the letter A")
    }
    
    var count = 1_000_000
    switch count{
    case 1...9:
            println("sigle number")
    case 10 ... 100:
            println("double number")
    case 101 ... 1000:
        println("double number")
    case 10001 ... 10000:
        println("double number")
    case 100001 ... 1_000_000:
        println("double number")
    default:
        println("More")
        
    }
    
    var data1:Int = 10;
    var data2:Int = 12;
    swapData(&data1, &data2)
    println("data1 = \(data1) data2 = \(data2)")
    
    var addFunc:(Int,Int)->Int = addTowInts
    
    var sum = addFunc(1,2)
    println(sum)
    
    var names=["add","tddd","nOm","a2dd"]
    func backwards(s1: String, s2: String) -> Bool {
        return s1 > s2
    }
    var reversed = sort(names, backwards)
    println(reversed)
}

//func haveAnyCommanElement<T,U where  T:Sequence, U:Sequence, T.GeneratorType.Element:Equatable, T.GeneratorType.Element==U.GeneratorType.Element>(lft: T, rht:U) -> T.GeneratorType[]{
//    var result = T.GeneratorType.Element[]()
//    for item  in lft{
//        
//        for itemr in rht{
//            
//            if( item == itemr){
//                result += item;
//            }
//            
//        }
//    }
//    return result;
//}

class  Shape
{
    var numberOfSides = 0
    var name:String
    
    init(name:String){
    
        self.name = name;
        
        var result = repeatItem("yes", 10)
        println(result)
        
        testit()
        
//        var result2 = haveAnyCommanElement([1,2,3,4],[2,3]);
//        println(result2)
    }
    
    func  description () -> String{
        return "name = \(name) numberOfSides = \(numberOfSides)"
    }
    
    var readyonlyVar:String{
    return "Nice Day"
    }
    
    var myAge:Int = 10
    
    var age:Int{
    
    get{
        return myAge
    }
    set {
        myAge = newValue
    }
    }
    
}

class Square : Shape {
    
    var sideLength:Double = 0
    
    init(sideLength:Double, name:String){
        
        super.init(name:name)
        self.sideLength = sideLength
        numberOfSides = 4
    }
    
    override func description() -> String {
        return "Saure : \(name) sideCount = \(numberOfSides) sideLength = \(sideLength)"
    }
    
    func  increaseSideLength(len: Double,  factor myfactor: Double) {
        
        sideLength = len * myfactor;
    }
    
    var length:Double{
    
    get{
        return  sideLength*4;
    }
    
    set {
        sideLength = newValue/4;
    }
    
    }
}

