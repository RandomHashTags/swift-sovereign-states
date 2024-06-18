//
//  SubdivisionsBurkinaFasoLevel1.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public typealias SubdivisionsBurkinaFasoLevel1 = Locale.Region.Subdivision.Level1.BurkinaFaso

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.burkinaFaso, allSameType: true, type: Locale.Region.SubdivisionType.region)
    struct BurkinaFaso : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsBurkinaFasoLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Burkina_Faso | https://en.wikipedia.org/wiki/ISO_3166-2:BF
    static let boucleMouhoun = get("01")
    static let cascades = get("02")
    static let centre = get("03")
    static let centreEst = get("04")
    static let centreNord = get("05")
    static let centreOuest = get("06")
    static let centreSud = get("07")
    static let est = get("08")
    static let hautsBassins = get("09")
    static let nord = get("10")
    static let plateauCentral = get("11")
    static let sahel = get("12")
    static let sudOuest = get("13")
}
