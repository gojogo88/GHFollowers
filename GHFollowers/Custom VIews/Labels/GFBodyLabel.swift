//
//  GFBodyLabel.swift
//  GHFollowers
//
//  Created by Jonathan Go on 1/1/20.
//  Copyright © 2020 SonnerStudio. All rights reserved.
//

import UIKit

class GFBodyLabel: UILabel {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    configure()
  }
  
  
  convenience init(textAlignment: NSTextAlignment) {
    self.init(frame: .zero)
    self.textAlignment = textAlignment
  }
  
  
  private func configure() {
    textColor                         = .secondaryLabel
    font                              = .preferredFont(forTextStyle: .body)
    adjustsFontForContentSizeCategory = true
    adjustsFontSizeToFitWidth         = true
    minimumScaleFactor                = 0.75
    lineBreakMode                     = .byWordWrapping
    translatesAutoresizingMaskIntoConstraints = false
  }
  
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
