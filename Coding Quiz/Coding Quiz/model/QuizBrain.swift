//
//  QuizBrain.swift
//  Coding Quiz
//
//  Created by Nirav Patel on 07/04/20.
//  Copyright © 2020 Nirav Patel. All rights reserved.
//

import Foundation

struct QuizBrain {
    
    var quiz = [
        Quiz(q:"Java is Platform independent?", a:"True"),
        Quiz(q:"Java's First Name was OAK?", a:"True"),
        Quiz(q:"Jams goshli founded c++?", a:"False"),
        Quiz(q:"JDK means Java virtual machine?", a:"False"),
        Quiz(q:"C++ is POP?", a:"False"),
        Quiz(q:"C is OOP?", a:"False"),
        Quiz(q:"Array starts from 0?", a:"True"),
    ]
    
    var quizeNumber = 0
    
    func getProgress() -> Float {
        let progress = Float(quizeNumber)/Float(quiz.count)
        return progress
    }
    
    mutating func nextQuestion(){
        if quizeNumber+1 < quiz.count {
            quizeNumber += 1
        } else {
            quizeNumber = 0
        }
    }
    
    func getQuestion() -> String {
        return quiz[quizeNumber].text
    }
    
    func checkAnswer(a:String) -> Bool {
        if quiz[quizeNumber].answer == a {
            return true
        } else {
            return false
        }
    }
    
}
