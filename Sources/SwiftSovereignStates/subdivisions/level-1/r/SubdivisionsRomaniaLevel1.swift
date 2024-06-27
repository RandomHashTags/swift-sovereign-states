//
//  SubdivisionsRomaniaLevel1.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public typealias SubdivisionsRomaniaLevel1 = Locale.Region.Subdivision.Level1.Romania

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.romania, allSameType: false, type: Locale.Region.SubdivisionType.county)
    struct Romania : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .bucharest:
                return Locale.Region.SubdivisionType.municipality
            default:
                return Locale.Region.SubdivisionType.county
            }
        }
    }
}

public extension SubdivisionsRomaniaLevel1 { // https://en.wikipedia.org/wiki/Counties_of_Romania | https://en.wikipedia.org/wiki/ISO_3166-2:RO
    static let alba = get("AB")
    static let arad = get("AR")
    static let arges = get("AG")
    static let bacau = get("BC")
    static let bihor = get("BH")
    static let bistrita_nasaud = get("BN")
    static let botosani = get("BT")
    static let braila = get("BR")
    static let brasov = get("BV")
    static let buzau = get("BZ")
    static let calarasi = get("CL")
    static let caras_severin = get("CS")
    static let cluj = get("CJ")
    static let constanta = get("CT")
    static let covasna = get("CV")
    static let dambovita = get("DB")
    static let dolj = get("DJ")
    static let galati = get("GL")
    static let giurgiu = get("GR")
    static let gorj = get("GJ")
    static let harghita = get("HR")
    static let hunedoara = get("HD")
    static let ialomita = get("IL")
    static let iasi = get("IS")
    static let ilfov = get("IF")
    static let maramures = get("MM")
    static let mehedinti = get("MH")
    static let mures = get("MS")
    static let neamt = get("NT")
    static let olt = get("OT")
    static let prahova = get("PH")
    static let salaj = get("SJ")
    static let satu_mare = get("SM")
    static let sibiu = get("SB")
    static let suceava = get("SV")
    static let teleorman = get("TR")
    static let timis = get("TM")
    static let tulcea = get("TL")
    static let valcea = get("VL")
    static let vaslui = get("VS")
    static let vrancea = get("VN")
    
    static let bucharest = get("B")
}
