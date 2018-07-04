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
        setUpUI()
        
    }
    
    private func setUpUI(){
        let user = users[0]
        nameLabel.text = user.name
        var status: String
        if user.isActive == true { status = "active" } else { status = "deactive" }
        basicInfoLabel.text = "Gender: \(user.gender), Age: \(user.age), Status: \(status)"
        greetingLabel.text = user.greeting
        aboutLabel.text = user.about
        userImageView.image = UIImage(contentsOfFile: user.picture)
        phoneLabel.text = user.phone
        addressLabel.text = user.address
        balanceLabel.text = user.balance
        companyLabel.text = user.company
        registerLabel.text = user.registered
        locationLabel.text = "\(user.latitude), \(user.longitude)"
        eyeColorLabel.text = user.eyeColor
        tagLabel.text = user.tags.joined(separator: ", ")
        favouriteFruitLabel.text = user.favoriteFruit
        emailLabel.text = user.email
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users[0].friends.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "friend cell") as! FriendCell
        let friend = users[0].friends[indexPath.row]
        cell.BindData(with: friend)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Friends: "
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
}


