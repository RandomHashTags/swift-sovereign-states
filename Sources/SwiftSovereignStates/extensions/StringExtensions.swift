//
//  StringExtensions.swift
//
//
//  Created by Evan Anderson on 1/20/24.
//

import Foundation

extension String {
    func all_ranges(of substring: String) -> Set<Range<Index>> {
        var ranges:Set<Range<Index>> = []
        var last_range:Index? = nil
        while let range:Range<Index> = range(of: substring, range: (last_range ?? self.startIndex)..<self.endIndex) {
            ranges.insert(range)
            last_range = range.upperBound
        }
        return ranges
    }
    
    var urlEncoded : String {
        return addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? self
    }
}

extension Substring : RandomAccessCollection {
}
