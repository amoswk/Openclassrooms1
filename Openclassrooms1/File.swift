//
//  File.swift
//  Openclassrooms1
//
//  Created by Amos Katz on 10/5/19.
//  Copyright © 2019 Amos Katz. All rights reserved.
//

import Foundation

let questionsFuture : Array = ["Where do you see yourself in 5 years?", "Where do you see yourself in 10 years?", "What is your dream travel destination?", "What would you like to improve about yourself?"]

let questionsPast : Array = ["What did you eat for dinner 3 days ago?", "What is your favorite childhood memory?", "What do you miss most about being a kid?", "What do you think has changed the most since you were a kid?"]

let randomFuture = questionsFuture[Int(arc4random_uniform(UInt32(questionsFuture.count)))]
let randomPast = questionsPast[Int(arc4random_uniform(UInt32(questionsPast.count)))]
