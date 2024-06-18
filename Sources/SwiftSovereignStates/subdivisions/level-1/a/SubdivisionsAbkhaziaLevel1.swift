//
//  SubdivisionsAbkhaziaLevel1.swift
//
//
//  Created by Evan Anderson on 1/24/24.
//

import Foundation

public typealias SubdivisionsAbkhaziaLevel1 = Locale.Region.Subdivision.Level1.Abkhazia

public extension Locale.Region.Subdivision.Level1 {
    struct Abkhazia : Locale.Region.Subdivision.Level1Protocol {
        public var region : Locale.Region { Locale.Region.abkhazia }
        public let identifier:String

        public init(_ identifier: String) {
            self.identifier = identifier
        }

        public var type : Locale.Region.SubdivisionType {
            return Locale.Region.SubdivisionType.district
        }
    }
}

public extension SubdivisionsAbkhaziaLevel1 { // https://en.wikipedia.org/wiki/Districts_of_Abkhazia
    static let gagra = get("1")
    static let gali = get("2")
    static let gudauta = get("3")
    static let gulripshi = get("4")
    static let ochamchira = get("5")
    static let sukhumi = get("6")
    static let tkvarcheli = get("7")
}
