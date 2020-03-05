//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by Jonathan Go on 2/14/20.
//  Copyright © 2020 SonnerStudio. All rights reserved.
//

import UIKit

extension UIView {

  func pinToEdges(of superview: UIView) {
    translatesAutoresizingMaskIntoConstraints = false
    
    NSLayoutConstraint.activate([
      topAnchor.constraint(equalTo: superview.topAnchor),
      leadingAnchor.constraint(equalTo: superview.leadingAnchor),
      bottomAnchor.constraint(equalTo: superview.bottomAnchor),
      trailingAnchor.constraint(equalTo: superview.trailingAnchor)
    ])
  }
  
    func addSubviews(_ views: UIView...) {
        views.forEach { addSubview($0) }
    }

} 
