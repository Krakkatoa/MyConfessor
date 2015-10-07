//
//  FirstViewController.swift
//  MyConfessor
//
//  Created by My Mac on 9/5/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import UIKit

import Parse

class FirstViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var notesData:NSMutableArray = []
    
    
    
    @IBOutlet var statusTableView: UITableView!
    override func viewDidLoad() {
        //When the page is loaded we call parse using our identifier and get all the notes, and we save them in our array of notesData
        
        self.statusTableView?.estimatedRowHeight = 107.0
        super.viewDidLoad()
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
            query.findObjectsInBackgroundWithBlock {
                (objects: [AnyObject]! error: NSError!)-> Void
                if error == nil {
                    self.notesData = NSMutableArray(array:objects)
                    self.statusTableView.reloadData()
                    // The find succeeded.
                    print(self.notesData)
                } else {
                    // Log details of the failure
                    NSLog("Error: %@ %@", error, error.userInfo)
        
                }
            
    
            override func didReceiveMemoryWarning() {
                super.didReceiveMemoryWarning()
                }
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
        
       
        
        let dateCell = formatter.stringFromDate(<#T##date: NSDate##NSDate#>)
        cell.loadNote(dateCell, titleView: rowData["title"] as! String, subtitleView: rowData["note"] as! String)
        // Configure the cell...
        
        return cell
    }
       }
}
}