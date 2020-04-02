//
//  GFAvatarImageView.swift
//  GHFollowers
//
//  Created by Jocelyn Boyd on 4/2/20.
//  Copyright © 2020 Jocelyn Boyd. All rights reserved.
//

import UIKit

class GFAvatarImageView: UIImageView {
  
  let placeholderImage = UIImage(systemName: "avatar-placeholder")

  override init(frame: CGRect) {
    super.init(frame: frame)
    configure()
  }
  
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  private func configure() {
    layer.cornerRadius = 10
    clipsToBounds = true
    image = placeholderImage
    translatesAutoresizingMaskIntoConstraints = false
  }
  
}