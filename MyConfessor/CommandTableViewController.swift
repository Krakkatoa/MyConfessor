//
//  CommandTableViewController.swift
//  MyConfessor
//
//  Created by Laura Paxton on 11/7/15.
//  Copyright © 2015 Carmel Heart Media. All rights reserved.
//

import Foundation
import UIKit

class CommandTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet var commandTableView: UITableView!
    

    @IBOutlet var testTitle: UILabel!
    var testTitleString:String!
    var questionsArray:[String]!
   var questionsSubtitlesArray:[String]!
    
    override func viewDidLoad() {

        super.viewDidLoad()

        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return questionsArray.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellTitle = questionsArray[indexPath.row]
    
        // = questionsSubtitlesArray[indexPath.row]
        let cell: UITableViewCell = commandTableView.dequeueReusableCell(withIdentifier: "questionCell")!
        cell.textLabel!.text = cellTitle
        
        return cell
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

