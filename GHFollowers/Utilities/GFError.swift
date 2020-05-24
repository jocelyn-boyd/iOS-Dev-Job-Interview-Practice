//
//  GFError.swift
//  GHFollowers
//
//  Created by Jocelyn Boyd on 3/28/20.
//  Copyright © 2020 Jocelyn Boyd. All rights reserved.
//

import Foundation

enum GFError: String, Error {
  case invalidUsername  	= "This username created an invalid request. Please try again"
  case unableToComplete 	= "Unable to complete your request. Please check your internet connection."
  case invalidResponse  	= "Invalid responce from the server. Please try again."
  case invalidData      	= "The data recieved from the server was invalid. Please try again."
  case unableToFavorite 	= "There was an error favoriting this user. Please try again."
  case alreadyFavorites 	= "You've already favorited this user. You must really like them!"
}
