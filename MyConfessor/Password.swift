//
//  Password.swift
//  MyConfessor
//
//  Created by My Mac on 9/28/15.
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
        let query = PFQuery(className:"Father")
        query.orderByDescending("updatedAt")
        
        query.whereKey("Father", equalTo:fatherTextField.text!)
        query.whereKey("Password", equalTo: passwordTextField.text!)
        query.getFirstObjectInBackgroundWithBlock({ (object: PFObject?, error: NSError?) -> Void in
            if error == nil {
                if object == nil {
                    
                }
                else{}
            } else {
                
                // Log details of the failure
                NSLog("Error: %@ %@", error!, error!.userInfo)
                
            }
        })
    }
    
}

