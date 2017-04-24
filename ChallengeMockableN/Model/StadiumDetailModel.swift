//
//  StadiumDetailModel.swift
//  ChallengeMockableN
//
//  Created by Richard Frank on 24/04/17.
//  Copyright © 2017 Richard Frank. All rights reserved.
//

import Foundation
import SwiftyJSON
import RealmSwift

struct StadiumDetailModel {
    
    var name: String?
    
    init(_ json: JSON) {
        
        self.name = json["name"].stringValue
    }
}
