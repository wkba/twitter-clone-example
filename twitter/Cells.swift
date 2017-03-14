//
//  Cells.swift
//  twitter
//
//  Created by wakabashi on 2017/03/14.
//  Copyright © 2017年 wakabayashi. All rights reserved.
//

import LBTAComponents

class UserHeader: DatasourceCell {
    override func setupViews() {
        super.setupViews()
        backgroundColor = .blue
    }
}

class UserFooter: DatasourceCell {
    override func setupViews() {
        super.setupViews()
        backgroundColor = .green
    }
}

class UserCell: DatasourceCell {
    
    override var datasourceItem: Any?{
        didSet{
            nameLabel.text = datasourceItem as? String
        }
    }
    
    let nameLabel : UILabel = {
        let label = UILabel()
        label.text = "test test test"
        return label
    }()
    override func setupViews() {
        super.setupViews()
        backgroundColor = .yellow
        
        addSubview(nameLabel)
        nameLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}
