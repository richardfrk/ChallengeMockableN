//
//  StadiumWorldCupTableViewCell.swift
//  ChallengeMockableN
//
//  Created by Richard Frank on 24/04/17.
//  Copyright © 2017 Richard Frank. All rights reserved.
//

import UIKit

class StadiumWorldCupTableViewCell: UITableViewCell {

    @IBOutlet weak var stadiumWorldCupPhotoImageView: UIImageView!
    @IBOutlet weak var stadiumWorldCupNameLabel: UILabel!
    @IBOutlet weak var stadiumWorldCupDescriptionLabel: UILabel!
    @IBOutlet weak var stadiumWorldCupCityLabel: UILabel!
    @IBOutlet weak var stadiumWorldCupGamesLabel: UILabel!
    @IBOutlet weak var stadiumWorldCupCapacityLabel: UILabel!
    @IBOutlet weak var stadiumWorldCupImportantGameLabel: UILabel!
    
    public func configureCell(data: StadiumModel) {
        
        
    }
}
