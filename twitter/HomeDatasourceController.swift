//
//  HomeDatasourceController.swift
//  twitter
//
//  Created by wakabashi on 2017/03/14.
//  Copyright © 2017年 wakabayashi. All rights reserved.
//

import LBTAComponents


class HomeDatasourceController: DatasourceController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let homeDatasource = HomeDatasource()
        self.datasource = homeDatasource
    }
    
    //セルの間のスペース
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    //ヘッダーサイズ
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    // フッターサイズ
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        return CGSize(width: view.frame.width, height: 50)
    }
    
    //セルごとのサイズ
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if let user = self.datasource?.item(indexPath) as? User{
           //自己紹介文の高さを予想する
            //写真の文の横幅を引いている。
            let approximatedWidthOfBioTextView = view.frame.width - 12 - 50 - 12 - 2
            let size = CGSize(width: approximatedWidthOfBioTextView, height: 1000)
            // cellの自己紹介のフォントの大きさに合わせてる
            let attributes = [NSFontAttributeName: UIFont.systemFont(ofSize: 15)]
            let estimatedFrame = NSString(string: user.bioText)
                .boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
            // 名前とユーザネームの文の高さを追加する
            return CGSize(width: view.frame.width, height: estimatedFrame.height + 66)
        }
 
        
        
        return CGSize(width: view.frame.width, height: 200)
    }
}
