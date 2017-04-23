//
//  StadiumTableViewController.swift
//  ChallengeMockableN
//
//  Created by Richard Frank on 23/04/17.
//  Copyright © 2017 Richard Frank. All rights reserved.
//

import UIKit

class StadiumTableViewController: UITableViewController {
    
    var dataSource = [
    "estadio01":"01",
    "estadio02":"02"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        MockableAPI.getStadium()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataSource.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: AppConstants.cellIDStadium, for: indexPath) as! StadiumTableViewCell
        
        cell.configureCell()
        
        return cell
    }
}
