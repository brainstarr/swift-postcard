//
//  ViewController.swift
//  Swift Postcard
//
//  Created by Brian Starr on 9/23/14.
//  Copyright (c) 2014 Brian Starr. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageStatusLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var messageTextField: UITextField!
    
    @IBOutlet weak var mailButton: UIButton!
    
    @IBOutlet weak var hiddenChallengeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func sendPostcardButton(sender: AnyObject) {
        messageStatusLabel.hidden = false
        messageStatusLabel.text = messageTextField.text
        messageTextField.resignFirstResponder()
        messageStatusLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState:UIControlState.Normal)
        hiddenChallengeLabel.hidden = false
        hiddenChallengeLabel.text = messageTextField.text
        hiddenChallengeLabel.textColor = UIColor.blueColor()
        messageTextField.text = ""
    }


}

