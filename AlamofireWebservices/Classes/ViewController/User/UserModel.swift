//
//  UserModel.swift
//  AlamofireWebservices
//
//  Created by Sandeep_Vishwakarma on 7/5/18.
//  Copyright © 2018 sandeep. All rights reserved.
//

import Foundation
import SwiftyJSON

class UserModel {
    
    var id: String?
    var name: String?
    var userName: String?
    var email: String?
    var address: Address?
    var phone: String?
    var website: String?
    var company: Company?
    
    init(userJSON: JSON){
        self.id = userJSON["id"].stringValue
        self.name = userJSON["name"].stringValue
        self.userName = userJSON["username"].stringValue
        self.email = userJSON["email"].stringValue
        self.address = Address(addressJSON: userJSON)
        self.phone = userJSON["phone"].stringValue
        self.company = Company(companyJSON: userJSON)
    }
}

class Address {
    
    var street: String?
    var suite: String?
    var city: String?
    
    init(addressJSON:JSON) {
        self.street = addressJSON["address"]["street"].stringValue
        self.suite = addressJSON["address"]["suite"].stringValue
        self.city = addressJSON["address"]["city"].stringValue
    }
}

class Company {
    
    var name: String?
    var bs: String?
    
    init(companyJSON:JSON){
        self.name = companyJSON["city"]["name"].stringValue
        self.bs = companyJSON["city"]["bs"].stringValue
    }
}


