//
//  ViewController.swift
//  Postcard
//
//  Created by Rowan North on 9/19/14.
//  Copyright (c) 2014 Rowan North. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTextField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.enterNameTextField.delegate    = self
        self.enterMessageTextField.delegate = self
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }



    func textFieldShouldReturn(textField: UITextField!) -> Bool {
        
        textField.resignFirstResponder()
        
        return true
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
        self.view.endEditing(true)
        
    }
    
    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        // Assigns text value of enterMessage text field to the messageLabel and resets enterMessage text field to blank.
        self.messageLabel.text = self.enterMessageTextField.text
        self.enterMessageTextField.text = ""
        self.messageLabel.textColor = UIColor.blueColor()
        self.messageLabel.hidden = false
        
        self.nameLabel.text = self.enterNameTextField.text
        self.enterNameTextField.text = ""
        self.nameLabel.textColor = UIColor.blueColor()
        self.nameLabel.hidden = false
        
        // Dismisses keyboard for both text fields when sendMailButton is pressed.
        self.enterNameTextField.resignFirstResponder()
        self.enterMessageTextField.resignFirstResponder()
        
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        
    }
    
}

