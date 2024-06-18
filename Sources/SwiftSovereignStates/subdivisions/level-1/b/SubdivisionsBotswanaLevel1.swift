//
//  SubdivisionsBotswanaLevel1.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation

public typealias SubdivisionsBotswanaLevel1 = Locale.Region.Subdivision.Level1.Botswana

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.botswana, allSameType: true, type: Locale.Region.SubdivisionType.district)
    struct Botswana : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsBotswanaLevel1 { // https://en.wikipedia.org/wiki/Districts_of_Botswana | https://en.wikipedia.org/wiki/ISO_3166-2:BW
    static let central = get("CE")
    static let chobe = get("CH")
    static let ghanzi = get("GH")
    static let kgalagadi = get("KG")
    static let kgatleng = get("KL")
    static let kweneng = get("KW")
    static let northWest = get("NW")
    static let northEast = get("NE")
    static let southEast = get("SE")
    static let southern = get("SO")
    
    static let francistown = get("FR") // TODO: city??
    static let gaborone = get("GA") // TODO: city??
    
    static let jwaneng = get("JW") // TODO: town??
    static let lobatse = get("LO") // TODO: town??
    static let orapa = get("??") // TODO: town??
    static let selebiPhikwe = get("SP") // TODO: town??
    static let sowa = get("ST") // TODO: town??
}
