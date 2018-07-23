//
//  AlbumDataViewC+TableView.swift
//  AlamofireWebservices


import Foundation
import UIKit

extension AlbumDataViewC: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}

extension AlbumDataViewC: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return albumData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "AlbumTableViewCell", for: indexPath) as? AlbumTableViewCell else {
            fatalError("Unexpected IndexPath")
        }
        let album = albumData[indexPath.row]
        cell.userIdLabel.text = album.userID
        cell.idLabel.text = album.id
        cell.titleLabel.text = album.title
        return cell
    }
}
