//
//  Date+Ext.swift
//  GHFollowers
//
//  Created by Jocelyn Boyd on 5/13/20.
//  Copyright © 2020 Jocelyn Boyd. All rights reserved.
//

import Foundation

extension Date {
  
  func convertToMonthToYearFormat() -> String {
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "MMM yyyy"
    
    return dateFormatter.string(from: self)
  }
}
