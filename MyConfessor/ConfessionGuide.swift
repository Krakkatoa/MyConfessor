//
//  ConfessionGuide.swift
//  MyConfessor
//
//  Created by My Mac on 9/8/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import Foundation
import Parse

struct ConfessionGuide {
    
    let factsArray = [

    "Confession Guide\n Having entered the confessional, place yourself in the presence of God, Who sees all things, and then address His minister:\n Bless me, Father, for I have sinned,\n I confess to almighty God, and to you, Father, that I have sinned exceedingly in thought, word, deed, and omission, through my fault.\n It has been ____ weeks since my last confession. I accuse myself of having committed, during that time, the following sins:\n State your sins, followed by:\n For these, and all the sins of which I have at any time been guilty, I humbly ask pardon of God, and absolution of you, Father, if you think me worthy.\n\n Listen intently to anything the confessor may choose to say; humbly accept the penance he imposes, and, once he has completed the prayer of absolution, recite the act of contrition. However, the priest may ask you to pray the Act of Contrition prior to offering his prayer of absolution.\n\n The Act of Contrition \n\n O My God, I am heartily sorry for having offended Thee and I detest all my sins because I dread the loss of heaven and the pains of hell, but most of all because they offend Thee, my God, Who art all good and deserving of all my love. I firmly resolve, with the help of Thy grace, to sin no more and avoid the near occasions of sin. Amen.\n\n  After confession, we should return thanks to God for His mercies in forgiving our sins, beg that He supply whatever has been wanting in us and bless our good resolutions, and immediately thereafter say our penance."    ]
    
    
    func randomFact() -> String {
        let unsignedArrayCount = UInt32(factsArray.count)
        let unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        let randomNumber = Int(unsignedRandomNumber)
        
        return factsArray[randomNumber]
    }
    
}


