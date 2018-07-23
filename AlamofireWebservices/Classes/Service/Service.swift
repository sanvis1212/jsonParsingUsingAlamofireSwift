//
//  Service.swift
//  AlamofireWebservices
//
//  Created by Sandeep_Vishwakarma on 7/5/18.
//  Copyright © 2018 sandeep. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class Service {
    
    static let sharedInstance = Service()
    
    private init(){
        
    }
    
    //MARK:- Networking with Almofire
    
    //MARK:- Get user data
    
    func getUserData(onComplition:@escaping (JSON) -> Void) {
        Alamofire.request(ConstantTexts.getUserData.rawValue , method: .get).responseJSON{
            response in
            switch response.result {
            case.success(let data):
                let response = JSON(data)
                onComplition(response)
            case.failure(let error):
                onComplition(nil)
            }
        }
    }
    
    //MARK:- Get Album Data
    
    func getAlbumData(onComplition:@escaping (JSON) -> Void) {
        Alamofire.request(ConstantTexts.getAlbumData.rawValue,method: .get).responseJSON{
            response in
            switch response.result {
            case .success(let data):
                let response = JSON(data)
                onComplition(response)
            case .failure(let error):
                onComplition(nil)
            }
        }
    }
    
    //MARK:- Get Images Data
    
    func getImageData(){
        Alamofire.request(ConstantTexts.getImageData.rawValue,method: .get).responseJSON{ (response) in
            switch response.result {
            case .success(let data):
                let myResponse = PhotoModel(JSONString: "\(data)")
            case .failure(let error): break
            }
        }
    }
    
}
