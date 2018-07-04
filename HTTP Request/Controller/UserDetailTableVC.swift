//
//  UserDetailTableVC.swift
//  HTTP Request
//
//  Created by PM Academy 3 on 7/4/18.
//  Copyright © 2018 PM Academy 3. All rights reserved.
//

import UIKit

class UserDetailTableVC: UITableViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var basicInfoLabel: UILabel!
    @IBOutlet weak var greetingLabel: UILabel!
    @IBOutlet weak var aboutLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var balanceLabel: UILabel!
    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var registerLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var eyeColorLabel: UILabel!
    @IBOutlet weak var tagLabel: UILabel!
    @IBOutlet weak var favouriteFruitLabel: UILabel!
    @IBOutlet weak var emailLabel: UILabel!
    
  var users = [User]()	
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func setUpUI(){
        let user = users[0]
        nameLabel.text = user.name
        var status: String
        if user.isActive == true { status = "active" } else { status = "deactive" }
        basicInfoLabel.text = "Gender: \(user.gender), Age: \(user.age), Status: \(status)"
    }
}
