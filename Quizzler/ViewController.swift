//
//  ViewController.swift
//  Quizzler
//
//  Created by Angela Yu on 25/08/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstQuestion = allQuestions.list[0]
        questionLabel.text = firstQuestion.questionText
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
        switch sender.tag {
        case 1:
            pickedAnswer = true
        default:
            pickedAnswer = false
        }
        
        checkAnswer()
        
        // stop when reaching last question
        guard questionNumber <  allQuestions.list.endIndex-1 else {
            print(" You done the last qeustion! ")
            return

        }
        questionNumber += 1
        questionLabel.text = allQuestions.list[questionNumber].questionText
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
        
    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
            print("You got it!")
        } else {
            print("Wrong!")
        }
    }
    
    
    func startOver() {
       
    }
    

    
}
