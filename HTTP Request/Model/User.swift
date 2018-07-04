//
//  User.swift
//  HTTP Request
//
//  Created by PM Academy 3 on 7/4/18.
//  Copyright © 2018 PM Academy 3. All rights reserved.
//

import Foundation
import SwiftyJSON

struct User: Decodable {
    var guid: String
    var index: Int
    var favoriteFruit: String
    var company: String
    var email: String
    var picture: String
    var tags: [String]
    var registered: String
    var eyeColor: String
    var phone: String
    var address: String
    var friends: [Friend]
    var isActive: Bool
    var about: String
    var balance: String
    var name: String
    var gender: String
    var age: Int
    var greeting: String
    var longitude: Float
    var latitude: Float
    var _id: String
    
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
        print("=======================")
        print(user)
        print("=======================")
        return user
    }
}
