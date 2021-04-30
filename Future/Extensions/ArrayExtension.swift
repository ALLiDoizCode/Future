//
//  ArrayExtension.swift
//  Future
//
//  Created by Jonathan Green on 4/30/21.
//

import Foundation

extension Array {

  /// Returns a new array with a percentage of the original array kept.
  /// Retained entries are spaced evenly throughout the original array.
  func dropPercentage(percentageToKeep: Int) -> [Element] {
    guard percentageToKeep > 0 && percentageToKeep <= 100 else {
      fatalError("percentageToKeep must be between 1 and 100")
    }

    var filtered = [Element]()
    for index in self.indices {
      if index % (100 / percentageToKeep) == 0 {
        filtered.append(self[index])
      }
    }
    return filtered
  }
}
