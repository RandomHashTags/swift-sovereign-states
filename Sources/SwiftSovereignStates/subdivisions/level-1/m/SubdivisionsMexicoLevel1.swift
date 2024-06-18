//
//  SubdivisionsMexicoLevel1.swift
//  
//
//  Created by Evan Anderson on 7/6/22.
//

import Foundation

public typealias SubdivisionsMexicoLevel1 = Locale.Region.Subdivision.Level1.Mexico

public extension Locale.Region.Subdivision.Level1 {
    struct Mexico : Locale.Region.Subdivision.Level1Protocol {
        public var region : Locale.Region { Locale.Region.mexico }
        public let identifier:String

        init(_ identifier: String) {
            self.identifier = identifier
        }

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .mexicoCity:
                return Locale.Region.SubdivisionType.federalEntity
            default:
                return Locale.Region.SubdivisionType.state
            }
        }
    }
}

public extension Locale.Region.Subdivision.Level1.Mexico { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Mexico
    static func get(_ identifier: String) -> SubdivisionsMexicoLevel1 {
        return SubdivisionsMexicoLevel1(identifier)
    }
    static let aguascalientes = get("AG")
    static let bajaCalifornia = get("BC")
    static let bajaCaliforniaSur = get("BS")
    static let campeche = get("CM")
    static let chiapas = get("CS")
    static let chihuahua = get("CH")
    static let coahuila = get("CO")
    static let colima = get("CL")
    static let durango = get("DG")
    static let guanajuato = get("GT")
    static let guerrero = get("GR")
    static let hidalgo = get("HG")
    static let jalisco = get("JA")
    static let mexico = get("EM")
    static let mexicoCity = get("DF")
    static let michoacan = get("MI")
    static let morelos = get("MO")
    static let nayarit = get("NA")
    static let nuevoLeon = get("NL")
    static let oaxaca = get("OA")
    static let puebla = get("PU")
    static let queretaro = get("QT")
    static let quintanaRoo = get("QR")
    static let sanLuisPotosi = get("SL")
    static let sinaloa = get("SI")
    static let sonora = get("SO")
    static let tabasco = get("TB")
    static let tamaulipas = get("TM")
    static let tlaxcala = get("TL")
    static let veracruz = get("VE")
    static let yucatan = get("YU")
    static let zacatecas = get("ZA")
}
