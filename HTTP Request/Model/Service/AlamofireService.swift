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
                    users.append(AlamofireService.map(user))
                }
                hander(users)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    static func map(_ value: JSON) -> User{
        let guid = value["guid"].string!
        let index = value["index"].int!
        let favoriteFruit = value["favoriteFruit"].string!
        let company = value["company"].string!
        let email = value["email"].string!
        let picture = value["picture"].string!
        let tags = value["tags"].array!.compactMap({ $0.string! })
        let registered = value["registered"].string!
        let eyeColor = value["eyeColor"].string!
        let phone = value["phone"].string!
        let address = value["address"].string!
        var friends = [Friend]()
        if let friendsList = value["friends"].array{
            for friend in friendsList{
                friends.append(Friend(id: friend["id"].int!, name: friend["name"].string!))
            }
        }
        let isActive = value["isActive"].bool!
        let about = value["about"].string!
        let balance = value["balance"].string!
        let name = value["name"].string!
        let gender = value["gender"].string!
        let age = value["age"].int!
        let greeting = value["greeting"].string!
        let longitude = value["longitude"].float!
        let latitude = value["latitude"].float!
        let _id = value["_id"].string!
        
        let user = User(guid: guid, index: index, favoriteFruit: favoriteFruit, company: company, email: email, picture: picture, tags: tags, registered: registered, eyeColor: eyeColor, phone: phone, address: address, friends: friends, isActive: isActive, about: about, balance: balance, name: name, gender: gender, age: age, greeting: greeting, longitude: longitude, latitude: latitude, _id: _id)
        return user
    }
}
