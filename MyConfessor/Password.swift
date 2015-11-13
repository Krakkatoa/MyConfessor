//
//  Password.swift
//  MyConfessor
//
//  Created by Laura Paxton on 9/28/15.
//  Copyright © 2015 Carmel Heart Media. All rights reserved.
//
import Foundation

import Parse

class PasswordViewController: UIViewController {
    @IBOutlet weak var fatherTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginAction(sender: AnyObject)
    {
        fatherTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        let query = PFQuery(className:"Father")
        query.orderByDescending("updatedAt")
        
        query.whereKey("User", equalTo:fatherTextField.text!)
        query.whereKey("Password", equalTo: passwordTextField.text!)
        query.getFirstObjectInBackgroundWithBlock({ (object: PFObject?, error: NSError?) -> Void in
            if error == nil {
                self.performSegueWithIdentifier("loginSegue", sender: self)
            } else {
                let alertView = UIAlertController (title: "Alert", message: "User name and password do not match.", preferredStyle: UIAlertControllerStyle.Alert)
                let cancelAction = UIAlertAction(title: "Okay", style: .Cancel) { (action) in
                    // ...
                }
                alertView.addAction(cancelAction)
                self.presentViewController(alertView, animated: true, completion: nil)                // Log details of the failure
                NSLog("Error: %@ %@", error!, error!.userInfo)
                
            }
        })
    }
    
}



