//
//  NoteTableViewCell.swift
//  CallingHeaven
//
//  Created by My Mac on 3/26/15.
//  Copyright (c) 2015 Carmel Heart Media. All rights reserved.
//

import UIKit

class NoteTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var dateLabel: UILabel!
    
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var subtitleLabel: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func loadNote (dateView: String, titleView: String, subtitleView: String)
    {
    
        titleLabel.text = titleView
        subtitleLabel.text = subtitleView
    }
}
