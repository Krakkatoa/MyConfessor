//
//  CommandListViewController.swift
//  MyConfessor
//
//  Created by Cristian Garner on 11/8/15.
//  Copyright © 2015 Carmel Heart Media. All rights reserved.
//

import UIKit

class CommandListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet var commandsTable: UITableView!
    let cellTitles = ["THE FIRST COMMANDMENT","THE SECOND COMMANDMENT","THE THIRD COMMANDMENT"]
    let commandmentsDescriptions = ["THE FIRST COMMANDMENT DESCRIPTION","THE SECOND COMMANDMENT DESCRIPTION","THE THIRD COMMANDMENT DESCRIPTION"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
     //   commandsTable.separatorStyle = UITableViewCellSeparatorStyle.SingleLine
        

        // Do any additional setup after loading the view.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellTitles.count
    }
    
   
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellTitle = cellTitles[indexPath.row]
        let cell: UITableViewCell = commandsTable.dequeueReusableCellWithIdentifier("commandmentCell")!
        cell.textLabel!.text = cellTitle
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        let destinationVC = self.storyboard?.instantiateViewControllerWithIdentifier("CommandTableView") as! CommandTableViewController
        destinationVC.testTitleString =  commandmentsDescriptions[indexPath.row]
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
