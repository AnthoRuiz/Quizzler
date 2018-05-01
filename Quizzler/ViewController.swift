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
    var score : Int = 0
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
      nextQuestion()
      
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
      
      scoreLabel.text = "Score: \(score)"
      progressLabel.text = "\(questionNumber + 1) / \(allQuestion.list.count)"
      progressBar.frame.size.width = (view.frame.size.width / CGFloat(allQuestion.list.count)) * CGFloat(questionNumber + 1)
      
    }
    

    func nextQuestion() {
      
      if questionNumber <= allQuestion.list.count - 1{
         questionLabel.text = allQuestion.list[questionNumber].questionTex
         updateUI()
      }else{
         let alert = UIAlertController(title: "Awesome", message: "Do you Want To Play Again?", preferredStyle: .alert)
         
         let restarQuizz = UIAlertAction(title: "Restart", style: .default, handler: {(UIAlertAction) in
            
            self.startOver()
         })
         alert.addAction(restarQuizz)
         present(alert, animated: true, completion: nil)
      }
    }
    
    
   func checkAnswer(answer: Bool) {
      
      let correctAnswer = allQuestion.list[questionNumber].answer
      if correctAnswer == answer {
         score += 1
         print("respuesta correcta")
      }else{
         print("respuesta incorrecta")
      }
    }
    
    
    func startOver() {
      questionNumber = 0
      score = 0
      nextQuestion()
       
    }
    

    
}
