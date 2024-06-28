//
//  SubdivisionsMoldovaLevel1.swift
//  
//
//  Created by Evan Anderson on 9/27/22.
//

import Foundation

public typealias SubdivisionsMoldovaLevel1 = Locale.Region.Subdivision.Level1.Moldova

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.moldova, allSameType: false, type: Locale.Region.SubdivisionType.district)
    struct Moldova : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .balti, .chisinau, .bender:
                return Locale.Region.SubdivisionType.municipality
            case .gagauzia, .left_bank_of_the_dniester:
                return Locale.Region.SubdivisionType.autonomousTerritorialUnit
            default:
                return Locale.Region.SubdivisionType.district
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsMoldovaLevel1 { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Moldova | https://en.wikipedia.org/wiki/ISO_3166-2:MD
    static let anenii_noi = get("AN")
    static let basarabeasca = get("BS")
    static let briceni = get("BR")
    static let cahul = get("CA")
    static let calarasi = get("CL")
    static let cantemir = get("CT")
    static let causeni = get("CS")
    static let cimislia = get("CM")
    static let criuleni = get("CR")
    static let donduseni = get("DO")
    static let drochia = get("DR")
    static let dubasari = get("DU")
    static let edinet = get("ED")
    static let falesti = get("FA")
    static let floresti = get("FL")
    static let glodeni = get("GL")
    static let hincesti = get("HI")
    static let ialoveni = get("IA")
    static let leova = get("LE")
    static let nisporeni = get("NI")
    static let ocnita = get("OC")
    static let orhei = get("OR")
    static let rezina = get("RE")
    static let riscani = get("RI")
    static let singerei = get("SI")
    static let soldanesti = get("SD")
    static let soroca = get("SO")
    static let stefan_voda = get("SV")
    static let straseni = get("ST")
    static let taraclia = get("TA")
    static let telenesti = get("TE")
    static let ungheni = get("UN")

    static let balti = get("BA")
    static let bender = get("BD")
    static let chisinau = get("CU")
    
    static let gagauzia = get("GA")
    static let left_bank_of_the_dniester = get("SN") // aka Transnistria
}
