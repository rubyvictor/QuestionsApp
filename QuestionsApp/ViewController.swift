//
//  ViewController.swift
//  QuestionsApp
//
//  Created by Victor Lee on 20/9/16.
//  Copyright © 2016 VictorLee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    //Store an array of questions
    
    var questions = ["What’s the name of this city in the United States with a bell in the near middle of the city?", "What is the name of the spaceship first landed on the moon?", "What does 'umbros' mean in Latin? Translate it into Sentinelese.", "What’s the first photo printed from a camera in the world?", "When was the first email ever sent in the world?", "… and what was that email about?"]
    
    var currentQuestionIndex = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBAction func nextQuestionDidTap(_ sender: AnyObject) {
        currentQuestionIndex += 1
        
        let numberOfQuestions = questions.count
        let nextQuestionIndex = currentQuestionIndex % numberOfQuestions
        
        questionLabel.text = questions[nextQuestionIndex]
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

