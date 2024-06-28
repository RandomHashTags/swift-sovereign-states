//
//  SubdivisionsNicaraguaLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsNicaraguaLevel1 = Locale.Region.Subdivision.Level1.Nicaragua

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.nicaragua, allSameType: false, type: Locale.Region.SubdivisionType.department)
    struct Nicaragua : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .north_caribbean_coast,
                    .south_caribbean_coast:
                return Locale.Region.SubdivisionType.autonomousRegion
            default:
                return Locale.Region.SubdivisionType.department
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsNicaraguaLevel1 { // https://en.wikipedia.org/wiki/Departments_of_Nicaragua | https://en.wikipedia.org/wiki/ISO_3166-2:NI
    static let boaco = get("BO")
    static let carazo = get("CA")
    static let chinandega = get("CI")
    static let chontales = get("CO")
    static let esteli = get("ES")
    static let granada = get("GR")
    static let jinotega = get("JI")
    static let leon = get("LE")
    static let madriz = get("MD")
    static let managua = get("MN")
    static let masaya = get("MS")
    static let matagalpa = get("MT")
    static let north_caribbean_coast = get("AN")
    static let nueva_segovia = get("NS")
    static let rio_san_juan = get("SJ")
    static let rivas = get("RI")
    static let south_caribbean_coast = get("AS")
}
