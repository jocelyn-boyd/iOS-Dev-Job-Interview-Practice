//
//  GFButton.swift
//  GHFollowers
//
//  Created by Jocelyn Boyd on 3/27/20.
//  Copyright © 2020 Jocelyn Boyd. All rights reserved.
//

import UIKit

class GFButton: UIButton {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    configure()
  }
  
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  
  init(backgroundColor: UIColor, title: String) {
    super.init(frame: .zero)
    self.backgroundColor = backgroundColor
    self.setTitle(title, for: .normal)
    configure()
  }
  
  
  private func configure() {
    layer.cornerRadius      = 10
    setTitleColor(.white, for: .normal)
    titleLabel?.font        = UIFont.preferredFont(forTextStyle: .headline)
    translatesAutoresizingMaskIntoConstraints = false
  }
  
  func set(backgrounColor: UIColor, title: String) {
    self.backgroundColor = backgrounColor
    setTitle(title, for: .normal)
  }
}


