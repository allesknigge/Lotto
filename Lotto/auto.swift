//
//  auto.swift
//  Lotto
//
//  Created by David "Programming legend" Kranz on 18.05.15.
//  Copyright (c) 2015 LOL. All rights reserved.
//

import Cocoa

class auto: NSView {
    
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
            var randominteger = arc4random_uniform(49)
            while (randominteger == 0){
                randominteger = arc4random_uniform(49)
            }
            while contains(arr, Int(randominteger)) {
                println(randominteger)
                randominteger = arc4random_uniform(49)
                while (randominteger == 0){
                    randominteger = arc4random_uniform(49)
                }
            }
            arr.append(Int(randominteger))
        }
        return arr
    }

    @IBOutlet weak var dz: NSTextField!
    @IBOutlet weak var gewin: NSTextField!
    @IBOutlet weak var anz: NSTextField!
    @IBAction func go(sender: AnyObject) {
        anz.integerValue = 0
        var autos = getnum()
        var manu = getnum()
        var p = pruefe(autos,m: manu)
                    var z:String = autos.description
            z =  z.stringByReplacingOccurrencesOfString("(", withString: "")
            z =  z.stringByReplacingOccurrencesOfString(")", withString: "")
            z =  z.stringByReplacingOccurrencesOfString("\n", withString: "")
            gewin.stringValue = z
            var h:String = manu.description
            h =  h.stringByReplacingOccurrencesOfString("(", withString: "")
            h =  h.stringByReplacingOccurrencesOfString(")", withString: "")
            h =  h.stringByReplacingOccurrencesOfString("\n", withString: "")
            dz.stringValue = h
            anz.integerValue = Int(p)
        }
    }

