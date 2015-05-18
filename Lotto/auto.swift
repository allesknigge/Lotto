//
//  auto.swift
//  Lotto
//
//  Created by David Kranz on 18.05.15.
//  Copyright (c) 2015 LOL. All rights reserved.
//

import Cocoa

class auto: NSView {
    var count = 0
    func getnum() ->NSArray{
        var arr = [Int]()
        for i in 1...6{
            var h = false
            var randominteger = arc4random_uniform(49)
            if contains(arr, Int(randominteger)) {
                randominteger = arc4random_uniform(49)
            }
            arr.append(Int(randominteger))
        }
        return arr
    }

    @IBOutlet weak var anz: NSTextField!
    @IBAction func go(sender: AnyObject) {
        var auto = getnum()
        var manu = getnum()
        for i in auto {
            if manu.containsObject(i){
                count = count + 1
                println(count)
                
            }
            anz.integerValue = count
            count = 0
        }

    }
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)

        // Drawing code here.
    }
    
}
