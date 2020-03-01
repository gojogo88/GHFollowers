//
//  GFFollowerItemVC.swift
//  GHFollowers
//
//  Created by Jonathan Go on 2/17/20.
//  Copyright © 2020 SonnerStudio. All rights reserved.
//

import UIKit

class GFFollowerItemVC: GFItemInfoVC {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    configureItems()
  }
  
  
  private func configureItems() {
    itemInfoViewOne.set(itemInfoType: .followers, withCount: user.followers)
    itemInfoViewTwo.set(itemInfoType: .following, withCount: user.following)
    actionButton.set(backgroundColor: .systemGreen, title: "Get Followers")
  }
  
  
  override func actionButtonTapped() {
    delegate.didtapGetFollowers(for: user)
  }
}
