//
//  FavoriteListVC.swift
//  GHFollowers
//
//  Created by Jocelyn Boyd on 3/26/20.
//  Copyright © 2020 Jocelyn Boyd. All rights reserved.
//

import UIKit

class FavoritesListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBlue
      
      PersistenceManager.retrieveFavorites { (result) in
        switch result {
        case .success(let favorites):
          print(favorites)
        case .failure(let error):
          break
        }
      }
    }
  
  
}
