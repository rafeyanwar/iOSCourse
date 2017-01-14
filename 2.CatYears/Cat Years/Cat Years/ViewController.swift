//
//  ViewController.swift
//  Cat Years
//
//  Created by Rafey Anwar on 12/20/16.
//  Copyright © 2016 Rafey Anwar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var catAgeTextField: UITextField!
    @IBOutlet var calculatedCatAge: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func catAgeSubmitTapped(_ sender: UIButton) {
        let ageInCatYears = Int(catAgeTextField.text!)! * 7
        
        calculatedCatAge.text = String(ageInCatYears)
    }

}

