//
//  StadiumModel.swift
//  ChallengeMockableN
//
//  Created by Richard Frank on 24/04/17.
//  Copyright © 2017 Richard Frank. All rights reserved.
//

import Foundation
import SwiftyJSON

struct StadiumModel {
    
    var smName: String?
    var smUrl: String?
    
    init(_ json: JSON) {
        
        self.smName = json[0]["name"].stringValue
        self.smUrl = json[0]["url"].stringValue
    }

}
