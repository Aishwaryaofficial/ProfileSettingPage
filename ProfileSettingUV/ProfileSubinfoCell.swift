//
//  ProfileSubinfoCell.swift
//  ProfileSettingUV
//
//  Created by Appinventiv on 08/02/17.
//  Copyright © 2017 Appinventiv. All rights reserved.
//

import UIKit

class ProfileSubinfoCell: UITableViewCell {

    @IBOutlet weak var Display_TF: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        Display_TF.text = "hello!!!"
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
