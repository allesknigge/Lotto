//
//  manu.swift
//  Lotto
//
//  Created by David Kranz on 18.05.15.
//  Copyright (c) 2015 LOL. All rights reserved.
//

import Cocoa

class manu: NSView {
    func pruefe(a: NSArray, m: NSArray) ->Int{
        var count = 0
        for i in a {
            for kl in m {
                if(kl===i){
                    count = count + 1
                    println(count)
                }
            }
        }
        return count
    }

    func getnum() ->NSArray{
        var arr = [Int]()
        for i in 1...6{
            var h = false
            var randominteger = arc4random_uniform(49)
            while(randominteger == 0){
            randominteger = arc4random_uniform(49)
            }
            if contains(arr, Int(randominteger)) {
                randominteger = arc4random_uniform(49)
            }
            arr.append(Int(randominteger))
        }
        return arr
    }

    @IBOutlet weak var gew: NSTextField!
    @IBOutlet weak var anz: NSTextField!
    @IBOutlet weak var item1: NSTextField!
    @IBOutlet weak var item2: NSTextField!
    @IBOutlet weak var item3: NSTextField!
    @IBOutlet weak var item4: NSTextField!
    @IBOutlet weak var item5: NSTextField!
    @IBOutlet weak var item6: NSTextField!
    
    @IBAction func auswerten(sender: AnyObject) {
        var autos = getnum()
        var manu = [item1.integerValue,item2.integerValue,item3.integerValue,item4.integerValue,item5.integerValue,item6.integerValue]
       var p = pruefe(autos,m: manu)
            println(autos)
            var z:String = autos.description
          z =  z.stringByReplacingOccurrencesOfString("(", withString: "")
          z =  z.stringByReplacingOccurrencesOfString(")", withString: "")
          z =  z.stringByReplacingOccurrencesOfString("\n", withString: "")
            gew.stringValue = z
            anz.integerValue = Int(p)
        }

    }


