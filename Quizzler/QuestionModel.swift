//
//  QuestionModel.swift
//  Quizzler
//
//  Created by Anthony Ruiz on 4/29/18.
//  Copyright © 2018 London App Brewery. All rights reserved.
//

import Foundation

class QuestionModel {
   
   let questionTex : String
   let answer : Bool
   
   init(text: String, correctAnswer: Bool) {
      questionTex = text
      answer = correctAnswer
   }
}
