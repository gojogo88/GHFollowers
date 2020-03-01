//
//  GFRepoItemVC.swift
//  GHFollowers
//
//  Created by Jonathan Go on 2/17/20.
//  Copyright © 2020 SonnerStudio. All rights reserved.
//

import UIKit

class GFRepoItemVC: GFItemInfoVC {
  override func viewDidLoad() {
    super.viewDidLoad()
    
    configureItems()
  }
  
  
  private func configureItems() {
    itemInfoViewOne.set(itemInfoType: .repos, withCount: user.publicRepos)
    itemInfoViewTwo.set(itemInfoType: .gists, withCount: user.publicGists)
    actionButton.set(backgroundColor: .systemPurple, title: "Github Profile")
  }
  
  
  override func actionButtonTapped() {
    delegate.didTapGithubProfile(for: user)
  }
}
