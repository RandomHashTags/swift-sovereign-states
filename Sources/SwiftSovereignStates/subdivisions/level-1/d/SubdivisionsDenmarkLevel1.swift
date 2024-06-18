//
//  SubdivisionsDenmarkLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsDenmarkLevel1 = Locale.Region.Subdivision.Level1.Denmark

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.denmark, allSameType: true, type: Locale.Region.SubdivisionType.region)
    struct Denmark : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsDenmarkLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Denmark | https://en.wikipedia.org/wiki/ISO_3166-2:DK
    static let hovedstaden = get("84")
    static let midtjylland = get("82")
    static let nordjylland = get("81")
    static let sjaelland = get("85")
    static let syddanmark = get("83")
    
    var neighbors : [any Locale.Region.Subdivision.Level1Protocol] {
        switch self {
        case .hovedstaden:
            return [SubdivisionsDenmarkLevel1.sjaelland]
        case .midtjylland:
            return [SubdivisionsDenmarkLevel1.nordjylland, SubdivisionsDenmarkLevel1.syddanmark]
        case .nordjylland:
            return [SubdivisionsDenmarkLevel1.midtjylland]
        case .sjaelland:
            return [SubdivisionsDenmarkLevel1.hovedstaden, SubdivisionsDenmarkLevel1.syddanmark, SubdivisionsDenmarkLevel1.syddanmark]
        case .syddanmark:
            return [SubdivisionsDenmarkLevel1.midtjylland, SubdivisionsDenmarkLevel1.sjaelland]
        default:
            return []
        }
    }
}
