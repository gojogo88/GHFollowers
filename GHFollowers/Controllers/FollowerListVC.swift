//
//  FollowerListVC.swift
//  GHFollowers
//
//  Created by Jonathan Go on 1/1/20.
//  Copyright © 2020 SonnerStudio. All rights reserved.
//

import UIKit

class FollowerListVC: UIViewController {

  var username: String!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    view.backgroundColor = .systemBackground
    //navigationController?.isNavigationBarHidden = false
    navigationController?.navigationBar.prefersLargeTitles = true
    
    
    NetworkManager.shared.getFollowers(for: username, page: 1) { (result) in
      switch result {
        case.success(let followers):
          print(followers)
        case .failure(let error):
          self.presentGFAlertOnMainThread(title: "Bad Stuff Happened", message: error.rawValue, buttonTitle: "Ok")
      }
    }
    /* with old way
    NetworkManager.shared.getFollowers(for: username, page: 1) { (followers, errorMessage) in
      guard let followers = followers else {
        self.presentGFAlertOnMainThread(title: "Bad Stuff Happened", message: errorMessage!.rawValue, buttonTitle: "OK")
        return
      }
      
      print("Followers.count = \(followers.count)")
      print(followers)
    }
     */
  }
    
  override func viewWillAppear(_ animated: Bool) {
    super.viewWillAppear(animated)
    navigationController?.setNavigationBarHidden(true, animated: true)
  }
    

}
