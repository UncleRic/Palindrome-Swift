//  main.swift
//  palidrome
//
//  Created by Frederick C. Lee on 9/2/14.
//  Copyright (c) 2014 Amourine Technologies. All rights reserved.
// -----------------------------------------------------------------------------------------------------------------------

import Foundation

var str:NSString?
var matched:Bool

do {
    println("Palindrome: A word that is same either backwards or forwards spelling; e.g., 'Bob'")
    println("Enter a word that you think is a Palidrome (enter nothing to exit): ")
    
    let myData:NSData = NSFileHandle.fileHandleWithStandardInput().availableData
    str = NSString(data: myData, encoding: NSUTF8StringEncoding)
    
    matched = false
    
    if str!.length > 1 {
        let middleIndex = str!.length/2
        var x:Int = 0
        var y:Int = str!.length - 2  // ...ignore carriage return character and set for zero (0) based index.
        
        let substr = str!.substringWithRange(NSRange(location: 1,length: 1))
        
        do {
            let leftChar = str!.substringWithRange(NSRange(location: x++,length: 1))
            let rightChar = str!.substringWithRange(NSRange(location: y--,length: 1))
            matched = (leftChar == rightChar)
            if !matched {
                break
            }
        } while x != middleIndex
        
        if matched {
            println("...is a palindrome.\n\n")
        } else {
            println("...is *NOT* a palindrome.\n\n")
        }
    }
} while (str!.length > 1)

println("La Fin.")

