//
//  AppDelegate.swift
//  testswift
//
//  Created by tangdou on 14-6-27.
//  Copyright (c) 2014年 tangdou. All rights reserved.
//

import UIKit

func makeIncrementer() -> (Int -> Int) {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}


func sayHello(name:String, words:String) -> String{
    
    return "Hi, My good friend: \(name) \(words)"
}

func sumOfNumbs(numbers:Int...) -> Int{
    var retSum = 0
    for num in numbers{
        retSum += num
    }
    return retSum;
}

//    func hasAnyMatches(list: Int[], condition: Int -> Bool) -> Bool {
//        for item in list {
//            if condition(item) {
//                return true
//            }
//        }
//        return false
//    }
//
//    func lessThanTen(number: Int) -> Bool {
//        return number < 10
//    }

    func hasAnyMatch(items:Int[], condition: Int -> Bool) -> Bool{

        for  item in items {

            if condition(item){
                return true;
            }
        }
        return false;
    }

    func greatThan(num:Int) -> Bool {
        return num > 100;
    }

func testRun () {
    var hi = sayHello("Jams", "Good")
    println("hi = \(hi)");
    
    var sum = sumOfNumbs(1,3,3,5)
    println("sum = \(sum)");
    
    var items = [1,3,101,3,2];
    var has:Bool = hasAnyMatch(items, greatThan);
    println("has match = \(has)");
    
    var inc = makeIncrementer();
    
    var val = inc(8);
    println("value = \(val)")
    
   var newitems = items.map({
        (number: Int) -> Int in
    if (number%2) == 1 { return number-1;} else {return number+1;}
        })
    println(newitems);
    
    var sorteditems = sort([1, 5, 3, 12, 2]) { $0 < $1 }
    println(sorteditems);
    
}



func testBasic() {
    
    println("hello world")
    
    let myname:String = "terry";
    var age:Float = 1;
    println(myname);
    println(age);
    age++;
    println(age);
    
    let  year: Int = 2014;
    println(year);
    //year += 10;
    //println(year);
    
    let  info =  myname + String(age);
    println(info);
    
    let hello = "hello +\(age)";
    println(hello);
    
    var  name2age:NSDictionary = ["terry":10, "dou":20];
    println(name2age["terry"]);
    
    var names = ["terry","don","wok"];
    
    names[0] = "beos";
    println(names[0]);
    
    var emptyarray:Array = String[]();
    var emptyDictionay:Dictionary = Dictionary<String, Float>();
    
    emptyDictionay["name"] = 1;
    
    println(emptyDictionay);
    
    
    let  days = [1,3,4,20,1];
    var totalDay = 0;
    for day in days {
        
        if day > 5 {
            totalDay += day;
        }
        else {
            totalDay += day*2;
        }
        
    }
    println("total day = " + String(totalDay));
    
    
    //
    var optionalName:String? = nil;
    var greeting = "hello!"
    if let name = optionalName {
        greeting = "hello  \(name)"
        
        println(greeting);
    }
    //switch
    
    var name = "mis Jho";
    
    switch name {
    case "Mr Hi":
        println("good boy")
    case "Mis Jho","Mis Low":
        println("bad lady")
    default:
        println("Unknow man")
    }
    
    //enum dictionay
    let  scores = ["terry":[100,99,89,200],
        "biber":[1,2,3,4],
        "Gaga":[20,20,29] ];
    
    var min = 0;
    for (kind , scorenumbs) in scores {
        
        println("name = \(kind)");
        for num in scorenumbs {
            
            println("score = \(num)");
            if num > min{
                min = num;
            }
        }
    }
    println("max = " + String(min));
    
    
    var n = 2;
    
    while n < 100
    {
        n *= 2;
    }
    
    println("n = \(n)");
    
    n = 2;
    do
    {
        n *= 2;
    } while n < 100
    
    println("n = \(n)");
    
    var k = 0
    let count = 100;
    for  i in 0..count{
        
        k += i
    }
    println(k);
    
}



@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: NSDictionary?) -> Bool {
        // Override point for customization after application launch.
        testRun();
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

  
}

