//
//  SubdivisionsAntiguaAndBarbudaLevel1.swift
//  
//
//  Created by Evan Anderson on 9/26/22.
//

import Foundation

public typealias SubdivisionsAntiguaAndBarbudaLevel1 = Locale.Region.Subdivision.Level1.AntiguaAndBarbuda

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.antiguaBarbuda, allSameType: false, type: Locale.Region.SubdivisionType.parish)
    struct AntiguaAndBarbuda : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .barbuda, .redonda:
                return Locale.Region.SubdivisionType.dependency
            default:
                return Locale.Region.SubdivisionType.parish
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsAntiguaAndBarbudaLevel1 { // https://en.wikipedia.org/wiki/Parishes_and_dependencies_of_Antigua_and_Barbuda | https://en.wikipedia.org/wiki/ISO_3166-2:AG
    static let saint_george = get("03")
    static let saint_john = get("04")
    static let saint_mary = get("05")
    static let saint_paul = get("06")
    static let saint_peter = get("07")
    static let saint_philip = get("08")
    
    static let barbuda = get("10")
    static let redonda = get("11")
}
