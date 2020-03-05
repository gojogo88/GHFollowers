//
//  GFSecondaryTitleLabel.swift
//  GHFollowers
//
//  Created by Jonathan Go on 2/13/20.
//  Copyright © 2020 SonnerStudio. All rights reserved.
//

import UIKit

class GFSecondaryTitleLabel: UILabel {

    override init(frame: CGRect) {
      super.init(frame: frame)
      
      configure()
    }
    
    
    convenience init(fontSize: CGFloat) {
      self.init(frame: .zero)
      font = UIFont.systemFont(ofSize: fontSize, weight: .medium)
    }
    
    
    private func configure() {
      textColor                 = .secondaryLabel
      adjustsFontSizeToFitWidth = true
      minimumScaleFactor        = 0.9
      lineBreakMode             = .byTruncatingTail
      translatesAutoresizingMaskIntoConstraints = false
    }
    
  
    required init?(coder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
    }

}
