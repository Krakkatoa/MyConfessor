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

class StatusViewController: UIViewController {
    
    @IBOutlet weak var titleText: UITextField!
    
    @IBOutlet weak var noteText: UITextView!
    


       override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
        
    }
    
    
    @IBAction func saveAction(sender: AnyObject) {
        //we check if we already have our identifier, if we do we save a note in parse
        let defaults = NSUserDefaults.standardUserDefaults()
        if let identifier = defaults.stringForKey("UserIdentifier")
        {
            let note = PFObject(className:"Status")
            note["title"] = titleText.text
            note["note"] = noteText.text
            note["UserIdentifier"] = identifier
            note.saveInBackgroundWithBlock{
                (success: Bool, error: NSError!) -> Void in
                if (success) {
                    // The object has been saved.
                    print("Note Saved!")
                    
                    //read action
                    self.titleText.text = ""
                    self.noteText.text = ""
                    self.performSegueWithIdentifier("statusReadSegue", sender: nil)
                    
                } else {
                    print(error.description)
                    // There was a problem, check error.description
                }
            }
        }
        
        
    }
    
    @IBAction func readAction(sender: AnyObject) {
        
    }
    
    
    
    
    
}



//

/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation

override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {


// Get the new view controller using segue.destinationViewController.
// Pass the selected object to the new view controller.
}
*/

// Change the mood operator based on input





/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation

override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {


// Get the new view controller using segue.destinationViewController.
// Pass the selected object to the new view controller.
}
*/

// Change the mood operator based on input




