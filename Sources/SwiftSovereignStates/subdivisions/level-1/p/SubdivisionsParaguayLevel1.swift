//
//  SubdivisionsParaguayLevel1.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public typealias SubdivisionsParaguayLevel1 = Locale.Region.Subdivision.Level1.Paraguay

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.paraguay, allSameType: false, type: Locale.Region.SubdivisionType.department)
    struct Paraguay : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .asuncion:
                return Locale.Region.SubdivisionType.city
            default:
                return Locale.Region.SubdivisionType.department
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsParaguayLevel1 { // https://en.wikipedia.org/wiki/Departments_of_Paraguay | https://en.wikipedia.org/wiki/ISO_3166-2:PY
    static let alto_paraguay = get("16")
    static let alto_parana = get("10")
    static let amambay = get("13")
    static let boqueron = get("19")
    static let caaguazu = get("5")
    static let caazapa = get("6")
    static let canindeyu = get("14")
    static let central = get("11")
    static let concepcion = get("1")
    static let cordillera = get("3")
    static let guaira = get("4")
    static let itapua = get("7")
    static let misiones = get("8")
    static let neembucu = get("12")
    static let paraguari = get("9")
    static let presidente_hayes = get("15")
    static let san_pedro = get("2")
    
    static let asuncion = get("ASU")
}
