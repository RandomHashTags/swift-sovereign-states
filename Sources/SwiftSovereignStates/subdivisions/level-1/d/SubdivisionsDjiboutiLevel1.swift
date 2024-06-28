//
//  SubdivisionsDjiboutiLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsDjiboutiLevel1 = Locale.Region.Subdivision.Level1.Djibouti

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.djibouti, allSameType: true, type: Locale.Region.SubdivisionType.region)
    struct Djibouti : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsDjiboutiLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Djibouti | https://en.wikipedia.org/wiki/ISO_3166-2:DJ
    static let ali_sabieh = get("AS")
    static let arta = get("AR")
    static let dikhil = get("DI")
    static let djibouti = get("DJ")
    static let obock = get("OB")
    static let tadjourah = get("TA")
}

// MARK: Neighbors
public extension SubdivisionsDjiboutiLevel1 {
    var neighbors : [any Locale.Region.Subdivision.Level1Protocol] {
        switch self {
        case .ali_sabieh:
            return [SubdivisionsDjiboutiLevel1.dikhil, SubdivisionsDjiboutiLevel1.arta]
        case .arta:
            return [SubdivisionsDjiboutiLevel1.djibouti, SubdivisionsDjiboutiLevel1.ali_sabieh, SubdivisionsDjiboutiLevel1.dikhil, SubdivisionsDjiboutiLevel1.tadjourah]
        case .dikhil:
            return [SubdivisionsDjiboutiLevel1.tadjourah, SubdivisionsDjiboutiLevel1.arta, SubdivisionsDjiboutiLevel1.ali_sabieh]
        case .djibouti:
            return [SubdivisionsDjiboutiLevel1.obock, SubdivisionsDjiboutiLevel1.tadjourah, SubdivisionsDjiboutiLevel1.arta]
        case .obock:
            return [SubdivisionsDjiboutiLevel1.tadjourah, SubdivisionsDjiboutiLevel1.djibouti]
        case .tadjourah:
            return [SubdivisionsDjiboutiLevel1.obock, SubdivisionsDjiboutiLevel1.djibouti, SubdivisionsDjiboutiLevel1.arta, SubdivisionsDjiboutiLevel1.dikhil]
        default:
            return []
        }
    }
}