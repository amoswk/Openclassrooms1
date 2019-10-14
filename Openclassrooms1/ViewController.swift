//
//  ViewController.swift
//  Openclassrooms1
//
//  Created by Amos Katz on 10/5/19.
//  Copyright © 2019 Amos Katz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//variables and outlets
    
let timeInterval = ["day", "year", "month"]

 
let questionsFuture : Array = ["Where do you see yourself in \(Int.random(in: 1 ... 10)) years?", "What is your dream travel destination?", "What would you like to improve about yourself?"]
    
let questionsPast : Array = ["What did you eat for dinner \(Int.random(in: 1 ... 10)) days ago?", "What is your favorite childhood memory?", "What do you miss most about being a kid?", "What do you think has changed the most since you were a kid?"]

    @IBOutlet weak var questionLabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
   
//actions
    
    @IBAction func buttonFuture(_ sender: Any) {
      let selectedFuture = Int(arc4random()) % questionsFuture.count
      let randomTimeCounter = Int.random(in: 1...10)
      var randomTimeInterval = timeInterval[Int.random(in: 0...timeInterval.count - 1)]
        if randomTimeCounter > 1 {
            randomTimeInterval = randomTimeInterval + "s"
        }
      let fullQuestionText = "\(questionsFuture[selectedFuture]) \(randomTimeCounter) \(randomTimeInterval)"
        print(questionsFuture[selectedFuture])
        questionLabel.text = fullQuestionText


    }
   @IBAction func buttonPast(_ sender: Any) {
       let selectedPast = Int(arc4random()) % questionsPast.count
        print(questionsPast[selectedPast])
    questionLabel.text = questionsPast[selectedPast]
      
    }
    
        func buttonNext(_ sender: Any) {
            
    }
        
    

}

