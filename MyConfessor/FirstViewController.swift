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
    
    var notesData:NSMutableArray = []
    

    @IBOutlet weak var statusImage: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var subtitleLabel: UILabel!
    
    @IBOutlet var statusTableView: UITableView!
    override func viewDidLoad() {
        
    
    
        
        
        //When the page is loaded we call parse using our identifier and get all the notes, and we save them in our array of notesData
        
        self.statusTableView?.estimatedRowHeight = 107.0
        super.viewDidLoad()
        self.titleLabel.text = ""
        self.subtitleLabel.text = ""
        
        self.statusTableView?.rowHeight = UITableViewAutomaticDimension
        let nib = UINib(nibName: "NoteTableViewCell", bundle: nil)
        
        statusTableView?.registerNib(nib, forCellReuseIdentifier: "statusIdentifier")
    }
    
    
    
    override func viewWillAppear(animated: Bool) {
        let defaults = NSUserDefaults.standardUserDefaults()
        if let identifier = defaults.stringForKey("UserIdentifier")
        {
            let query = PFQuery(className:"Status")
            query.orderByDescending("updatedAt")
            
            query.whereKey("UserIdentifier", equalTo:identifier)
            query.getFirstObjectInBackgroundWithBlock({ (object: PFObject?, error: NSError?) -> Void in
                if error == nil {
                    self.titleLabel.text = object!["title"] as? String
                     self.subtitleLabel.text = object!["note"] as? String
                    if object! ["status"] as? String == "off" {
                        self.statusImage.image = UIImage(named: "out.png")
                    } else {
                      self.statusImage.image = UIImage (named: "in.png")
                    }
                    // The find succeeded.
                    print(self.notesData)
                } else {
                    // Log details of the failure
                    NSLog("Error: %@ %@", error!, error!.userInfo)
                    
                }
            })
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    // Dispose of any resources that can be recreated.
    
    //Defines how big is the tableView
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notesData.count
    }
    
    //Asigns a value to each table cell
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        //we create a row data with the value of the index on our notes array and then assing the values
        let rowData: AnyObject = self.notesData[indexPath.row]
        let cell: NoteTableViewCell = tableView.dequeueReusableCellWithIdentifier("statusIdentifier", forIndexPath: indexPath) as! NoteTableViewCell
        
        print(rowData.createdAt)
        let formatter = NSDateFormatter()
        formatter.dateStyle = .MediumStyle
        formatter.timeStyle = .NoStyle
        
        
        
        
        
        
        
        // Configure the cell...
     
        
        
        
        return cell
    }
}
       