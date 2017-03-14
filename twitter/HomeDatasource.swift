//
//  HomeDatasource.swift
//  twitter
//
//  Created by wakabashi on 2017/03/14.
//  Copyright © 2017年 wakabayashi. All rights reserved.
//

import LBTAComponents

class HomeDatasource: Datasource{
    let words = ["user1", "user2", "user3"]
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    
    //item
    override func item(_ indexPath: IndexPath) -> Any? {
        return words[indexPath.item]
    }
    
    
    //number
    override func numberOfItems(_ section: Int) -> Int {
        return words.count
    }
}
