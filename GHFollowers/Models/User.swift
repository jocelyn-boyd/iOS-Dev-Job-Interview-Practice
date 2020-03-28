//
//  User.swift
//  GHFollowers
//
//  Created by Jocelyn Boyd on 3/28/20.
//  Copyright © 2020 Jocelyn Boyd. All rights reserved.
//

import Foundation

struct User: Codable {
  var login: String
  var avatar_url: String
  var name: String?
  var location: String?
  var bio: String?
  var public_repos: Int
  var public_gists: Int
  var html_url: String
  var following: Int
  var followers: Int
  var created_at: String
}

