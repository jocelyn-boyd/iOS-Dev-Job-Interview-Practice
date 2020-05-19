//
//  UIHelper.swift
//  GHFollowers
//
//  Created by Jocelyn Boyd on 4/2/20.
//  Copyright © 2020 Jocelyn Boyd. All rights reserved.
//

import UIKit

enum UIHelper {
  
  static func createThreeColumnFlowLayout(in view: UIView) -> UICollectionViewFlowLayout{
    let width                         = view.bounds.width
    let padding: CGFloat              = 12
    let minimumItemSpacing: CGFloat   = 10
    let availableWidth                = width - (padding * 2) - (minimumItemSpacing * 2)
    let itemWidth                     = availableWidth / 3
    
    let flowlayout = UICollectionViewFlowLayout()
    flowlayout.sectionInset = UIEdgeInsets(top: padding, left: padding, bottom: padding, right: padding)
    flowlayout.itemSize = CGSize(width: itemWidth, height: itemWidth + 40)
    
    
    return flowlayout
  }
  
}
