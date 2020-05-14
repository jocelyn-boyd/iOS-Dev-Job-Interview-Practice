//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by Jocelyn Boyd on 5/13/20.
//  Copyright © 2020 Jocelyn Boyd. All rights reserved.
//

import UIKit

class GFRepoItemVC: GFItemInfoVC {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    configureItems()
  }
  
  
  private func configureItems() {
    itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
    itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
    actionButton.set(backgrounColor: .systemPurple, title: "Github Profile")
  }
  
  override func actionButtonTapped() {
    delegate.didTapGitHubProfile(for: user)
  }
  
}
