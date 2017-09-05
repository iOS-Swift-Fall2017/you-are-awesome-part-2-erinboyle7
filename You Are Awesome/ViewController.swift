//
//  ViewController.swift
//  You Are Awesome
//
//  Created by Erin Boyle on 8/29/17.
//  Copyright © 2017 Erin Boyle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet  weak var messageLabel: UILabel!
    var index = 0
    
    // This code executes when the view controller loads
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func messageButtonPressed(_ sender: UIButton) {
   
        let messages = ["You Are Fantastic!", "You Are Great!", "You Are Amazing!", "When the Genius Bar needs help, they call you!", "You Brighten My Day!", "You Are Da Bomb!", "I can't wait to use your app!", "Fabulous? That's You!"]
        
        var newIndex = -1
        
        repeat {
            newIndex = Int(arc4random_uniform(UInt32(messages.count)))
        } while index == newIndex
        
        index = newIndex
        messageLabel.text = messages[index]
        
//        var randomIndex = Int(arc4random_uniform(UInt32(messages.count)))
//        messageLabel.text = messages[randomIndex]
//
//        messageLabel.text = messages[index]
//        index = index + 1
//
//        if index == messages.count {
//            index = 0
//        }
        
//        let message1 = "You Are Fantastic!!!!"
//        let message2 = "You Are Great!"
//        let message3 = "You Are Amazing!"
//        
//        if messageLabel.text == message1 {
//            messageLabel.text = message2
//        } else if messageLabel.text == message2 {
//            messageLabel.text = message3
//        } else {
//            messageLabel.text = message1
//        }
    }
    
}
