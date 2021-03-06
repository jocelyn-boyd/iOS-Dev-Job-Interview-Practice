//
//  ErrorMessage.swift
//  GHFollowers
//
//  Created by Jocelyn Boyd on 3/28/20.
//  Copyright © 2020 Jocelyn Boyd. All rights reserved.
//

import Foundation

enum GFError: String {
  case invalidUsername = "This username created an invalid request. Please try again"
  case unableToComplete = "Unable to complete your request. Please check your internet connection."
  case invalidResponse = "Invalid response from the server. Please try again."
  case invalidData = "The data recieved from the server was invalid. Please try again."
}
