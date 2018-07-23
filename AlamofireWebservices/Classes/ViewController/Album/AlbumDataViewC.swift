//
//  AlbumDataViewC.swift
//  AlamofireWebservices
//
//  Created by Sandeep_Vishwakarma on 7/6/18.
//  Copyright © 2018 sandeep. All rights reserved.
//

import UIKit

class AlbumDataViewC: UIViewController {
    
    //MARK:- All IBOutlet

    @IBOutlet weak var albumTableView: UITableView!
    
    //MARK:- All Propertise
    
    var albumData:[AlbumModel] = [AlbumModel]()
    
    //MARK:- View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.fetchAlbumData()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func fetchAlbumData(){
        Service.sharedInstance.getAlbumData() { (albumJSON) in
            if albumJSON != nil {
                let data = albumJSON
                for i in 0..<data.count {
                    let album = AlbumModel(albumJSON: data[i])
                    self.albumData.append(album)
                }
            }
            DispatchQueue.main.async {
                self.albumTableView.reloadData()
            }
        }
    }
}
