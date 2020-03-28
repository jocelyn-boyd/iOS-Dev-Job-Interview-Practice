//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Jocelyn Boyd on 3/27/20.
//  Copyright © 2020 Jocelyn Boyd. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {

  var username: String!
  
  
    override func viewDidLoad() {
        super.viewDidLoad()
      view.backgroundColor = .systemBackground
      navigationController?.navigationBar.prefersLargeTitles = true
    }
  
  
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.setNavigationBarHidden(false, animated: true)
  }
  
}
