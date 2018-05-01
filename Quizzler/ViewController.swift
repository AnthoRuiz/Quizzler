//
//  ViewController.swift
//  Quizzler
//
//  Created by Jakaboy on 04/28/2018.
//  Copyright (c) 2018 Jakaboy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Place your instance variables here
    let allQuestion = QuestionBank()
    var questionNumber : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
      questionLabel.text = allQuestion.list.first?.questionTex
    }


    @IBAction func answerPressed(_ sender: AnyObject) {
      var pickedAnswer : Bool = false
      if sender.tag == 1 {
         pickedAnswer = true
      }else if sender.tag == 2 {
         pickedAnswer = false
      }
      
      checkAnswer(answer: pickedAnswer)
      questionNumber = questionNumber + 1
      nextQuestion()
    }
    
    
    func updateUI() {
      
    }
    

    func nextQuestion() {
      
      if questionNumber <= allQuestion.list.count - 1{
         print(allQuestion.list.count - 1)
         questionLabel.text = allQuestion.list[questionNumber].questionTex
      }else{
         print("final de las preguntas")
      }
    }
    
    
   func checkAnswer(answer: Bool) {
      
      let correctAnswer = allQuestion.list[questionNumber].answer
      if correctAnswer == answer {
         print("respuesta correcta")
      }else{
         let alert = UIAlertController(title: "Awesome", message: "Do you Want To Play Again?", preferredStyle: .alert)
         
         let restarQuizz = UIAlertAction(title: "Restart", style: .default, handler: {(UIAlertAction) in
            
            self.startOver()
         })
         alert.addAction(restarQuizz)
         present(alert, animated: true, completion: nil)
      }
    }
    
    
    func startOver() {
      questionNumber = 0
      nextQuestion()
       
    }
    

    
}
