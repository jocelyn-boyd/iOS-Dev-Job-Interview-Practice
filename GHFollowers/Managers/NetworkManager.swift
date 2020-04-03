//
//  NetworkManager.swift
//  GHFollowers
//
//  Created by Jocelyn Boyd on 3/28/20.
//  Copyright © 2020 Jocelyn Boyd. All rights reserved.
//

import UIKit

class NetworkManager {
  
  static let shared = NetworkManager()
  private let baseURL = "https://api.github.com/users/"
  let cache = NSCache<NSString, UIImage>()
  
  private init() {}
  
  //MARK: Making a network call WITH Result Type
    func getFollowers(for username: String, page: Int, completed: @escaping (Result<[Follower], GFError>) -> Void) {
      let endpoint = baseURL + "\(username)/followers?per_page=100&Page=\(page)"
  
      guard let url = URL(string: endpoint) else {
        completed(.failure(.invalidUsername))
        return
      }
  
      let task = URLSession.shared.dataTask(with: url) {data, response, error in
  
        if let _ = error {
          completed(.failure(.unableToComplete))
          return
        }
  
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
          completed(.failure(.invalidResponse))
          return
        }
  
        guard let data = data else {
          completed(.failure(.invalidData))
          return
        }
  
        do {
          let decoder = JSONDecoder()
          decoder.keyDecodingStrategy = .convertFromSnakeCase
          let followers = try decoder.decode([Follower].self, from: data)
          completed(.success(followers))
        } catch {
          completed(.failure(.invalidData))
        }
      }
  
      task.resume()
    }
  
  //MARK: Making a network call WITHOUT Result type
//  func getFollower(for username: String, page: Int, completed: @escaping ([Follower]?, GFError?) -> Void) {
//    let endpoint = baseURL + "\(username)/followers?per_page=100&page\(page)"
//
//    guard let url = URL(string: endpoint) else {
//      completed(nil, .invalidUsername)
//      return
//    }
//
//    let task = URLSession.shared.dataTask(with: url) { data, response, error in
//
//      if let _ = error {
//        completed(nil, .unableToComplete)
//        return
//      }
//
//      guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
//        completed(nil, .invalidResponse)
//        return
//      }
//
//      guard let data = data else {
//        completed(nil, .invalidData)
//        return
//      }
//
//      do {
//        let decoder = JSONDecoder()
//        decoder.keyDecodingStrategy = .convertFromSnakeCase
//        let followers = try decoder.decode([Follower].self, from: data)
//        completed(followers, nil)
//      } catch {
//        completed(nil, .invalidData)
//      }
//    }
//
//    task.resume()
//  }
  
}

/*
 Called in the viewDidLoad method to test 
 
       //MARK: Making a network call WITHOUT Result Type
       NetworkManager.shared.getFollower(for: username, page: 1) { (followers, errorMessage) in
         guard let followers = followers else {
           self.presentGFAlertOnMainThread(title: "Bad Stuff Happened", message: errorMessage!.rawValue, buttonTitle: "OK")
           return
         }
 
         print("Followers.count = \(followers.count)")
         print(followers)
       }
       
       //MARK: Making a call WITH Result Type
       NetworkManager.shared.getFollowers(for: username, page: 1) { result in
         switch result {
         case .success(let followers):
           print(followers)
         case .failure(let error):
            self.presentGFAlertOnMainThread(title: "Bad Stuff Happened", message: error.rawValue, buttonTitle: "OK")
         }
       }
 */
