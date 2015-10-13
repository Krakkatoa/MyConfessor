//
//  StatusViewController.swift
//  MyConfessor
//
//  Created by My Mac on 9/30/15.
//  Copyright © 2015 Carmel Heart Media. All rights reserved.
//

import Foundation

import UIKit

import Parse

class StatusViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var titleText: UITextField!
    
    @IBOutlet weak var noteText: UITextField!
    

    @IBOutlet weak var lightSwitch: UISwitch!
    
    @IBOutlet weak var saveAction: UIButton!
    
    func noteTextShouldReturn(noteText: UITextField!) -> Bool {
        noteText.resignFirstResponder()
        return true;
        
        
    }
       override func viewDidLoad() {
        super.viewDidLoad()
         self.noteText.delegate = self;
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    

        
    }
    @IBAction func saveAction(sender: AnyObject) {
        //we check if we already have our identifier, if we do we save a note in parse
        if titleText.text == "" {
            let alertView = UIAlertController (title: "Alert", message: "Please complete all fields.", preferredStyle: UIAlertControllerStyle.Alert)
            let cancelAction = UIAlertAction(title: "Okay", style: .Cancel) { (action) in
                // ...
            }
            alertView.addAction(cancelAction)
            self.presentViewController(alertView, animated: true, completion: nil)
        } else {
            let defaults = NSUserDefaults.standardUserDefaults()
            if let identifier = defaults.stringForKey("UserIdentifier")
            {
                var status = ""
                if lightSwitch.on {
                    status = "on"}
                else {
                    status = "off"}
                
                let query = PFQuery(className:"Status")
                
                query.getObjectInBackgroundWithId("Pna320IvTS"){ ( object: PFObject?, error: NSError?) -> Void in
                    
                    object!["status"] = status
                    object!["title"] = self.titleText.text
                    object!["note"] = self.noteText.text
                    object!["UserIdentifier"] = identifier
                    object!.saveInBackgroundWithBlock {
                        (success: Bool, error: NSError?) -> Void in
                        if (success) {
                            // The object has been saved.
                            print("Note Saved!")
                            let alertView = UIAlertController (title: "Your message was saved and updated.", message: "Please return to Status Tab.", preferredStyle: UIAlertControllerStyle.Alert)
                            let cancelAction = UIAlertAction(title: "Okay", style: .Cancel) { (action) in}
                            
                            self.dismissViewControllerAnimated(true) { () -> Void in
                                // There was a problem, check error.description
                                noteText.resignFirstResponder()
                                
                                // ...
                            }
                            alertView.addAction(cancelAction)
                            
                            self.presentViewController(alertView, animated: true, completion: nil)
                            
                            
                            self.titleText.text = ""
                            self.noteText.text = ""
                            
                            
                        } else {
                            print(error!.description)}
                        
                       
                        
                    
                    
                        // There was a problem, check error.description
                    }
                }
            }
            
            
            
        }
    }
    
}