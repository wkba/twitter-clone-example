//
//  TwitterCell.swift
//  twitter
//
//  Created by wakabashi on 2017/03/15.
//  Copyright © 2017年 wakabayashi. All rights reserved.
//

import LBTAComponents

class TwitterCell: DatasourceCell{
    
    let profileImageView: UIImageView = {
        let view = UIImageView()
        view.image = #imageLiteral(resourceName: "profile_image")
        view.layer.cornerRadius = 5
        view.clipsToBounds = true
        return view
    }()
    
    override func setupViews() {
        super.setupViews()
        backgroundColor = .white
        separatorLineView.backgroundColor = UIColor(r: 230, g: 230, b: 230)
        separatorLineView.isHidden = false
        
        addSubview(profileImageView)
        profileImageView.anchor(topAnchor, left: leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)
    }
    
}
