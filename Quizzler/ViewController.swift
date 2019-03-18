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
    var numberOfQuestions : Int {
        return allQuestions.list.endIndex
    }
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        let firstQuestion = allQuestions.list[0]
//        questionLabel.text = firstQuestion.questionText
        
        nextQuestion()
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
//        guard questionNumber <  allQuestions.list.endIndex-1 else {
//            print(" You done the last qeustion! ")
//            return
//        }
        questionNumber += 1
//        questionLabel.text = allQuestions.list[questionNumber].questionText
        
        nextQuestion()
        
    }
    
    
    func updateUI() {
      
        progressLabel.text = "\(questionNumber+1)/\(numberOfQuestions)"
        scoreLabel.text = "Score: \(score)"
        
        progressBar.frame.size.width = (view.frame.size.width / CGFloat(numberOfQuestions)) * CGFloat(questionNumber+1)
    }
    

    func nextQuestion() {
        //        if questionNumber <= 12 {
        if questionNumber <= numberOfQuestions-1 {
            
            questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
        }
        else {
            print("end of Quiz")
            Helper.myAlert(myVC: self)
            
            //            questionNumber = 0
        }
    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
            print("You got it!")
            score += 1
        } else {
            print("Wrong!")
            score -= 1
        }
    }
    
    
    func startOver() {
        questionNumber = 0
        score = 0
        nextQuestion()
    }
    

    
}
