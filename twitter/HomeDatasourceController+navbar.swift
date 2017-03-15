//
//  HomeDatasourceController+navbar.swift
//  twitter
//
//  Created by wakabashi on 2017/03/15.
//  Copyright © 2017年 wakabayashi. All rights reserved.
//

import UIKit
extension HomeDatasourceController{
    func setupNavigationBarItems(){
        setupRemainingNavItems()
        setupLeftNavItem()
        setupRightNavItems()
    }
    
     func setupRemainingNavItems(){
        let titleImageView = UIImageView(image: #imageLiteral(resourceName: "title"))
        titleImageView.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        titleImageView.contentMode = .scaleAspectFit
        navigationItem.titleView = titleImageView
        navigationController?.navigationBar.backgroundColor = .white
        //完璧な白にするために .isTranslucent = false
        navigationController?.navigationBar.isTranslucent = false
    }
    
    private func setupLeftNavItem(){
        let followButton = UIButton(type: .system)
        followButton.setImage(#imageLiteral(resourceName: "follow").withRenderingMode(.alwaysOriginal), for: .normal)
        followButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: followButton)
    }
    
    private func setupRightNavItems(){
        let searchButton = UIButton(type: .system)
        searchButton.setImage(#imageLiteral(resourceName: "search").withRenderingMode(.alwaysOriginal), for: .normal)
        searchButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        let composeButton = UIButton(type: .system)
        composeButton.setImage(#imageLiteral(resourceName: "compose").withRenderingMode(.alwaysOriginal), for: .normal)
        composeButton.frame = CGRect(x: 0, y: 0, width: 34, height: 34)
        
        navigationItem.rightBarButtonItems = [UIBarButtonItem(customView: composeButton),UIBarButtonItem(customView: searchButton)]
    }

}
