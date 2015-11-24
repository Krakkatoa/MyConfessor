
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
    let cellTitles = ["FIRST COMMANDMENT","SECOND COMMANDMENT","THIRD COMMANDMENT","FOURTH COMMANDMENT","FIFTH COMMANDMENT","SIXTH and NINTH COMMANDMENTS", "SEVENTH and TENTH COMMANDMENTS", "EIGHTH COMMANDMENT"]
    let commandmentsDescriptions = ["FIRST COMMANDMENT","SECOND COMMANDMENT","THIRD COMMANDMENT","FOURTH COMMANDMENT","FIFTH COMMANDMENT","SIXTH and NINTH COMMANDMENTS","SEVENTH and TENTH COMMANDMENTS", "EIGHTH COMMANDMENT"]
    let commandmentsSubtitle = ["I am the Lord your God. You shall worship the Lord your God and Him only shall you serve.","You shall not take the name of the Lord your God in vain.","Remember to keep holy the Sabbath day.", "Honor your father and your mother.", "You shall not kill.", "You shall not commit adultery. You shall not covet your neighbor’s wife.", "You shall not steal. You shall not covet your neighbor’s goods.", "You shall not bear false witness against your neighbor."]
    
    var commandmentsDetailsStructs:[CommandmentDetails] = []
    
    
    override func viewDidLoad() {
        var firstCommandment:CommandmentDetails = CommandmentDetails()
        firstCommandment.titles = ["*Disobeyed the commandments of God or the Church?",
            "*Refused to accept what God has revealed as true, or what the Catholic Church proposes for belief?",
            "*Denied the existence of God?",
            "*Failed to nourish and protect my faith?",
            "*Rejected everything opposed to a sound faith?",
            "*Deliberately misled others about doctrine or the faith?",
            "*Rejected the Catholic faith, joined another Christian denomination, or joined or practiced another religion?",
            "*Joined a group forbidden to Catholics (Masons, communists, etc.)?",
            "*Despaired about my salvation or the forgiveness of my sins?",
            "*Presumed on God’s mercy? (Committing a sin in expectation of forgiveness, or asking for forgiveness without conversion and practicing virtue.)",
            "*Loved someone or something more than God (money, power, sex, ambition, etc.)?",            "*Let someone or something influence my choices more than God?",
            "*Engaged in superstitious practices? (Including horoscopes, fortunetellers, etc.)",            "*Been involved in the occult? (séances, Ouija board, worship of Satan, etc.)",
           " *Formally left the Catholic Church?",
            "*Hidden a serious sin or told a lie in Confession?"]
        firstCommandment.subtitles =  ["1 commandment 1 subtitle", "1 commandment 2 subtitle", "3", "Telling lies about another person in order to hurt his reputation.", "Writing lies about another person in order to destroy his reputation.","7","Assuming the worst of another person based on circumstantial evidence.","9","10"]
        
        var secondCommandment:CommandmentDetails = CommandmentDetails()
        secondCommandment.titles = [
            "*Used the name of God in cursing or blasphemy?",
            "*Failed to keep vows or promises that I have made to God?",
            "*Spoken about the Faith, the Church, the saints, or sacred things with irreverence, hatred, or defiance?",
            "*Watched television or movies, or listened to music that treated God, the Church, the saints, or sacred things irreverently?",            "*Used vulgar, suggestive, or obscene speech?",
            "*Belittled others in my speech?",
            "*Behaved disrespectfully in Church?",
            "*Misused places or things set apart for the worship of God?",
            "*Committed perjury? (Breaking an oath or lying under oath.)",
            "*Blamed God for my failings?",]
        secondCommandment.subtitles =  ["2 commandment 1 subtitle", "2 commandment 2 subtitle"]
        
        
        var thirdCommandment:CommandmentDetails = CommandmentDetails()
        thirdCommandment.titles = [
            
            "*Set time aside each day for personal prayer to God?",
            "*Missed Mass on Sunday or Holy Days (through my own fault without sufficient reason)?",
            "*Committed a sacrilege against the Blessed Sacrament?",
            "*Received a sacrament while in the state of mortal sin?",
            "*Habitually came late to and/or left early from Mass without a good reason?",
            "*Shopped, labored, or done business unnecessarily on Sunday or other Holy Days of Obligation?",
            "*Not attended to taking my children to Mass?",
            "*Knowingly eaten meat on a day of penance (or not fasted on a fast day)?",
            "*Eaten or drank within one hour of receiving Communion (other than water or medical need)?"]
        thirdCommandment.subtitles =  ["2 commandment 1 subtitle", "2 commandment 2 subtitle"]
        
        var fourthCommandment:CommandmentDetails = CommandmentDetails()
        fourthCommandment.titles = [
            
            "*Obeyed all that my parents reasonably asked of me? (If still under my parents’ care.)",
            "*Neglected the needs of my parents in their old age or in their time of need?",
            "*Obeyed the reasonable demands of my teachers? (If still in school.)",
            "*Neglected to give my children proper food, clothing, shelter, education, discipline, and care (even after Confirmation)?",            "*Provided for the religious education and formation of my children for as long as they were under my care?",
            "*Ensured that my children still under my care regularly frequent the sacraments of Penance and Holy Communion?",
            "*Educated my children in a way that corresponds to my religious convictions?",
            "*Provided my children with a positive, prudent, and personalized education in the Catholic teaching on human sexuality?",
            "*Been to my children a good example of how to live the Catholic Faith?",
            "*Prayed with and for my children?",
            "*Lived in humble obedience to those who legitimately exercise authority over me?",
            "*Broken the law?",
            "*Supported or voted for a politician whose positions are opposed to the teachings of Christ and the Catholic Church?)"]
       fourthCommandment.subtitles =  ["1", "2 "]
        
        var fifthCommandment:CommandmentDetails = CommandmentDetails()
        fifthCommandment.titles = [
            
            "*Unjustly and intentionally killed a human being?",
            "*Been involved in an abortion, directly or indirectly (through advice, etc.)?",        "*Seriously considered or attempted suicide?",
            "*Supported, promoted, or encouraged the practice of assisted suicide or mercy killing?",            "*Deliberately desired to kill an innocent human being?",
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
            "*Helped another to commit a mortal sin? (through advice, driving them somewhere, etc.)",            "*Caused serious injury or death by criminal neglect?",
            "*Indulged in serious anger?",
            "*Refused to control my temper?",
            "*Been mean to, quarreled with, or willfully hurt someone?",
            "*Been unforgiving to others, when mercy or pardon was requested?",
            "*Sought revenge or hoped something bad would happen to someone?",
            "*Delighted to see someone else get hurt or suffer?",
            "*Treated animals cruelly, causing them to suffer or die needlessly?"]
            fifthCommandment.subtitles =  ["1", "2 "]
        
        var sixthCommandment:CommandmentDetails = CommandmentDetails()
        sixthCommandment.titles = [
            
            "*Practiced the virtue of chastity?",
            "*Given in to lust? (The desire for sexual pleasure unrelated to spousal love in marriage.)",            "*Used an artificial means of birth control?",
            "*Refused to be open to conception, without just cause? (Catechism of the Catholic Church paragraph 2368)",
            "*Participated in immoral techniques for in vitro fertilization or artificial insemination?",            "*Sterilized my sex organs for contraceptive purposes?",
            "*Deprived my spouse of the marital right, without just cause?",
            "*Claimed my own marital right without concern for my spouse?",
            "*Deliberately caused male climax outside of normal sexual intercourse? (Catechism of the Catholic Church paragraph 2366)",
            "*Willfully entertained impure thoughts?",
            "*Purchased, viewed, or made use of pornography?",
            "*Watched movies and television that involved sex and nudity?",
            "*Listened to music or jokes that were harmful to purity?",
            "*Committed adultery? (Sexual relations with someone who is married, or with someone other than my spouse.)",
            "*Committed incest? (Sexual relations with a relative or in-law.)",
            "*Committed fornication? (Sexual relations with someone of the opposite sex when neither is married.)",
            "*Engaged in homosexual activity? (Sexual activity with someone of the same sex.)",            "*Committed rape?",
            "*Masturbated? (Deliberate stimulation of one’s own sexual organs for sexual pleasure.)",            "*Engaged in sexual foreplay (petting) reserved for marriage?",
           "*Preyed upon children or youth for my sexual pleasure?",
            "*Engaged in unnatural sexual activities?",
            "*Engaged in prostitution, or paid for the services of a prostitute?",
            "*Seduced someone, or allowed myself to be seduced?",
            "*Made uninvited and unwelcome sexual advances toward another?",
            "*Purposely dressed immodestly?",
        ]
        sixthCommandment.subtitles =  ["1", "2 "]
        
        var seventhCommandment:CommandmentDetails = CommandmentDetails()
        seventhCommandment.titles = [
            
            "*Stolen? (Take something that doesn’t belong to me against the reasonable will of the owner.)",
            "*Envied others on account of their possessions?",
            "*Tried to live in a spirit of Gospel poverty and simplicity?",
            "*Given generously to others in need?",
            "*Considered that God has provided me with money so that I might use it to benefit others, as well as for my own legitimate needs?",
            "*Freed myself from a consumer mentality?",
            "*Practiced the works of mercy?",
            "*Deliberately defaced, destroyed, or lost another’s property?",
            "*Cheated on a test, taxes, sports, games, or in business?",
            "*Squandered money in compulsive gambling?",
            "*Make a false claim to an insurance company?",
            "*Paid my employees a living wage, or failed to give a full day’s work for a full day’s pay?",            "*Failed to honor my part of a contract?",
            "*Failed to make good on a debt?",
            "*Overcharged someone, especially to take advantage of another’s hardship or ignorance?",            "*Misused natural resources?",
        ]
        seventhCommandment.subtitles =  ["1", "2 "]
        
        
        var eighthCommandment:CommandmentDetails = CommandmentDetails()
        eighthCommandment.titles = [
            
            "*Lied?",
            "*Knowingly and willfully deceived another?",
            "*Perjured myself under oath?",
            "*Gossiped?",
            "*Committed detraction? (Hurting a person’s reputation by telling others about his faults for no good reason.)",
            "*Committed slander or calumny? (Telling lies about another person in order to hurt his reputation.)",
            "*Committed libel? (Writing lies about another person in order to destroy his reputation.)",            "*Been guilty of rash judgment? (Assuming the worst of another person based on circumstantial evidence.)",
            "*Failed to make reparation for a lie I told, or for harm done to a person’s reputation?",            "*Failed to speak out in defense of the Catholic Faith, the Church, or of another person?",
            "*Betrayed another’s confidence through speech?",
            
        ]
        eighthCommandment.subtitles =  ["1", "2 "]
        
        
        
        commandmentsDetailsStructs.append(firstCommandment)
        commandmentsDetailsStructs.append(secondCommandment)
        commandmentsDetailsStructs.append(thirdCommandment)
        commandmentsDetailsStructs.append(fourthCommandment)
        commandmentsDetailsStructs.append(fifthCommandment)
        commandmentsDetailsStructs.append(sixthCommandment)
        commandmentsDetailsStructs.append(seventhCommandment)
        commandmentsDetailsStructs.append(eighthCommandment)
        
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