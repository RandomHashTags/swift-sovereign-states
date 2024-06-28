//
//  SubdivisionsMalaysiaLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsMalaysiaLevel1 = Locale.Region.Subdivision.Level1.Malaysia

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.andorra, allSameType: false, type: Locale.Region.SubdivisionType.state)
    struct Malaysia : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .kuala_lumpur, .labuan, .putrajaya:
                return Locale.Region.SubdivisionType.federalTerritory
            default:
                return Locale.Region.SubdivisionType.state
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsMalaysiaLevel1 { // https://en.wikipedia.org/wiki/States_and_federal_territories_of_Malaysia | https://en.wikipedia.org/wiki/ISO_3166-2:MY
    static let johor = get("01")
    static let kedah = get("02")
    static let kelantan = get("03")
    static let malacca = get("04")
    static let negeri_sembilan = get("05")
    static let pahang = get("06")
    static let pulau_pinang = get("07")
    static let perak = get("08")
    static let perlis = get("09")
    static let sabah = get("12")
    static let sarawak = get("13")
    static let selangor = get("10")
    static let terengganu = get("11")
    
    static let kuala_lumpur = get("14")
    static let labuan = get("15")
    static let putrajaya = get("16")
}