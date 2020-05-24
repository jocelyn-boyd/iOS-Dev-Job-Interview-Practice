//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Jocelyn Boyd on 5/23/20.
//  Copyright © 2020 Jocelyn Boyd. All rights reserved.
//

import UIKit

extension UITableView {
  
  func reloadDataOnMainThread() {
    DispatchQueue.main.async { self.reloadData() }
  }
  
  func removeExcessCells() {
    tableFooterView = UIView(frame: .zero)
  }
  
}
