//
//  ViewController+TableView.swift
//  AlamofireWebservices


import Foundation
import UIKit

extension ViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (userDetail?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "UserTableViewCell", for: indexPath) as? UserTableViewCell else {
            fatalError("Unexpected Index Path")
        }
        let user = userDetail![indexPath.row]
        if userDetail![indexPath.row] != nil {
            cell.idLabel.text = user.name
        }
        return cell
    }
}
