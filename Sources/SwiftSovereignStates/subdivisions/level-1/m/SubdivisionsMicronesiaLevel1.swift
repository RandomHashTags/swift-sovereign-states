//
//  SubdivisionsMicronesiaLevel1.swift
//  
//
//  Created by Evan Anderson on 9/27/22.
//

import Foundation

public typealias SubdivisionsMicronesiaLevel1 = Locale.Region.Subdivision.Level1.Micronesia

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.micronesia, allSameType: true, type: Locale.Region.SubdivisionType.state)
    struct Micronesia : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsMicronesiaLevel1 { // https://en.wikipedia.org/wiki/States_of_the_Federated_States_of_Micronesia | https://en.wikipedia.org/wiki/ISO_3166-2:FM
    static let chuuk = get("TRK")
    static let kosrae = get("KSA")
    static let pohnpei = get("PNI")
    static let yap = get("YAP")
}
