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
    let cellTitles = ["FIRST COMMANDMENT","SECOND COMMANDMENT","THIRD COMMANDMENT", "FOURTH COMMANDMENT", "FIFTH COMMANDMENT", "SIXTH COMMANDMENT", "SEVENTH COMMANDMENT", "EIGTH COMMANDMENT", "NINTH COMMANDMENT", "TENTH COMMANDMENT"]
   let commandmentsDescriptions = ["I am the Lord your God. You shall worship the Lord your God and Him only shall you serve.","THE SECOND COMMANDMENT DESCRIPTION sub","THE THIRD COMMANDMENT DESCRIPTION", "4TH COMMANDMENT", "FIFTH", "SIXTH", "SEVENTH", "EIGHTH", "NINTH", "TENTH"]
    let commandmentsSubtitle = ["I am the Lord your God. You shall worship the Lord your God and Him only shall you serve.", "THE SECOND COMMANDMENT DESCRIPTION sub","THE THIRD COMMANDMENT DESCRIPTION", "4TH COMMANDMENT", "FIFTH", "SIXTH", "SEVENTH", "EIGHTH", "NINTH", "TENTH"]
    
    var commandmentsDetailsStructs:[CommandmentDetails] = []
    
    
    override func viewDidLoad() {
        var firstCommandment:CommandmentDetails = CommandmentDetails()
        firstCommandment.titles = ["*Disobeyed the commandments of God or the Church?",
            "*Refused to accept what God has revealed as true, or what the Catholic Church believes?","*Denied the existence of God?",
            "*Failed to nourish and protect my faith?",
            "*Rejected anything opposed to a sound faith?",
            "*Deliberately misled others about doctrine or the faith?",
            "*Rejected the Catholic faith?",
            "*Joined another Christian denomination, or joined or practiced another religion?",
            "*Joined a group forbidden to Catholics (Masons, communists, etc.)?",
            "*Despaired about my salvation or the forgiveness of my sins?",
            "*Presumed God’s mercy? (Have you sinned expecing forgiveness without conversion and practicing virtue?)",
            "*Loved someone or something more than God (money, power, sex, ambition, etc.)?",
            "*Let someone or something influence my choices more than God?",
            "*Engaged in superstitious practices? (Including horoscopes, fortunetellers, etc.)",
            "*Been involved in the occult? (séances, Ouija board, worship of Satan, etc.)",
            "*Formally left the Catholic Church?",
            "*Hidden a serious sin or told a lie in Confession?"]
        
        var secondCommandment:CommandmentDetails = CommandmentDetails()
        secondCommandment.titles = ["*Used the name of God in cursing or blasphemy?",
            "*Failed to keep vows or promises that I have made to God?",
            "*Spoken about the Faith, the Church, the saints, or sacred things with irreverence, hatred, or defiance?",
            "*Watched television or movies, or listened to music that treated God, the Church, the saints, or sacred things irreverently?",
            "*Used vulgar, suggestive, or obscene speech?",
            "*Belittled others in my speech?",
            "*Behaved disrespectfully in Church?",
            "*Misused places or things set apart for the worship of God?",
            "*Committed perjury? (Breaking an oath or lying under oath.)",
            "Blamed God for my failings?"]
        
        
        var thirdCommandment:CommandmentDetails = CommandmentDetails()
        thirdCommandment.titles =
            ["*Set time aside each day for personal prayer to God?",
            "*Missed Mass on Sunday or Holy Days (through my own fault without sufficient reason)?",
            "*Committed a sacrilege against the Blessed Sacrament?",
            "*Received a sacrament while in the state of mortal sin?",
            "*Habitually came late to and/or left early from Mass without a good reason?",
            "*Shopped, labored, or done business unnecessarily on Sunday or other Holy Days of Obligation?",
            "*Not attended to taking my children to Mass?",
            "*Knowingly eaten meat on a day of penance (or not fasted on a fast day)?",
            "*Eaten or drank within one hour of receiving Communion (other than water or medical need)?"]

        var fourthCommandment:CommandmentDetails = CommandmentDetails()
        fourthCommandment.titles =
            ["*Obeyed all that my parents reasonably asked of me? (If still under my parents’ care.)",
            "*Neglected the needs of my parents in their old age or in their time of need?",
            "*Obeyed the reasonable demands of my teachers? (If still in school.)",
            "*Neglected to give my children proper food, clothing, shelter, education, discipline, and care (even after Confirmation)?",
            "*Provided for the religious education and formation of my children for as long as they were under my care?",
            "*Ensured that my children still under my care regularly frequent the sacraments of Penance and Holy Communion?",
            "*Educated my children in a way that corresponds to my religious convictions?",
            "*Provided my children with a positive, prudent, and personalized education in the Catholic teaching on human sexuality?",
            "*Been to my children a good example of how to live the Catholic Faith?",
            "*Prayed with and for my children?",
            "*Lived in humble obedience to those who legitimately exercise authority over me?",
            "*Broken the law?",
            "*Supported or voted for a politician whose positions are opposed to the teachings of Christ and the Catholic Church?"]
        
        var fifthCommandment:CommandmentDetails = CommandmentDetails()
        fifthCommandment.titles =
            ["*Unjustly and intentionally killed a human being?",
                "*Been involved in an abortion, directly or indirectly (through advice, etc.)?",
                "*Seriously considered or attempted suicide?",
                "*Supported, promoted, or encouraged the practice of assisted suicide or mercy killing?",
                "*Deliberately desired to kill an innocent human being?",
                "*Unjustly inflicted bodily harm on another person?",
                "*Unjustly threatened another person with bodily harm?",
                "*Verbally or emotionally abused another person?",
                "*Hated another person, or wished him evil?",
                "*Been prejudiced or unjustly discriminating against others because of their race, color, nationality, sex, or religion?",
                "*Joined a hate group?",
                "*Purposely provoked another by teasing or nagging?",
                "*Recklessly endangered my life or health, or that of another, by my actions?",
                "*Driven recklessly or under the influence of alcohol or other drugs?",
                "*Abused alcohol or other drugs?",
                "*Sold or given drugs to others to use for non-therapeutic purposes?",
                "*Used tobacco immoderately?",
                "*Over-eaten?",
                "*Encouraged others to sin by giving scandal?",
                "*Helped another to commit a mortal sin? (through advice, driving them somewhere, etc.)",
                "*Caused serious injury or death by criminal neglect?",
                "*Indulged in serious anger?",
                "*Refused to control my temper?",
                "*Been mean to, quarreled with, or willfully hurt someone?",
                "*Been unforgiving to others, when mercy or pardon was requested?",
                "*Sought revenge or hoped something bad would happen to someone?",
                "*Delighted to see someone else get hurt or suffer?",
                "*Treated animals cruelly, causing them to suffer or die needlessly?"]
            
            
        commandmentsDetailsStructs.append(firstCommandment)
        commandmentsDetailsStructs.append(secondCommandment)
        commandmentsDetailsStructs.append(thirdCommandment)
        commandmentsDetailsStructs.append(fourthCommandment)
        commandmentsDetailsStructs.append(fifthCommandment)
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
      //cell.detailTextLabel!.text = cellSubtitle
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath){
        let destinationVC = self.storyboard?.instantiateViewControllerWithIdentifier("CommandTableView") as! CommandTableViewController
        destinationVC.testTitleString =  commandmentsDescriptions[indexPath.row]
        destinationVC.questionsArray =  commandmentsDetailsStructs[indexPath.row].titles
   //    destinationVC.questionsSubtitlesArray =  commandmentsDetailsStructs[indexPath.row].subtitles
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
