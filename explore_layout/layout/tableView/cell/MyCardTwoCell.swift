//
//  MyCardTwoCell.swift
//  explore_layout
//
//  Created by cartenz on 09/09/20.
//  Copyright © 2020 yukngoding. All rights reserved.
//

import UIKit

class MyCardTwoCell: UITableViewCell {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var mySwitch: UISwitch!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
