//
//  StadiumTableViewController.swift
//  ChallengeMockableN
//
//  Created by Richard Frank on 23/04/17.
//  Copyright © 2017 Richard Frank. All rights reserved.
//

import UIKit

class StadiumTableViewController: UITableViewController {
    
    var dataSource: [StadiumModel]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
    }
    
    public func loadData() {
        
        MockableAPI.getStadium { (result) in
            
            self.dataSource.append(result)
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return dataSource.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: AppConstant.cellIDStadium, for: indexPath) as! StadiumTableViewCell
        
        cell.configureCell(data: (dataSource[indexPath.row]))
        
        return cell
    }
}
