//
//  CommandTableViewController.swift
//  MyConfessor
//
//  Created by My Mac on 11/7/15.
//  Copyright © 2015 Carmel Heart Media. All rights reserved.
//

import Foundation
import UIKit

class CommandTableViewController: UIViewController, UITableViewDelegate {
    
    
    @IBOutlet var commandTableView: UITableView!
   
    @IBOutlet var testTitle: UILabel!
    var testTitleString:String!
    
    override func viewDidLoad() {
        self.testTitle.text=testTitleString
        self.commandTableView?.estimatedRowHeight = 107.0
        super.viewDidLoad()
        self.commandTableView?.rowHeight = UITableViewAutomaticDimension
        let nib = UINib(nibName: "NoteTableViewCell", bundle: nil)
        
        commandTableView?.registerNib(nib, forCellReuseIdentifier: "commandIdentifier")
        

    }

//func tableView(tableView: UITableView,commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath){
    
}
    
    


//@IBOutlet var petitionsTableView: UITableView!
//override func viewDidLoad() {
    //When the page is loaded we call parse using our identifier and get all the notes, and we save them in our array of notesData
    
   // self.petitionsTableView?.estimatedRowHeight = 107.0
   // super.viewDidLoad()
  //  self.petitionsTableView?.rowHeight = UITableViewAutomaticDimension
  //  let nib = UINib(nibName: "NoteTableViewCell", bundle: nil)
    
   // petitionsTableView?.registerNib(nib, forCellReuseIdentifier: "petitionsIdentifier")

