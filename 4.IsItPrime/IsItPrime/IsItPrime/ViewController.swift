//
//  ViewController.swift
//  IsItPrime
//
//  Created by Rafey Anwar on 1/27/17.
//  Copyright © 2017 Rafey Anwar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userTextEntry: UITextField!
    @IBOutlet var outputLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func submitPressed(_ sender: AnyObject) {
        
        if let input = Int(userTextEntry.text!) {
            outputLabel.text = String(isPrime(num: input))
        } else {
            outputLabel.text = "Sorry, please enter a valid number!"
        }
    }
    
    func isPrime(num: Int) -> Bool {
        if num <= 1 {
            return false
        }
        
        if num <= 3 {
            return true
        }
        
        var i = 2
        while i*i <= num {
            if num % i == 0 {
                return false
            }
            i = i + 1
        }
        return true
    }

}

