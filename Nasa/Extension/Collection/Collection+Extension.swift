//
//  Collection+Extension.swift
//  Nasa
//
//  Created by Onur on 13.11.2022
//

import Foundation

public extension Collection where Indices.Iterator.Element == Index {
  /// Returns the element at the specified index iff it is within bounds, otherwise nil.
  subscript (safe index: Index) -> Iterator.Element? {
    return indices.contains(index) ? self[index] : nil
  }
}
