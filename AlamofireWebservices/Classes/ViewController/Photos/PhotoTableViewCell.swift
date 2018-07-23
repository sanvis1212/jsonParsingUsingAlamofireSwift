//
//  PhotoTableViewCell.swift
//  AlamofireWebservices
//
//  Created by Sandeep_Vishwakarma on 7/9/18.
//  Copyright © 2018 sandeep. All rights reserved.
//

import UIKit

class PhotoTableViewCell: UITableViewCell {

    //MARK:- All IBOutlet
    
    @IBOutlet weak var albumIDLabel: UILabel!
    @IBOutlet weak var idLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var PhotoImageView: UIImageView!
    
    //MARK:- Awake Function
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
