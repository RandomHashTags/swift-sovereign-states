//
//  ContentTerm.swift
//  
//
//  Created by Evan Anderson on 8/22/22.
//

import Foundation

internal struct ContentTerm {
    let term:String
    
    init(_ term: String) {
        self.term = term
    }
    
    static func doesEqual(string: String, values: [ContentTerm]) -> Bool {
        return values.first(where: { $0.term.elementsEqual(string) }) != nil
    }
    static func doesSatisfy(string: String, values: [ContentTerm]) -> Bool {
        return doesEqual(string: string, values: values) || doesContain(string: string, values: values) || doesStartWith(string: string, values: values)
    }
    private static let prefixRegex:String = {
        let string:String = [
            " ",
            "-", "–",
            "/",
            "\"",
            "'"
        ].joined(separator: "|")
        return "(" + string + ")"
    }()
    private static let suffixes:[String] = {
        return [
            " ",
            ".",
            ";",
            ":",
            ",",
            "-", "–",
            "'",
            "\"",
            "/"
        ]
    }()
    private static let suffixRegex:String = {
        let string:String = suffixes.joined(separator: "|")
        return "(" + string.replacingOccurrences(of: ".", with: "\\.") + ")"
    }()
    private static func doesContain(string: String, values: [ContentTerm]) -> Bool {
        return values.first(where: { string.range(of: prefixRegex + $0.term + suffixRegex, options: .regularExpression) != nil }) != nil
    }
    private static func doesStartWith(string: String, values: [ContentTerm]) -> Bool {
        return values.first(where: { string.starts(with: $0.term + suffixRegex) }) != nil
    }
}
