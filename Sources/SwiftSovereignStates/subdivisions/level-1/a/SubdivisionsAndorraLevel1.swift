//
//  SubdivisionsAndorraLevel1.swift
//  
//
//  Created by Evan Anderson on 9/26/22.
//

import Foundation

public typealias SubdivisionsAndorraLevel1 = Locale.Region.Subdivision.Level1.Andorra

public extension Locale.Region.Subdivision.Level1 {
    struct Andorra : Locale.Region.Subdivision.Level1Protocol {
        public var region : Locale.Region { Locale.Region.andorra }
        public let identifier:String

        public init(_ identifier: String) {
            self.identifier = identifier
        }

        public var type : Locale.Region.SubdivisionType {
            return Locale.Region.SubdivisionType.parish
        }
    }
}

public extension SubdivisionsAndorraLevel1 { // https://en.wikipedia.org/wiki/Parishes_of_Andorra
    static let andorra_la_vella = get("7")
    static let canillo = get("2")
    static let encamp = get("3")
    static let escaldes_engordany = get("8")
    static let la_massana = get("4")
    static let ordino = get("5")
    static let sant_julia_de_loria = get("6")
}
