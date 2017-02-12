//
//  FirstViewController.swift
//  ToDoApp
//
//  Created by Rafey Anwar on 2/4/17.
//  Copyright © 2017 Rafey Anwar. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var thisList: [String]!
    @IBOutlet var table: UITableView!
    
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
    
    override func viewDidAppear(_ animated: Bool) {
        if let loadedList = UserDefaults.standard.object(forKey: "UserList") as? [String]{
            thisList = loadedList
        }
        table.reloadData()
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return thisList.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = thisList[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCellEditingStyle.delete {
            thisList.remove(at: indexPath.row)
            UserDefaults.standard.set(thisList, forKey: "UserList")
            
            table.reloadData()
        }
    }

}

