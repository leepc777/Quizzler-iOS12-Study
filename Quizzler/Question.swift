//
//  Question.swift
//  Quizzler
//
//  Created by sam on 3/17/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

//Foundation is lighter than UIkit. Good for basic things
import Foundation

// method is a function associated with class
class Question {
    
    let questionText : String
    let answer : Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}


class subQuestion : Question {
    var note : String = "no note"
    convenience init(text: String, correctAnswer: Bool, note:String){
//        self.questionText = text
//        self.answer = correctAnswer
        self.init(text: text, correctAnswer: correctAnswer)
        self.note = note
    }
       
}

class myOtherClass {
    let question = Question(text: "what is the meaing of life?", correctAnswer: true)
    let aSubQuestion = subQuestion(text: "test sub", correctAnswer: true)
    let aSubQuestion2 = subQuestion(text: "test sub2", correctAnswer: true, note:"this is a test")

}

