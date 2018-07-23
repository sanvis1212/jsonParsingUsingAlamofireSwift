//
//  PhotoModel.swift
//  AlamofireWebservices
//
//  Created by Sandeep_Vishwakarma on 7/9/18.
//  Copyright © 2018 sandeep. All rights reserved.
//

import Foundation
import ObjectMapper


//class PhotoApiResponse:Mappable {
//    
//    var photo: [PhotoModel]?
//    
//    required init?(map: Map) {
//        
//    }
//    
//    func mapping(map: Map) {
//        photo <- map[""]
//    }
//    
//}

class PhotoModel : Mappable {
    
    var albumId: String?
    var id: String?
    var title: String?
    var url: String?
    var thumbUrl: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        albumId <- map["albumId"]
        id <- map["id"]
        title <- map["title"]
        url <- map["url"]
        thumbUrl <- map["thumbnailUrl"]
    }
    
}

