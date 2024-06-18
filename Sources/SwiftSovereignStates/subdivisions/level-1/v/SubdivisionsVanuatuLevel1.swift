//
//  SubdivisionsVanuatuLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsVanuatuLevel1 = Locale.Region.Subdivision.Level1.Vanuatu

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.vanuatu, allSameType: true, type: Locale.Region.SubdivisionType.province)
    struct Vanuatu : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsVanuatuLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Vanuatu | https://en.wikipedia.org/wiki/ISO_3166-2:VU
    static let malampa = get("MAP")
    static let pénama = get("PAM")
    static let sanma = get("SAM")
    static let shéfa = get("SEE")
    static let taféa = get("TAE")
    static let torba = get("TOB")
    
    var neighbors : [any Locale.Region.Subdivision.Level1Protocol] {
        switch self {
        case .malampa:
            return [SubdivisionsVanuatuLevel1.sanma, SubdivisionsVanuatuLevel1.pénama, SubdivisionsVanuatuLevel1.shéfa]
        case .pénama:
            return [SubdivisionsVanuatuLevel1.torba, SubdivisionsVanuatuLevel1.sanma, SubdivisionsVanuatuLevel1.malampa]
        case .sanma:
            return [SubdivisionsVanuatuLevel1.torba, SubdivisionsVanuatuLevel1.pénama, SubdivisionsVanuatuLevel1.malampa]
        case .shéfa:
            return [SubdivisionsVanuatuLevel1.malampa, SubdivisionsVanuatuLevel1.taféa]
        case .taféa:
            return [SubdivisionsVanuatuLevel1.shéfa]
        case .torba:
            return [SubdivisionsVanuatuLevel1.sanma, SubdivisionsVanuatuLevel1.pénama]
        default:
            return []
        }
    }
}
