//
//  GFButton.swift
//  GHFollowers
//
//  Created by Jonathan Go on 12/29/19.
//  Copyright © 2019 SonnerStudio. All rights reserved.
//

import UIKit

class GFButton: UIButton {

  override init(frame: CGRect) {
    super.init(frame: frame)
    
    configure()
  }
  
  
  convenience init(backgroundColor: UIColor, title: String) {
    self.init(frame: .zero)
    
    self.backgroundColor = backgroundColor
    self.setTitle(title, for: .normal)
  }
  
  
  private func configure() {
    layer.cornerRadius  = 10
    titleLabel?.font    = UIFont.preferredFont(forTextStyle: .headline)
    setTitleColor(.white, for: .normal)
    translatesAutoresizingMaskIntoConstraints = false
  }
  
  
  func set(backgroundColor: UIColor, title: String) {
    self.backgroundColor = backgroundColor
    setTitle(title, for: .normal)
  }
  
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
