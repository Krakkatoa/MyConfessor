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
    let cellTitles = ["THE FIRST COMMANDMENT","THE SECOND COMMANDMENT","THE THIRD COMMANDMENT", "4TH COMMANDMENT"]
    let commandmentsDescriptions = ["THE FIRST COMMANDMENT DESCRIPTION","THE SECOND COMMANDMENT DESCRIPTION","THE THIRD COMMANDMENT DESCRIPTION", "4TH COMMANDMENT"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        commandsTable.separatorStyle = UITableViewCellSeparatorStyle.None

        

        // Do any additional setup after loading the view.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellTitles.count
    }
    
   
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cellTitle = cellTitles[indexPath.row]
        let cell: UITableViewCell = commandsTable.dequeueReusableCellWithIdentifier("commandmentCell")!
        cell.textLabel!.text = cellTitle
        let additionalSeparator:UIView = UIView.init(frame: CGRect.init(x: 0, y: cell.frame.height + 5, width: cell.frame.width + 60, height: 1))
        additionalSeparator.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1)
        cell.addSubview(additionalSeparator)
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        let destinationVC = self.storyboard?.instantiateViewControllerWithIdentifier("CommandTableView") as! CommandTableViewController
        destinationVC.testTitleString =  commandmentsDescriptions[indexPath.row]
        navigationController?.pushViewController(destinationVC, animated: true)
        
    }
    
    func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        cell.separatorInset = UIEdgeInsetsZero
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
