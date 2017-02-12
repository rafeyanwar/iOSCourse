//
//  ViewController.swift
//  MenuBars
//
//  Created by Rafey Anwar on 1/29/17.
//  Copyright © 2017 Rafey Anwar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = Timer()
    var time = 210
    
    @IBOutlet var timeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timeLabel.text = String(time)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pausePressed(_ sender: AnyObject) {
        //NSLog("Camera Button Pressed")
        timer.invalidate()
        // or print()
    }
    
    @IBAction func playPressed(_ sender: AnyObject) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(self.onTick), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func minusTenPressed(_ sender: AnyObject) {
        if time > 10 {
            time -= 10
            timeLabel.text = String(time)
        }
    }

    
    @IBAction func plusTenPressed(_ sender: AnyObject) {
        time += 10
        timeLabel.text = String(time)
    }
    
    @IBAction func resetPressed(_ sender: AnyObject) {
        timer.invalidate()
        time = 210
        timeLabel.text = String(time)
    }
    
    func onTick() {
        if time > 0 {
            time -= 1
        }
        timeLabel.text = String(time)
    }

}

