//
//  messageCell.swift
//  Flash Chat iOS13
//
//  Created by Saurabh  on 24/08/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class messageCell: UITableViewCell {

    @IBOutlet weak var messageBubble: UIView!
      
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var rightImageview: UIImageView!
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        messageBubble.layer.cornerRadius = messageBubble.frame.size.height/5
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
