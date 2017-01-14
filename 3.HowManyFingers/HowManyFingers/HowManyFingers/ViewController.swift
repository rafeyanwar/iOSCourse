//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Rafey Anwar on 1/14/17.
//  Copyright © 2017 Rafey Anwar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var guessInputTextField: UITextField!
    @IBOutlet var guessResultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func guessButtonPressed(_ sender: UIButton) {
        let userGuess: Int = Int(guessInputTextField.text!)!
        
        let randomNumber: Int = Int(arc4random_uniform(5)) + 1
        
        if userGuess == randomNumber {
            guessResultLabel.text = "Correct! I had \(randomNumber) fingers up!"
        } else {
            guessResultLabel.text = "Sorry, I had \(randomNumber) fingers up."
        }
    }

}

