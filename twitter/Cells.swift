//
//  Cells.swift
//  twitter
//
//  Created by wakabashi on 2017/03/14.
//  Copyright © 2017年 wakabayashi. All rights reserved.
//

import LBTAComponents
let twitterBlue = UIColor(r: 61, g: 167, b: 244)


class UserHeader: DatasourceCell {
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "Who to follow"
        label.font = UIFont.systemFont(ofSize: 16)
        return label
    }()
    
    
    override func setupViews() {
        addSubview(textLabel)
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        super.setupViews()
    }
}

class UserFooter: DatasourceCell {
    let textLabel: UILabel = {
        let label = UILabel()
        label.text = "Show me more"
        label.font = UIFont.systemFont(ofSize: 15)
        label.textColor = twitterBlue
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        addSubview(textLabel)
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}

class UserCell: DatasourceCell {
    
    override var datasourceItem: Any?{
        didSet{
 //           nameLabel.text = datasourceItem as? String
        }
    }
    
    let profileImageView: UIImageView = {
        let view = UIImageView()
        view.image = #imageLiteral(resourceName: "profile_image")
        view.layer.cornerRadius = 5
        view.clipsToBounds = true
        return view
    }()
    

    let nameLabel : UILabel = {
        let label = UILabel()
        label.text = "wakabayashi Syun"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label
    }()
    
    let usernameLabel : UILabel = {
        let label = UILabel()
        label.text = "@wakaapp"
        label.font = UIFont.systemFont(ofSize :14)
        label.textColor = UIColor.lightGray
        return label
    }()
    
    let bioTextView : UITextView = {
        let textView = UITextView()
        textView.text = "iPhone, iPad and ios programign . Join suiPhone, iPad and ios programign . Join suiPhone, iPad and ios programign . Join su"
        textView.font = UIFont.systemFont(ofSize: 15)
        return textView
    }()
    
    let followButton:UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 5
        button.layer.borderColor = twitterBlue.cgColor
        button.layer.borderWidth = 1
        button.setTitle("Follow", for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.setTitleColor(twitterBlue, for: .normal)
        return button
    }()
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(profileImageView)
        addSubview(nameLabel)
        addSubview(usernameLabel)
        addSubview(bioTextView)
        addSubview(followButton)
        
        profileImageView.anchor(topAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
        
        nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: followButton.leftAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 20)
    
        usernameLabel.anchor(nameLabel.bottomAnchor, left: nameLabel.leftAnchor, bottom: nil, right: nameLabel.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20)
        
        bioTextView.anchor(usernameLabel.bottomAnchor, left: usernameLabel.leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: -4, leftConstant: -4, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
        followButton.anchor(topAnchor, left: nil, bottom: nil, right: rightAnchor, topConstant: 12, leftConstant: 0, bottomConstant: 0, rightConstant: 12, widthConstant: 120, heightConstant: 34)
    }
}
