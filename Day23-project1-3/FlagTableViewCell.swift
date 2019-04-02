//
//  FlagTableViewCell.swift
//  Day23-project1-3
//
//  Created by 李沐軒 on 2019/3/6.
//  Copyright © 2019 李沐軒. All rights reserved.
//

import UIKit

class FlagTableViewCell: UITableViewCell {
    
    @IBOutlet var flagImage: UIImageView!
    @IBOutlet var flagLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        flagImage.layer.borderWidth = 1
        flagImage.layer.borderColor = UIColor.lightGray.cgColor
        
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
