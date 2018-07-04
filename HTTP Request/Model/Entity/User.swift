//
//  User.swift
//  HTTP Request
//
//  Created by PM Academy 3 on 7/4/18.
//  Copyright © 2018 PM Academy 3. All rights reserved.
//

import Foundation

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
}
