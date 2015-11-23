
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
    let cellTitles = ["FIRST COMMANDMENT","SECOND COMMANDMENT","THIRD COMMANDMENT", "FOURTH COMMANDMENT", "FIFTH COMMANDMENT", "SIXTH and NINTH COMMANDMENTS", "SEVENTH AND TENTH COMMANDMENTS", "EIGHTH COMMANDMENT"]
    let commandmentsDescriptions = ["FIRST COMMANDMENT","SECOND COMMANDMENT","THIRD COMMANDMENT", "FOURTH COMMANDMENT", "FIFTH COMMANDMENT", "SIXTH and NINTH COMMANDMENTS", "SEVENTH AND TENTH COMMANDMENTS", "EIGHTH COMMANDMENT"]
    let commandmentsSubtitle = ["I am the Lord your God. You shall worship the Lord your God and Him only shall you serve.","You shall not take the name of the Lord your God in vain.","Remember to keep holy the Sabbath day.", "Honor your father and your mother.", "You shall not kill.", "You shall not commit adultery. You shall not covet your neighbor’s wife.", "You shall not steal. You shall not covet your neighbor’s goods.", "You shall not bear false witness against your neighbor."]
    
    var commandmentsDetailsStructs:[CommandmentDetails] = []
    
    
    override func viewDidLoad() {
        var firstCommandment:CommandmentDetails = CommandmentDetails()
        firstCommandment.titles = ["*Lied?",
            "*Knowingly and willfully deceived another?",
            "*Perjured myself under oath?",
            "*Gossiped?",
            "*Committed detraction?",
            "*Committed slander or calumny?",
            "*Committed libel?",
            "*Been guilty of rash judgment?",
            "*Failed to make reparation for a lie I told, or for harm done to a person’s reputation?",
            "*Failed to speak out in defense of the Catholic Faith, the Church, or of another person?",
            "*Betrayed another’s confidence through speech?"]
        firstCommandment.subtitles =  ["1 commandment 1 subtitle", "1 commandment 2 subtitle", "3","Hurting a person’s reputation by telling others about his faults for no good reason.", "Telling lies about another person in order to hurt his reputation.", "Writing lies about another person in order to destroy his reputation.","7","Assuming the worst of another person based on circumstantial evidence.","9","10"]
        
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