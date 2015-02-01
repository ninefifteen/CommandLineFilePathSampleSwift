//
//  main.swift
//  CommandLineFilePathSampleSwift
//
//  Created by Shawn Seals on 2/1/15.
//  Copyright (c) 2015 Shawn Seals. All rights reserved.
//
//  Run: ./CommandLineFilePathSampleSwift Arg1 Arg2 Arg3...
//

import Foundation

//*********************************************************************
//  Read command line arguments method 1.
//*********************************************************************

let arguments = NSProcessInfo.processInfo().arguments
for (index, argument) in enumerate(arguments) {
    println("\(index): \(argument)")
}

//*********************************************************************



//*********************************************************************
//  Read command line arguments method 2.
//*********************************************************************

let argumentCount = C_ARGC
println("argumentCount: \(argumentCount)")

for var index = 0; index < Int(argumentCount); index++ {
    let argument = String.fromCString(C_ARGV[index])
    println("C_ARGV[\(index)]: \(argument)")
}

//*********************************************************************



//*********************************************************************
//  currentDirectoryPath returns home directory.
//*********************************************************************

let fileManager = NSFileManager()
let currentPath = fileManager.currentDirectoryPath
println("currentPath: \(currentPath)")

//*********************************************************************



//*********************************************************************
//  bundlePath returns directory in which app is located.
//*********************************************************************

let appPath = NSBundle.mainBundle().bundlePath
println("appPath: \(appPath)")

//*********************************************************************