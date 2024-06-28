//
//  SubdivisionsSpainLevel1.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public typealias SubdivisionsSpainLevel1 = Locale.Region.Subdivision.Level1.Spain

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.spain, allSameType: false, type: Locale.Region.SubdivisionType.autonomousCommunity)
    struct Spain : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .ceuta, .melilla:
                return Locale.Region.SubdivisionType.autonomousCity
            default:
                return Locale.Region.SubdivisionType.autonomousCommunity
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsSpainLevel1 { // https://en.wikipedia.org/wiki/Autonomous_communities_of_Spain | https://en.wikipedia.org/wiki/ISO_3166-2:ES
    static let andalusia = get("AN")
    static let aragon = get("AR")
    static let asturias = get("AS")
    static let balearic_islands = get("IB")
    static let basque_country = get("PV")
    static let canary_islands = get("CN")
    static let cantabria = get("CB")
    static let castile_and_leon = get("CL")
    static let castilla_la_macha = get("CM")
    static let catalonia = get("CT")
    static let ceuta = get("CE")
    static let community_of_madrid = get("MD")
    static let extremadura = get("EX")
    static let galicia = get("GA")
    static let la_rioja = get("RI")
    static let melilla = get("ML")
    static let navarre = get("NC")
    static let region_of_murcia = get("MC")
    static let valencian_community = get("VC")
}
