//
//  FollowerCell.swift
//  GHFollowers
//
//  Created by Jonathan Go on 1/13/20.
//  Copyright © 2020 SonnerStudio. All rights reserved.
//

import UIKit

class FollowerCell: UICollectionViewCell {
  static let reuseID  = "FollowerCell"
  
  let avatarImageView = GFAvatarImageView(frame: .zero)
  let usernameLabel   = GFTitleLabel(textAlignment: .center, fontSize: 16)
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    configure()
  }
  
  
  override func prepareForReuse() {
    usernameLabel.text = nil
  }
  
  
  func set(follower: Follower) {
    usernameLabel.text = follower.login
    avatarImageView.downloadImage(fromURL: follower.avatarUrl)
  }
  
  
  func configure() {
    addSubviews(avatarImageView, usernameLabel)
    let padding: CGFloat = 8
    
    NSLayoutConstraint.activate([
      avatarImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: padding),
      avatarImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
      avatarImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
      avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor),
      
      usernameLabel.topAnchor.constraint(equalTo: avatarImageView.bottomAnchor, constant: 12),
      usernameLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: padding),
      usernameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -padding),
      usernameLabel.heightAnchor.constraint(equalToConstant: 20)
    ])
  }
  
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
