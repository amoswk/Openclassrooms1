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
    
    let player = ["One","Two", "Three", "Four", "Five", "Six"].shuffled()
    
    var playerIndex = 0
    
    let maximumTimeCounter = 10
    
    
    let questionsFuture : Array = ["Where do you see yourself in", "Where do you want to travel in", "What would you like to improve about yourself within"]
    
    let questionsPast : Array = ["What is the best thing you have eaten in the past", "What is your favorite childhood memory from the past", "What changed the most in the past"]
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var pastButton: UIButton!
    @IBOutlet weak var futureButton: UIButton!
    @IBOutlet weak var whosNextButton: UIButton!
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        whosNextButton.isHidden = true
        questionLabel.text = player[playerIndex]
        
    
        
    }
    func toggleButtons() {
        pastButton.isHidden = !pastButton.isHidden
   
        futureButton.isHidden = !futureButton.isHidden
      
        whosNextButton.isHidden = !whosNextButton.isHidden
  
      
        
    }
    func makeQuestion(questionList: [String]) -> String {
        let selectedQuestionIndex = Int(arc4random()) % questionList.count
        let randomTimeCounter = Int.random(in: 1...maximumTimeCounter)
        var randomTimeInterval = timeInterval[Int.random(in: 0...timeInterval.count - 1)]
        if randomTimeCounter > 1 {
            randomTimeInterval = randomTimeInterval + "s"
        }
        let fullQuestionText = "\(questionList[selectedQuestionIndex]) \(randomTimeCounter) \(randomTimeInterval)?"
        return fullQuestionText
    }
    
    //actions
    
    
    
    @IBAction func buttonFuture(_ sender: Any) {
        
        questionLabel.text = makeQuestion(questionList: questionsFuture)

        toggleButtons()
        
    }
    @IBAction func buttonPast(_ sender: Any) {
       
        
        questionLabel.text = makeQuestion(questionList: questionsPast)
        
        toggleButtons()
        
    }
    
    @IBAction  func buttonNext(_ sender: Any) {
        
        if playerIndex > player.count - 1 {
            playerIndex = 0
        }
        
        let playerText = player[playerIndex]
        playerIndex = playerIndex + 1
        print(playerText)
        
        toggleButtons()
        
        
        
    }
    
}





