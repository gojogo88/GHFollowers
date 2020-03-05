//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Jonathan Go on 3/2/20.
//  Copyright © 2020 SonnerStudio. All rights reserved.
//

import UIKit

extension UITableView {
  
  func reloadDataOnMainThread() {
    DispatchQueue.main.async {
      self.reloadData()
    }
  }
  
  func removeExcessCells() {
    tableFooterView = UIView(frame: .zero)
  }
}
