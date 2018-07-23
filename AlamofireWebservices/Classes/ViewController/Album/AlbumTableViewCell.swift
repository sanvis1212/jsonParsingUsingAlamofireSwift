//
//  AlbumTableViewCell.swift
//  AlamofireWebservices
//
//  Created by Sandeep_Vishwakarma on 7/6/18.
//  Copyright © 2018 sandeep. All rights reserved.
//

import UIKit

class AlbumTableViewCell: UITableViewCell {

    //MARK:- All IBOutlet
    
    @IBOutlet weak var userIdLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    //MARK:- Awake function
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
