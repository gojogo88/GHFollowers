//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Jonathan Go on 2/17/20.
//  Copyright © 2020 SonnerStudio. All rights reserved.
//

import Foundation

extension Date {
  
  func convertToMonthYearFormat() -> String {
    let dateFormatter         = DateFormatter()
    dateFormatter.dateFormat  = "MMM yyyy"
    return dateFormatter.string(from: self)
  }
}
