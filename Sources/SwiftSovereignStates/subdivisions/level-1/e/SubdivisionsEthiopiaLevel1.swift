//
//  SubdivisionsEthiopiaLevel1.swift
//  
//
//  Created by Evan Anderson on 7/26/22.
//

import Foundation

public typealias SubdivisionsEthiopiaLevel1 = Locale.Region.Subdivision.Level1.Ethiopia

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.ethiopia, allSameType: false, type: Locale.Region.SubdivisionType.state)
    struct Ethiopia : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .addis_ababa,
                    .dire_dawa:
                return Locale.Region.SubdivisionType.charteredCity
            default:
                return Locale.Region.SubdivisionType.state
            }
        }
    }
}

public extension SubdivisionsEthiopiaLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Ethiopia | https://en.wikipedia.org/wiki/ISO_3166-2:ET
    static let afar = get("AF")
    static let amhara = get("AM")
    static let benishangul_gumuz = get("BE")
    static let gambela = get("GA")
    static let harari = get("HA")
    static let oromia = get("OR")
    static let sidama = get("SI")
    static let somali = get("SO")
    static let south_west = get("SW")
    static let southern_nations_nationalities_and_peoples_region = get("SN")
    static let tigray = get("TI")
    
    static let addis_ababa = get("AA")
    static let dire_dawa = get("DD")
}
