//
//  ViewController.swift
//  AlamofireWebservices
//
//  Created by Sandeep_Vishwakarma on 6/26/18.
//  Copyright © 2018 sandeep. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    //MARK:- All IBOutlet
    
    
    //MARK:- All Propertise
    
    @IBOutlet weak var userTableView: UITableView!
    var userDetail: [UserModel]? = [UserModel]()

    //MARK- View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fetchResponse()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    //MARK:- fetch data
    
    func fetchResponse(){
        Service.sharedInstance.getUserData(){
            (userJSON) -> Void in
            if userJSON != nil {
                for singleUser in 0..<userJSON.count {
                    let user = UserModel(userJSON: userJSON[singleUser])
                    self.userDetail?.append(user)
                }
                DispatchQueue.main.async {
                    self.userTableView.reloadData()
                }
            }
        }
    }
}
