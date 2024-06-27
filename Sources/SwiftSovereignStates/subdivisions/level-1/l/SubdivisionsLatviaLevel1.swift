//
//  SubdivisionsLatviaLevel1.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public typealias SubdivisionsLatviaLevel1 = Locale.Region.Subdivision.Level1.Latvia

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.latvia, allSameType: false, type: Locale.Region.SubdivisionType.municipality)
    struct Latvia : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .daugavpils,
                    .jurmala,
                    .liepaja,
                    .rezekne_city,
                    .riga,
                    .jelgava_city,
                    .ventspils_city:
                return Locale.Region.SubdivisionType.city
            default:
                return Locale.Region.SubdivisionType.municipality
            }
        }
    }
}

public extension SubdivisionsLatviaLevel1 { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Latvia | https://en.wikipedia.org/wiki/ISO_3166-2:LV
    static let adazi = get("011")
    static let aizkraukle = get("002")
    static let aluksne = get("007")
    static let augsdaugava = get("111")
    static let balvi = get("015")
    static let bauska = get("16")
    static let cesis = get("022")
    static let dobele = get("026")
    static let gulbene = get("033")
    static let jekabpils = get("042")
    static let jelgava = get("041")
    static let kekava = get("052")
    static let kraslava = get("047")
    static let kuldiga = get("050")
    static let limbazi = get("054")
    static let livani = get("056")
    static let ludza = get("058")
    static let madona = get("059")
    static let marupe = get("062")
    static let ogre = get("067")
    static let olaine = get("068")
    static let preili = get("073")
    static let rezekne = get("077")
    static let ropazi = get("080")
    static let salaspils = get("087")
    static let saldus = get("088")
    static let saulkrasti = get("089")
    static let sigulda = get("091")
    static let smiltene = get("094")
    static let dienvidkurzeme = get("112")
    static let talsi = get("097")
    static let tukums = get("099")
    static let valka = get("101")
    static let valmiera = get("113")
    static let varaklani = get("102")
    static let ventspils = get("106")
    
    static let daugavpils = get("DGV")
    static let jurmala = get("JUR")
    static let liepaja = get("LPX")
    static let rezekne_city = get("REZ")
    static let riga = get("RIX")
    static let jelgava_city = get("JEL")
    static let ventspils_city = get("VEN")
}
