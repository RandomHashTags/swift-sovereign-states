//
//  SubdivisionsHaitiLevel1.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public typealias SubdivisionsHaitiLevel1 = Locale.Region.Subdivision.Level1.Haiti

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.haiti, allSameType: true, type: Locale.Region.SubdivisionType.department)
    struct Haiti : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsHaitiLevel1 { // https://en.wikipedia.org/wiki/Departments_of_Haiti | https://en.wikipedia.org/wiki/ISO_3166-2:HT
    static let artibonite = get("AR")
    static let centre = get("CE")
    static let grandAnse = get("GA")
    static let nippes = get("NI")
    static let nord = get("ND")
    static let nordEst = get("NE")
    static let nordOuest = get("NO")
    static let ouest = get("OU")
    static let sud = get("SD")
    static let sudEst = get("SE")
}

// MARK: Neighbors
public extension SubdivisionsHaitiLevel1 {
    var neighbors : [any Locale.Region.Subdivision.Level1Protocol] {
        switch self {
        case .artibonite:
            return [SubdivisionsHaitiLevel1.nordOuest, SubdivisionsHaitiLevel1.nord, SubdivisionsHaitiLevel1.centre, SubdivisionsHaitiLevel1.ouest]
        case .centre:
            return [SubdivisionsHaitiLevel1.artibonite, SubdivisionsHaitiLevel1.nord, SubdivisionsHaitiLevel1.nordEst, SubdivisionsHaitiLevel1.ouest]
        case .grandAnse:
            return [SubdivisionsHaitiLevel1.sud, SubdivisionsHaitiLevel1.nippes]
        case .nippes:
            return [SubdivisionsHaitiLevel1.grandAnse, SubdivisionsHaitiLevel1.sud, SubdivisionsHaitiLevel1.sudEst, SubdivisionsHaitiLevel1.ouest]
        case .nord:
            return [SubdivisionsHaitiLevel1.nordOuest, SubdivisionsHaitiLevel1.artibonite, SubdivisionsHaitiLevel1.nordEst, SubdivisionsHaitiLevel1.centre]
        case .nordEst:
            return [SubdivisionsHaitiLevel1.nord, SubdivisionsHaitiLevel1.centre]
        case .nordOuest:
            return [SubdivisionsHaitiLevel1.artibonite, SubdivisionsHaitiLevel1.nord]
        case .ouest:
            return [SubdivisionsHaitiLevel1.artibonite, SubdivisionsHaitiLevel1.centre, SubdivisionsHaitiLevel1.sudEst, SubdivisionsHaitiLevel1.nippes]
        case .sud:
            return [SubdivisionsHaitiLevel1.grandAnse, SubdivisionsHaitiLevel1.nippes, SubdivisionsHaitiLevel1.sudEst]
        case .sudEst:
            return [SubdivisionsHaitiLevel1.sud, SubdivisionsHaitiLevel1.nippes, SubdivisionsHaitiLevel1.ouest]
        default:
            return []
        }
    }
}