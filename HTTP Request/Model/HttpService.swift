//
//  HttpRequest.swift
//  HTTP Request
//
//  Created by PM Academy 3 on 7/4/18.
//  Copyright © 2018 PM Academy 3. All rights reserved.
//

import Foundation
class HttpService {
    static func makeRequest(callBack: @escaping ([User]) -> () ){
        guard let url = URL(string: ServerEnvironment.urlString) else {return}
        URLSession.shared.dataTask(with: url) { (data, _, error) in
            DispatchQueue.main.async {
                if let error = error {
                    print("error - makeHttpRequest() - ", error)
                    return
                }
                guard let data = data
                    else {
                        print("cannot let data = data")
                        return
                }
                do {
                    print(String(NSString(data: data, encoding: String.Encoding.utf8.rawValue)!))
                    let decoder = JSONDecoder()
                    var users = [User]()
                    users = try decoder.decode([User].self, from: data)
                    print("user count from http: \(users.count)")
                    callBack(users)
                }catch let error {
                    print("error - makeHttpRequest() - ",error)
                }
            }
            }.resume()
    }
}

