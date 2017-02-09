//
//  ProfileSettingVC.swift
//  ProfileSettingUV
//
//  Created by Appinventiv on 08/02/17.
//  Copyright © 2017 Appinventiv. All rights reserved.
//

import UIKit
// MARK: UITableViewDataSource,UITableViewDelegate

class ProfileSettingVC: UIViewController, UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var ProfileSettingTV: UITableView!
    
    var infoLArray : [[String:String]]=[
        ["label":"FULL NAME","value" : "jhon Smith"],
        ["label": "EMALE","value" : "jhonsmith@address.com"],
        ["label": "PASSWORD","value" : "**********"],
        ["label":"BIRTHDAY","value" : "August 26,1996"],
        ["label":  "GENDER","value" : "MALE"],
        ["label":  "HEIGHT","value" : "6'0''"],
        ["label": "WEIGHT","value" : "155 lbs"]
    ]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ProfileSettingTV.dataSource = self
        self.ProfileSettingTV.delegate = self
       
        let nib = UINib(nibName: "ProfileSubinfoCell", bundle: nil)
        ProfileSettingTV.register(nib, forCellReuseIdentifier: "ProfileSubInfoCellID" )
       // Do any additional setup after loading the view.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    // MARK: TABLEVIEW FUNCTION
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        tableView.endEditing(true)
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0
        {
            
            let cell = tableView.dequeueReusableCell(withIdentifier: "profilecellID", for: indexPath) as! ProfileCell
            
            return cell

        }
        else if indexPath.row ==  infoLArray.count + 1{
            
            let cell = tableView.dequeueReusableCell(withIdentifier:  "ProfileSubmitcellID", for: indexPath) as! profilesubmit
            return cell
            
        }
        else if indexPath.row == infoLArray.count + 2{
            
            let cell = tableView.dequeueReusableCell(withIdentifier:  "ProfileSubInfoCellID", for: indexPath) as! ProfileSubinfoCell
            
            return cell
        }
        else{
           
            let cell = tableView.dequeueReusableCell(withIdentifier: "infocellID", for: indexPath) as! profileInfo
            cell.infol.text = infoLArray[indexPath.row - 1]["label"]
            cell.infoTF.text = infoLArray[indexPath.row - 1]["value"]
            return cell

            
        }
        

}
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    
        if indexPath.row == 0{
            return 210
    }
    else if indexPath.row == 10{
            return 158
    }
    else{
            return 62
    }
    
}
    
}

// MARK: PROFILE  CELL
class ProfileCell : UITableViewCell
{
    
    @IBOutlet weak var profileIV: UIImageView!
        @IBOutlet weak var profileBT: UIButton!
    override func awakeFromNib() {
        
        super.awakeFromNib()
        profileIV.layer.cornerRadius = profileIV.frame.width/2
        profileBT.layer.cornerRadius = profileBT.frame.width/2
        
    }
}

// MARK: INFO CELL

class profileInfo : UITableViewCell
{
    
    @IBOutlet weak var infol: UILabel!
    @IBOutlet weak var infoTF: UITextField!
}

// MARK: SUBMIT 

class profilesubmit : UITableViewCell
{
    
    @IBOutlet weak var submitBT: UIButton!
    
    override func awakeFromNib() {
        
        super.awakeFromNib()
        submitBT.layer.cornerRadius = submitBT.frame.width/10
    }

}
