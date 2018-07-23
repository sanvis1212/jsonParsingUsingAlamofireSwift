//
//  PhotoViewC+TableView.swift
//  AlamofireWebservices
//
//  Created by Sandeep_Vishwakarma on 7/9/18.
//  Copyright © 2018 sandeep. All rights reserved.
//

import Foundation
import UIKit

extension PhotoViewC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource?.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "PhotoTableViewCell", for: indexPath) as? PhotoTableViewCell else {
            fatalError("UnExpected IndexPath")
        }
        cell.albumIDLabel.text = dataSource[indexPath.row].name 
    }
}

extension PhotoViewC: UITableViewDelegate {
    
}
