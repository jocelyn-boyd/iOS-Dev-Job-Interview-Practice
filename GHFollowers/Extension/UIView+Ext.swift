//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by Jocelyn Boyd on 5/20/20.
//  Copyright © 2020 Jocelyn Boyd. All rights reserved.
//

import UIKit

extension UIView {
  
  func pinToEdges(of superview: UIView) {
    translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      topAnchor.constraint(equalTo: superview.topAnchor),
      leadingAnchor.constraint(equalTo: superview.leadingAnchor),
      trailingAnchor.constraint(equalTo: superview.trailingAnchor),
      bottomAnchor.constraint(equalTo: superview.bottomAnchor)
    ])
  }
  
  // variadic paramerter
  func addSubviews(_ views: UIView...) {
    for view in views { addSubview(view) }
  }
  
}
