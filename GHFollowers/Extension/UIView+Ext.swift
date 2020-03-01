//
//  UIView+Ext.swift
//  GHFollowers
//
//  Created by Jonathan Go on 2/14/20.
//  Copyright © 2020 SonnerStudio. All rights reserved.
//

import UIKit

extension UIView {

    func addSubviews(_ views: UIView...) {
        views.forEach { addSubview($0) }
    }

} 
