//
//  GFError.swift
//  GHFollowers
//
//  Created by Jonathan Go on 1/14/20.
//  Copyright © 2020 SonnerStudio. All rights reserved.
//

import Foundation

enum GFError: String, Error {
  case invalidUsername    = "This username created an invalid request. Please try again"
  case unableToComplete   = "Unable to complete your request. Please check your internet connection."
  case invalidResponse    = "Invalid response from the server. Please try again."
  case invalidData        = "The data received from the server was Invalid. Please try again."
  case unableToFavorite   = "There was an error favoriting this user. Please try again."
  case alreadyInFavorites = "You already favorited this user. You must REALLY like them!"
}
