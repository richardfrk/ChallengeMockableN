//
//  StadiumTableViewCell.swift
//  ChallengeMockableN
//
//  Created by Richard Frank on 23/04/17.
//  Copyright © 2017 Richard Frank. All rights reserved.
//

import UIKit

class StadiumTableViewCell: UITableViewCell {

    @IBOutlet weak var stadiumPhotoImageView: UIImageView!
    @IBOutlet weak var stadiumNameLabel: UILabel!
    @IBOutlet weak var stadiumDescriptionLabel: UILabel!
    @IBOutlet weak var stadiumCityLabel: UILabel!
    
    public func configureCell(data: StadiumModel) {
        
        stadiumNameLabel.text = data.smName
    }

}
