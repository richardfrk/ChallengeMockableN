//
//  MockableAPI.swift
//  ChallengeMockableN
//
//  Created by Richard Frank on 23/04/17.
//  Copyright © 2017 Richard Frank. All rights reserved.
//

import Foundation
import Alamofire

enum MockableResult {
    
    case success
    case failure
}

class MockableAPI {
    
    class func getStadium() {
        
        Alamofire.request(AppConstants.baseURL+AppConstants.endpointStadium).responseJSON { response in
            print(response.request)  // original URL request
            print(response.response) // HTTP URL response
            print(response.data)     // server data
            print(response.result)   // result of response serialization
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
        }
    }
    
    class func getStadiumDetail() {
        
    }
}
