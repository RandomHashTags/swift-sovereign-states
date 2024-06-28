//
//  SubdivisionsNetherlandsLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsNetherlandsLevel1 = Locale.Region.Subdivision.Level1.Netherlands

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.netherlands, allSameType: false, type: Locale.Region.SubdivisionType.province)
    struct Netherlands : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .aruba, .curacao, .sintMaarten:
                return Locale.Region.SubdivisionType.country
            case .bonaire, .saba, .sintEustatius:
                return Locale.Region.SubdivisionType.specialMunicipality
            default:
                return Locale.Region.SubdivisionType.province
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsNetherlandsLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_the_Netherlands | https://en.wikipedia.org/wiki/ISO_3166-2:NL
    static let drenthe = get("DR")
    static let flevoland = get("FL")
    static let friesland = get("FR")
    static let gelderland = get("GE")
    static let groningen = get("GR")
    static let limburg = get("LI")
    static let northBrabant = get("NB")
    static let northHolland = get("NH")
    static let overijssel = get("OV")
    static let southHolland = get("ZH")
    static let utrecht = get("UT")
    static let zeeland = get("ZE")
    
    static let aruba = get(Locale.Region.aruba.identifier)
    static let curacao = get(Locale.Region.curaçao.identifier)
    static let sintMaarten = get(Locale.Region.sintMaarten.identifier)
    
    static let bonaire = get("BQ1")
    static let saba = get("BQ2")
    static let sintEustatius = get("BQ3")
}
