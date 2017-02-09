//
//  TableViewCell.swift
//  ProfileSettingUV
//
//  Created by Appinventiv on 09/02/17.
//  Copyright © 2017 Appinventiv. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var infoLable: UILabel!
    @IBOutlet weak var infoTextField: UITextField!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
//    func configureWithData() {
//        
//        titleLabel.text = data["title"]
//        titleTextField.text = data["placeholder"]
//    }


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func  changeTheValue(_ infoLArray : [String:String]) {
        
         infoLable.text = infoLArray["label"]
        infoTextField.text = infoLArray["value"]

    }
    
    
}
