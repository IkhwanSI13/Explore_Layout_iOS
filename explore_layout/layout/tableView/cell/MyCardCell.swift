//
//  MyCardCell.swift
//  explore_layout
//
//  Created by cartenz on 09/09/20.
//  Copyright © 2020 yukngoding. All rights reserved.
//

import UIKit

class MyCardCell: UITableViewCell {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
