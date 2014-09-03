//  main.swift
//  palidrome
//
//  Created by Frederick C. Lee on 9/2/14.
//  Copyright (c) 2014 Amourine Technologies. All rights reserved.
// -----------------------------------------------------------------------------------------------------------------------

import Foundation

println("Palindrome: A word that is same either backwards or forwards spelling; e.g., 'Bob'")
println("Enter a word that you think is a Palidrome: ")

let myData:NSData = NSFileHandle.fileHandleWithStandardInput().availableData
let str:NSString? = NSString(data: myData, encoding: NSUTF8StringEncoding)

let middleIndex = str!.length/2
var x:Int = 0
var y:Int = str!.length - 2  // ...ignore carriage return character and set for zero (0) based index.

let substr = str!.substringWithRange(NSRange(location: 1,length: 1))
var matched:Bool = false

do {
    let leftChar = str!.substringWithRange(NSRange(location: x++,length: 1))
    let rightChar = str!.substringWithRange(NSRange(location: y--,length: 1))
    matched = (leftChar == rightChar)
} while x == middleIndex

if matched {
    print("\n\(str!) is a Palidrome!\n\n")
} else {
    print("\n\(str!) is *NOT* a Paladrome.\n\n")
}

