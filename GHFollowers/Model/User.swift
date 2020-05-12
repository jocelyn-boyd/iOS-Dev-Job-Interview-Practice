//
//  User.swift
//  GHFollowers
//
//  Created by Jocelyn Boyd on 3/28/20.
//  Copyright © 2020 Jocelyn Boyd. All rights reserved.
//

import Foundation

struct User: Codable, Hashable {
  let login: String
  let avatarUrl: String
  var name: String?
  var location: String?
  var bio: String?
  let publicRepos: Int
  let publicGists: Int
  let htmlUrl: String
  let following: Int
  let followers: Int
  let createdAt: String
}

