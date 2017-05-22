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
    
    @IBAction func dismissKeyboardOnTap(_ sender: AnyObject) {
        fatherTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginAction(_ sender: AnyObject)
    {
        fatherTextField.resignFirstResponder()
        passwordTextField.resignFirstResponder()
        let query = PFQuery(className:"Father")
        query.order(byDescending: "updatedAt")
        
        query.whereKey("User", equalTo:fatherTextField.text!)
        query.whereKey("Password", equalTo: passwordTextField.text!)
        query.getFirstObjectInBackground(block: { (object: PFObject?, error: NSError?) -> Void in
            if error == nil {
                self.performSegue(withIdentifier: "loginSegue", sender: self)
            } else {
                let alertView = UIAlertController (title: "Alert", message: "User name and password do not match.", preferredStyle: UIAlertControllerStyle.alert)
                let cancelAction = UIAlertAction(title: "Okay", style: .cancel) { (action) in
                    // ...
                }
                alertView.addAction(cancelAction)
                self.present(alertView, animated: true, completion: nil)                // Log details of the failure
                NSLog("Error: %@ %@", error!, error!.userInfo)
                
            }
        })
    }
    
}



