//
//  UserModel.swift
//  ChallengeMockableN
//
//  Created by Richard Frank on 24/04/17.
//  Copyright © 2017 Richard Frank. All rights reserved.
//

import Foundation
import SwiftyJSON

struct UserModel {
    
    var login: Bool?
    var name: String?
    var email: String?
    
    init(_ json: JSON) {
        
        self.login = json["login"].bool
        self.name = json["user"]["name"].stringValue
        self.email = json["user"]["email"].stringValue
    }
}
