//
//  GFFollowerItemVC.swift
//  GHFollowers
//
//  Created by Jocelyn Boyd on 5/13/20.
//  Copyright © 2020 Jocelyn Boyd. All rights reserved.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureItems()
  }
  
  
  private func configureItems() {
    itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
    itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
    actionButton.set(backgrounColor: .systemGreen, title: "Get Followers")
  }
}
