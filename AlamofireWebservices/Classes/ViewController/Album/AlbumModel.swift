//
//  AlbumModel.swift
//  AlamofireWebservices
//
//  Created by Sandeep_Vishwakarma on 7/6/18.
//  Copyright © 2018 sandeep. All rights reserved.
//

import Foundation
import SwiftyJSON

class AlbumModel {
    
    var userID: String?
    var id: String?
    var title: String?
    
    init(albumJSON: JSON) {
        userID = albumJSON["userId"].stringValue
        id = albumJSON["id"].stringValue
        title = albumJSON["title"].stringValue
    }
}
