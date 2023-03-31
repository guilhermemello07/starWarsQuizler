//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Guilherme Mello on 29/03/23.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var questionNumber = 0
    var score = 0
    
    let quiz = [
        Question(text: "The first Star Wars movie was released in 1980.", answer: "False"),
        Question(text: "Darth Vader was once a Jedi Knight named Anakin Skywalker.", answer: "True"),
        Question(text: "The weapon of choice for a Jedi is a blaster.", answer: "False"),
        Question(text: "The famous 'I am your father' line was spoken by Yoda to Luke Skywalker.", answer: "False"),
        Question(text: "Luke Skywalker is a pilot who flies an X-wing fighter.", answer: "True"),
        Question(text: "The planet that is destroyed by the Death Star is called Alderaan.", answer: "True"),
        Question(text: "Chewbacca is a Wookiee who serves as co-pilot to Han Solo.", answer: "True"),
        Question(text: "Obi-Wan Kenobi is a Sith Lord.", answer: "False"),
        Question(text: "C-3PO is a protocol droid who speaks over 6 million languages.", answer: "True"),
        Question(text: "Boba Fett is a Jedi Knight.", answer: "False"),
        Question(text: "Princess Leia is the daughter of Darth Vader.", answer: "True"),
        Question(text: "The Jedi Order was founded to restore peace to the galaxy.", answer: "True"),
        Question(text: "The Empire is ruled by a council of Sith Lords.", answer: "False"),
        Question(text: "Stormtroopers are the elite soldiers of the Rebel Alliance.", answer: "False"),
        Question(text: "The Millennium Falcon is a Corellian freighter that is famously piloted by Han Solo.", answer: "True"),
        Question(text: "The planet Dagobah is home to the Jedi Temple.", answer: "False"),
        Question(text: "The clone army was created by the Jedi Order.", answer: "False"),
        Question(text: "The lightsaber is the traditional weapon of the Jedi Order.", answer: "True"),
        Question(text: "Anakin Skywalker was trained by Jedi Master Mace Windu.", answer: "False"),
        Question(text: "The Force can be used to move objects with one's mind.", answer: "True")
    ]
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        
        if userAnswer == quiz[questionNumber].answer {
            //user got it right
            //uipdate score
            score += 1
            return true
        } else {
            //user got it wrong
            //I need to turn the button red
            return false
        }
    }
    
    mutating func checkQuestionNumber() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
    
    func updateQuestion() -> String {
        return quiz[questionNumber].text
    }
    
    func updateProgressBar() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    func updateScore() -> String {
        return "SCORE: \(score)"
    }
    
}
