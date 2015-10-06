//
//  FirstViewController.swift
//  MyConfessor
//
//  Created by My Mac on 9/5/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import UIKit
import Parse
import UIKit 



class FirstViewController: UIViewController {

    var notesData:NSMutableArray = []
    
    @IBOutlet var noteTableView: UITableView!
        override func viewDidLoad() {
            //When the page is loaded we call parse using our identifier and get all the notes, and we save them in our array of notesData
            
            self.noteTableView?.estimatedRowHeight = 107.0
            super.viewDidLoad()
            self.noteTableView?.rowHeight = UITableViewAutomaticDimension
            let nib = UINib(nibName: "NoteTableViewCell", bundle: nil)
            
           noteTableView?.registerNib(nib, forCellReuseIdentifier: "statusIdentifier")
            
        
        
            
        }
        
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        

            
                   //Defines how big is the tableView
        func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return notesData.count
        }
        
        //Asigns a value to each table cell
        func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
            //we create a row data with the value of the index on our notes array and then assing the values
            let rowData: AnyObject = self.notesData[indexPath.row]
            let cell: NoteTableViewCell = tableView.dequeueReusableCellWithIdentifier("statusIdentifier", forIndexPath: indexPath) as! NoteTableViewCell
            
            //print(rowData.createdAt)
            
            
           
            cell.loadNote(titleView: rowData["title"] as! String, subtitleView: rowData["note"] as! String)
           //  Configure the cell...
            
            return cell
        }
        //allows to swipe
        
        func tableView(tableView: UITableView,commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
            
        }
}

