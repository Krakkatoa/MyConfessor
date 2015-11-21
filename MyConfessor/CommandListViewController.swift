//
//  CommandListViewController.swift
//  MyConfessor
//
//  Created by Cristian Garner on 11/8/15.
//  Copyright © 2015 Carmel Heart Media. All rights reserved.
//

import UIKit

struct CommandmentDetails {
    var titles = ["", ""]
    var subtitles = ["", ""]
    init(){}
}

class CommandListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var commandsTable: UITableView!
    let cellTitles = ["MENTAL PREPARATION","FIRST COMMANDMENT","SECOND COMMANDMENT","THIRD COMMANDMENT", "FOURTH COMMANDMENT", "FIFTH COMMANDMENT", "SIXTH COMMANDMENT", "SEVENTH COMMANDMENT", "EIGTH COMMANDMENT", "NINTH COMMANDMENT", "TENTH COMMANDMENT"]
    let commandmentsDescriptions = ["Prep", "THE FIRST COMMANDMENT DESCRIPTION","THE SECOND COMMANDMENT DESCRIPTION","THE THIRD COMMANDMENT DESCRIPTION", "4TH COMMANDMENT", "FIFTH", "SIXTH", "SEVENTH", "EIGHTH", "NINTH", "TENTH"]
    let commandmentsSubtitle = ["Prep Subt", "THE FIRST COMMANDMENT DESCRIPTION Sub","THE SECOND COMMANDMENT DESCRIPTION sub","THE THIRD COMMANDMENT DESCRIPTION", "4TH COMMANDMENT", "FIFTH", "SIXTH", "SEVENTH", "EIGHTH", "NINTH", "TENTH"]
    
    var commandmentsDetailsStructs:[CommandmentDetails] = []
    
    
    override func viewDidLoad() {
        var firstCommandment:CommandmentDetails = CommandmentDetails()
        firstCommandment.titles = ["1 commandment 1 title", "1 commandment 2 title"]
        firstCommandment.subtitles =  ["1 commandment 1 subtitle", "1 commandment 2 subtitle"]
        
        var secondCommandment:CommandmentDetails = CommandmentDetails()
        secondCommandment.titles = ["2 commandment 1 title", "2 commandment 2 title"]
        secondCommandment.subtitles =  ["2 commandment 1 subtitle", "2 commandment 2 subtitle"]
        
        commandmentsDetailsStructs.append(firstCommandment)
        commandmentsDetailsStructs.append(secondCommandment)
        super.viewDidLoad()
        //   commandsTable.separatorStyle = UITableViewCellSeparatorStyle.SingleLine
        
        
        // Do any additional setup after loading the view.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellTitles.count
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellTitle = cellTitles[indexPath.row]
        let cellSubtitle = commandmentsSubtitle[indexPath.row]
        let cell: UITableViewCell = commandsTable.dequeueReusableCellWithIdentifier("commandmentCell")!
        cell.textLabel!.text = cellTitle
        cell.detailTextLabel!.text = cellSubtitle
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        let destinationVC = self.storyboard?.instantiateViewControllerWithIdentifier("CommandTableView") as! CommandTableViewController
        destinationVC.testTitleString =  commandmentsDescriptions[indexPath.row]
        destinationVC.questionsArray =  commandmentsDetailsStructs[indexPath.row].titles
        destinationVC.questionsSubtitlesArray =  commandmentsDetailsStructs[indexPath.row].subtitles
        navigationController?.pushViewController(destinationVC, animated: true)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
