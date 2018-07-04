//
//  FriendCell.swift
//  HTTP Request
//
//  Created by PM Academy 3 on 7/4/18.
//  Copyright © 2018 PM Academy 3. All rights reserved.
//

import UIKit

class FriendCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    
    func BindData(with friend: Friend){
        nameLabel.text = friend.name
    }
}
