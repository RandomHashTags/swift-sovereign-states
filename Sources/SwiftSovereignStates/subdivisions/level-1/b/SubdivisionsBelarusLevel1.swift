//
//  SubdivisionsBelarusLevel1.swift
//  
//
//  Created by Evan Anderson on 6/21/22.
//

import Foundation

public typealias SubdivisionsBelarusLevel1 = Locale.Region.Subdivision.Level1.Belarus

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.angola, allSameType: false, type: Locale.Region.SubdivisionType.oblast)
    struct Belarus : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .minsk_city:
                return Locale.Region.SubdivisionType.specialCity
            default:
                return Locale.Region.SubdivisionType.oblast
            }
        }
    }
}

public extension SubdivisionsBelarusLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Belarus | https://en.wikipedia.org/wiki/ISO_3166-2:BY
    static let brest = get("BR")
    static let gomel = get("HO")
    static let grodno = get("HR")
    static let minsk = get("MI")
    static let minsk_city = get("HM")
    static let mogilev = get("MA")
    static let vitebsk = get("VI")
}

// MARK: Neighbors
public extension SubdivisionsBelarusLevel1 {
    var neighbors : [any Locale.Region.Subdivision.Level1Protocol] {
        switch self {
        case .brest:
            return [SubdivisionsBelarusLevel1.grodno, SubdivisionsBelarusLevel1.minsk, SubdivisionsBelarusLevel1.gomel]
        case .gomel:
            return [SubdivisionsBelarusLevel1.brest, SubdivisionsBelarusLevel1.minsk, SubdivisionsBelarusLevel1.mogilev]
        case .grodno:
            return [SubdivisionsBelarusLevel1.brest, SubdivisionsBelarusLevel1.minsk, SubdivisionsBelarusLevel1.vitebsk]
        case .minsk:
            return [SubdivisionsBelarusLevel1.grodno, SubdivisionsBelarusLevel1.brest, SubdivisionsBelarusLevel1.gomel, SubdivisionsBelarusLevel1.mogilev, SubdivisionsBelarusLevel1.vitebsk, SubdivisionsBelarusLevel1.minsk_city]
        case .minsk_city:
            return [SubdivisionsBelarusLevel1.minsk]
        case .mogilev:
            return [SubdivisionsBelarusLevel1.vitebsk, SubdivisionsBelarusLevel1.minsk, SubdivisionsBelarusLevel1.gomel]
        case .vitebsk:
            return [SubdivisionsBelarusLevel1.grodno, SubdivisionsBelarusLevel1.minsk, SubdivisionsBelarusLevel1.mogilev]
        default:
            return []
        }
    }
}