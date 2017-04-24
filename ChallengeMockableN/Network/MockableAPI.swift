//
//  MockableAPI.swift
//  ChallengeMockableN
//
//  Created by Richard Frank on 23/04/17.
//  Copyright © 2017 Richard Frank. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MockableAPI {
    
    class func validateLogin(user: String, password: String, completionHandler: @escaping (UserModel)->()) {
        
        let vlParameters = [
        "name": user,
        "pass": password,
        ]
        
        Alamofire.request(AppConstant.baseURL+AppConstant.endpointSignin, parameters:vlParameters).validate().responseJSON { response in
        
            switch response.result {
            case .success(let value):
                
                completionHandler(UserModel(JSON(value)))
                
            case .failure(let error):
                print("Problems with login. \(error)")
            }
        }
    }
    
    class func getStadium(completionHandler: @escaping (StadiumModel)->()) {
        
        Alamofire.request(AppConstant.baseURL+AppConstant.endpointStadium).validate().responseJSON { response in

            switch response.result {
            case .success(let value):
                
                completionHandler(StadiumModel(JSON(value)))
                
            case .failure(let error):
                
                print("Problems with request. \(error)")
            }
        }
    }
    
    class func getStadiumDetail(url: String, completionHandler: @escaping (StadiumDetailModel)->()) {
        
        Alamofire.request(url).validate().responseJSON { response in
            
            switch response.result {
            case .success(let value):
                
                completionHandler(StadiumDetailModel(JSON(value)))
                
            case .failure(let error):
                
                print("Problems with request. \(error)")
            }
        }
    }
}
