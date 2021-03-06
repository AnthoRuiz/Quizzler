//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Anthony Ruiz on 4/29/18.
//  Copyright © 2018 Jakaboy. All rights reserved.
//

import Foundation

class QuestionBank {
   
   var list = [QuestionModel]()
   
   init() {
      list.append(QuestionModel(text: "Valentine\'s day is banned in Saudi Arabia.", correctAnswer: true))
      
      list.append(QuestionModel(text: "A slug\'s blood is green.", correctAnswer: true))
      
      list.append(QuestionModel(text: "Approximately one quarter of human bones are in the feet.", correctAnswer: true))
      
      list.append(QuestionModel(text: "The total surface area of two human lungs is approximately 70 square metres.", correctAnswer: true))
      
      list.append(QuestionModel(text: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", correctAnswer: true))
      
      list.append(QuestionModel(text: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", correctAnswer: false))
      
      list.append(QuestionModel(text: "It is illegal to pee in the Ocean in Portugal.", correctAnswer: true))
      
      list.append(QuestionModel(text: "You can lead a cow down stairs but not up stairs.", correctAnswer: false))
      
      list.append(QuestionModel(text: "Google was originally called \"Backrub\".", correctAnswer: true))
      
      list.append(QuestionModel(text: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", correctAnswer: true))
      
      list.append(QuestionModel(text: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", correctAnswer: false))
      
      list.append(QuestionModel(text: "No piece of square dry paper can be folded in half more than 7 times.", correctAnswer: false))
      
      list.append(QuestionModel(text: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", correctAnswer: true))

   }
   
}
