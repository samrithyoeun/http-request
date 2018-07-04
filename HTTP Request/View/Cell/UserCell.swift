//
//  UserCell.swift
//  HTTP Request
//
//  Created by PM Academy 3 on 7/4/18.
//  Copyright © 2018 PM Academy 3. All rights reserved.
//

import UIKit

class UserCell: UITableViewCell {

    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var genderLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var balanceLabel: UILabel!
    
    func bindFrom(_ user: User){
        userImageView.image = UIImage(contentsOfFile: user.picture)
        nameLabel.text = user.name
        genderLabel.text = "Gender : " + user.gender
        phoneLabel.text = "TEL: " + user.phone
        balanceLabel.text = "BAL: " + user.balance
    }
}
