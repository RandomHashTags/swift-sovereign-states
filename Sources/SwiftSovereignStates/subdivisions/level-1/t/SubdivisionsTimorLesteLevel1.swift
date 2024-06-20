//
//  SubdivisionsTimorLesteLevel1.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public typealias SubdivisionsTimorLesteLevel1 = Locale.Region.Subdivision.Level1.TimorLeste

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.timorLeste, allSameType: false, type: Locale.Region.SubdivisionType.municipality)
    struct TimorLeste : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .oecusse:
                return Locale.Region.SubdivisionType.specialAdministrativeRegion
            default:
                return Locale.Region.SubdivisionType.municipality
            }
        }
    }
}

public extension SubdivisionsTimorLesteLevel1 { // https://en.wikipedia.org/wiki/Municipalities_of_East_Timor | https://en.wikipedia.org/wiki/ISO_3166-2:TL
    static let aileu = get("AL")
    static let ainaro = get("AN")
    //static let atauro = get("01") // TODO: fix | https://en.wikipedia.org/wiki/Atauro | https://www.iso.org/obp/ui/#iso:code:3166:TL
    static let baucau = get("BA")
    static let bobonaro = get("BO")
    static let cova_lima = get("CO")
    static let dili = get("DI")
    static let ermera = get("ER")
    static let lautem = get("LA")
    static let liquica = get("LI")
    static let manatuto = get("MT")
    static let manufahi = get("MT")
    static let viqueque = get("VI")
    
    static let oecusse = get("OE")
}
