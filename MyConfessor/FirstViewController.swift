//
//  FirstViewController.swift
//  MyConfessor
//
//  Created by My Mac on 9/5/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import UIKit
import Parse


class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let testObject = PFObject(className: "TestObject")
        testObject["foo"] = "bar"
        testObject.saveInBackgroundWithBlock { (success: Bool, error: NSError?) -> Void in
            print("Object has been saved.")
        } }

    @IBOutlet weak var titleText: UITextView!
    
    
    @IBOutlet weak var noteText: UITextView!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

