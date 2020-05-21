//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by Jocelyn Boyd on 5/20/20.
//  Copyright © 2020 Jocelyn Boyd. All rights reserved.
//

import UIKit

extension UIView {
  
  // variadic paramerter
  func addSubviews(_ views: UIView...) {
    for view in views { addSubview(view) }
  }
  
}
