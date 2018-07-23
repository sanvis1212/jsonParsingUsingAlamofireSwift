//
//  UserTableViewCell.swift
//  AlamofireWebservices
//
//  Created by Sandeep_Vishwakarma on 7/5/18.
//  Copyright © 2018 sandeep. All rights reserved.
//

import UIKit

class UserTableViewCell: UITableViewCell {

    //MARK:- All IBOutlet
    
    @IBOutlet weak var idLabel: UILabel!
    
    //MARK:- Awake function
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
