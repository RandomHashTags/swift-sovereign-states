//
//  SequenceExtensions.swift
//
//
//  Created by Evan Anderson on 1/20/24.
//

import Foundation

extension Collection {
    func map_set<T>(_ transform: (Element) throws -> T) rethrows -> Set<T> {
        var set:Set<T> = Set<T>.init(minimumCapacity: count)
        for element in self {
            set.insert(try transform(element))
        }
        return set
    }
}
