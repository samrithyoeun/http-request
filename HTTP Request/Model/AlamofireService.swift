//
//  AlmofireService.swift
//  HTTP Request
//
//  Created by PM Academy 3 on 7/4/18.
//  Copyright © 2018 PM Academy 3. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class AlamofireService {
    static func makeRequest(hander: @escaping ([User]) -> () ){
        let url = URL(string: ServerEnvironment.urlString)!
        Alamofire.request(url, method: .get).validate().responseJSON { response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                var users = [User]()
                for user in json.arrayValue{
                    users.append(User.map(user))
                }
                hander(users)
            case .failure(let error):
                print(error)
            }
        }
    }
}
