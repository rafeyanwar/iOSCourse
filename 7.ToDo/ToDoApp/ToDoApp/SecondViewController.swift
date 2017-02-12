//
//  SecondViewController.swift
//  ToDoApp
//
//  Created by Rafey Anwar on 2/4/17.
//  Copyright © 2017 Rafey Anwar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    var thisList: [String]!
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let thisListObject = UserDefaults.standard.object(forKey: "UserList")
        
        if let loadedList = thisListObject as? [String] {
            thisList = loadedList
        } else {
            thisList = []
            UserDefaults.standard.set(thisList, forKey: "UserList")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
    @IBAction func addButtonPressed(_ sender: AnyObject) {
        if textField.text != "" {
            thisList.append(textField.text!)
            textField.text = ""
            
            UserDefaults.standard.set(thisList, forKey: "UserList")
            
            self.view.endEditing(true)
        }
    }
}

