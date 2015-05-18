//
//  manu.swift
//  Lotto
//
//  Created by David Kranz on 18.05.15.
//  Copyright (c) 2015 LOL. All rights reserved.
//

import Cocoa

class manu: NSView {
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
    @IBOutlet weak var item1: NSTextField!
    @IBOutlet weak var item2: NSTextField!
    @IBOutlet weak var item3: NSTextField!
    @IBOutlet weak var item4: NSTextField!
    @IBOutlet weak var item5: NSTextField!
    @IBOutlet weak var item6: NSTextField!
    
    @IBAction func auswerten(sender: AnyObject) {
        var auto = getnum()
        var manu = [item1.integerValue,item2.integerValue,item3.integerValue,item4.integerValue,item5.integerValue,item6.integerValue]
        for i in auto {
            if contains(manu, Int(i as! NSNumber)){
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
