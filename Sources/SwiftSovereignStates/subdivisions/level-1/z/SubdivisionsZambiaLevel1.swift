//
//  SubdivisionsZambiaLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsZambiaLevel1 = Locale.Region.Subdivision.Level1.Zambia

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.zambia, allSameType: true, type: Locale.Region.SubdivisionType.province)
    struct Zambia : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsZambiaLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Zambia | https://en.wikipedia.org/wiki/ISO_3166-2:ZM
    static let central = get("02")
    static let copperbelt = get("08")
    static let eastern = get("03")
    static let luapula = get("04")
    static let lusaka = get("09")
    static let muchinga = get("10")
    static let northWestern = get("06")
    static let northern = get("05")
    static let southern = get("07")
    static let western = get("01")
    
    var neighbors : [any Locale.Region.Subdivision.Level1Protocol] {
        switch self {
        case .central:
            return [SubdivisionsZambiaLevel1.western, SubdivisionsZambiaLevel1.northWestern, SubdivisionsZambiaLevel1.copperbelt, SubdivisionsZambiaLevel1.luapula, SubdivisionsZambiaLevel1.muchinga, SubdivisionsZambiaLevel1.eastern, SubdivisionsZambiaLevel1.lusaka, SubdivisionsZambiaLevel1.southern]
        case .copperbelt:
            return [SubdivisionsZambiaLevel1.northWestern, SubdivisionsZambiaLevel1.central]
        case .eastern:
            return [SubdivisionsZambiaLevel1.muchinga, SubdivisionsZambiaLevel1.central, SubdivisionsZambiaLevel1.lusaka]
        case .luapula:
            return [SubdivisionsZambiaLevel1.northern, SubdivisionsZambiaLevel1.muchinga, SubdivisionsZambiaLevel1.central]
        case .lusaka:
            return [SubdivisionsZambiaLevel1.southern, SubdivisionsZambiaLevel1.central, SubdivisionsZambiaLevel1.eastern]
        case .muchinga:
            return [SubdivisionsZambiaLevel1.northern, SubdivisionsZambiaLevel1.luapula, SubdivisionsZambiaLevel1.central, SubdivisionsZambiaLevel1.eastern]
        case .northWestern:
            return [SubdivisionsZambiaLevel1.western, SubdivisionsZambiaLevel1.central, SubdivisionsZambiaLevel1.copperbelt]
        case .northern:
            return [SubdivisionsZambiaLevel1.luapula, SubdivisionsZambiaLevel1.muchinga]
        case .southern:
            return [SubdivisionsZambiaLevel1.western, SubdivisionsZambiaLevel1.central, SubdivisionsZambiaLevel1.lusaka]
        case .western:
            return [SubdivisionsZambiaLevel1.northWestern, SubdivisionsZambiaLevel1.central, SubdivisionsZambiaLevel1.southern]
        default:
            return []
        }
    }
}
