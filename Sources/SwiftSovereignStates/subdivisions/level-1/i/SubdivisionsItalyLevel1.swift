//
//  SubdivisionsItalyLevel1.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public typealias SubdivisionsItalyLevel1 = Locale.Region.Subdivision.Level1.Italy

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.italy, allSameType: false, type: Locale.Region.SubdivisionType.region)
    struct Italy : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .aosta_valley,
                    .friuli_venezla_giulia,
                    .sardinia,
                    .sicily,
                    .trentino_south_tyrol:
                return Locale.Region.SubdivisionType.autonomousRegion
            default:
                return Locale.Region.SubdivisionType.region
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsItalyLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Italy | https://en.wikipedia.org/wiki/ISO_3166-2:IT
    static let abruzzo = get("65")
    static let aosta_valley = get("23")
    static let apulia = get("75")
    static let basilicata = get("77")
    static let calabria = get("78")
    static let campania = get("72")
    static let emilia_romagna = get("45")
    static let friuli_venezla_giulia = get("36")
    static let lazio = get("62")
    static let liguria = get("42")
    static let lombardy = get("25")
    static let marche = get("57")
    static let molise = get("67")
    static let piedmont = get("21")
    static let sardinia = get("88")
    static let sicily = get("82")
    static let trentino_south_tyrol = get("32")
    static let tuscany = get("52")
    static let umbria = get("55")
    static let veneto = get("34")
}