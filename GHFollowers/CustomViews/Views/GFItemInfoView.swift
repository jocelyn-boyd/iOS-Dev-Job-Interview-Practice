//
//  GFItemInfoView.swift
//  GHFollowers
//
//  Created by Jocelyn Boyd on 5/13/20.
//  Copyright © 2020 Jocelyn Boyd. All rights reserved.
//

import UIKit

enum ItemIntoType {
  case repos, gists, followers, following
}


class GFItemInfoView: UIView {

  let symbolimageView = UIImageView()
  let titleLabel = GFTitleLabel(textAlignment: .left, fontSize: 14)
  let countLabel = GFTitleLabel(textAlignment: .center, fontSize: 14)
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    configure()
  }
  
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  private func configure() {
    addSubview(symbolimageView)
    addSubview(titleLabel)
    addSubview(countLabel)
    
    symbolimageView.translatesAutoresizingMaskIntoConstraints = false
    symbolimageView.contentMode = .scaleAspectFit
    symbolimageView.tintColor = .label
    
    NSLayoutConstraint.activate([
      symbolimageView.topAnchor.constraint(equalTo: self.topAnchor),
      symbolimageView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
      symbolimageView.widthAnchor.constraint(equalToConstant: 20),
      symbolimageView.heightAnchor.constraint(equalToConstant: 20),
      
      titleLabel.centerYAnchor.constraint(equalTo: symbolimageView.centerYAnchor),
      titleLabel.leadingAnchor.constraint(equalTo: symbolimageView.trailingAnchor, constant: 12),
      titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
      titleLabel.heightAnchor.constraint(equalToConstant: 18),
       
      countLabel.topAnchor.constraint(equalTo: symbolimageView.bottomAnchor, constant: 4),
      countLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
      countLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
      countLabel.heightAnchor.constraint(equalToConstant: 15)
    ])
  }
  
  func set(itemInfoType: ItemIntoType, withCount count: Int) {
    switch itemInfoType {
    case .repos:
      symbolimageView.image = UIImage(systemName: SFSymbols.repos )
      titleLabel.text = "Public Repos"
    case .gists:
      symbolimageView.image = UIImage(systemName: SFSymbols.gists )
      titleLabel.text = "Public Gists"
    case .followers:
      symbolimageView.image = UIImage(systemName: SFSymbols.followers )
      titleLabel.text = "Followers"
    case .following:
      symbolimageView.image = UIImage(systemName: SFSymbols.following )
      titleLabel.text = "Following"
    }
    
    countLabel.text = String(count)
  }
  
}
