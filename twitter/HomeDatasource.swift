//
//  HomeDatasource.swift
//  twitter
//
//  Created by wakabashi on 2017/03/14.
//  Copyright © 2017年 wakabayashi. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource{
    let users: [User] = {
        let brainUser = User(name: "Tset", username: "@testsetest", bioText: "iPhone, iPad and ios programign . Join suiPhone, iPad and ios programign . Join suiPhone, iPad and ios programign . Join suiPhone, iPad and ios programign . Join suiPhone, iPad and ios programign . Join suiPhone, iPad and ios programign . Join susdfigjkfldbmldfbmvodifljvmdpxvjmdo", profileImage: #imageLiteral(resourceName: "profile_image"))
        let rayUser = User(name: "Ray", username: "@iouoij", bioText: "ouoijoijoijoijporisgjposedifbjsdflbiofjboijdfpbosjdpbfjsidfbijoidfjpviPhone, iPad and ios programign . Join suiPhone, iPad and ios programign . Join suiPhone, iPad and ios programign . Join suiPhone, iPad and ios programign . Join suiPhone, iPad and ios programign . Join suiPhone, iPad and ios programign . Join su", profileImage: #imageLiteral(resourceName: "profile_image"))

        let kindleUser = User(name: "kindleUser", username: "@kindleUser", bioText: " and ios programign . Join suiPhone, iPad and ios programign . Join suiPhone, iPad and ios programign . Join suiPhone, iPad and ios programign . Join su", profileImage: #imageLiteral(resourceName: "profile_image"))

        
        return [brainUser, rayUser, kindleUser]
    }()
    
    //let words = ["user1", "user2", "user3"]
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self, TwitterCell.self]
    }
    
    //item
    override func item(_ indexPath: IndexPath) -> Any? {
        return users[indexPath.item]
    }
    
    override func numberOfSections() -> Int {
        return 2
    }
    
    let tweets = ["tw1", "tw2"]
    
    //number
    override func numberOfItems(_ section: Int) -> Int {
        if section == 1{
            return tweets.count
        }
        return users.count
    }
}
