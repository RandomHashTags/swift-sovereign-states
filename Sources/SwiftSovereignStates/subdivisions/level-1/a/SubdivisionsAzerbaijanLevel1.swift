//
//  SubdivisionsAzerbaijanLevel1.swift
//  
//
//  Created by Evan Anderson on 7/26/22.
//

import Foundation

public typealias SubdivisionsAzerbaijanLevel1 = Locale.Region.Subdivision.Level1.Azerbaijan

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.azerbaijan, allSameType: false, type: Locale.Region.SubdivisionType.district)
    struct Azerbaijan : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .baku,
                    .ganja,
                    .lankaranCity,
                    .mingachevir,
                    .naftalan,
                    .nakhchivanCity,
                    .shakiCity,
                    .shirvan,
                    .sumgayit,
                    .yevlakh_city:
                return Locale.Region.SubdivisionType.municipality
            case .nakhchivan:
                return Locale.Region.SubdivisionType.autonomousRepublic
            default:
                return Locale.Region.SubdivisionType.district
            }
        }
    }
}

public extension SubdivisionsAzerbaijanLevel1 { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Azerbaijan | https://en.wikipedia.org/wiki/ISO_3166-2:AZ
    static let absheron = get("ABS")
    static let agdash = get("AGS")
    static let agdam = get("AGM")
    static let aghjabadi = get("AGC")
    static let agstafa = get("AGA")
    static let agsu = get("AGU")
    static let astara = get("AST")
    static let babek = get("BAB")
    static let balakan = get("BAL")
    static let barda = get("BAR")
    static let beylagan = get("BEY")
    static let bilasuvar = get("BIL")
    static let dashkasan = get("DAS")
    static let fuzuli = get("FUZ")
    static let gabala = get("QAB")
    static let gadabay = get("GAD")
    static let gazakh = get("QAZ")
    static let gobustan = get("QOB")
    static let goranboy = get("GOR")
    static let goychay = get("GOY")
    static let goygol = get("GYG")
    static let guba = get("QBA")
    static let gubadli = get("QBI")
    static let gusar = get("QUS")
    static let hajigabul = get("HAC")
    static let imishli = get("IMI")
    static let ismayilli = get("ISM")
    static let jabrayil = get("CAB")
    static let jalilabad = get("CAL")
    static let julfa = get("CUL")
    static let kalbajar = get("KAL")
    static let kangarli = get("KAN")
    static let khachmaz = get("XAC")
    static let khizi = get("XIZ")
    static let khojaly = get("XCI")
    static let khojavend = get("XVD")
    static let kurdamir = get("KUR")
    static let lachin = get("LAC")
    static let lankaran = get("LAN")
    static let lerik = get("LER")
    static let masally = get("MAS")
    static let neftchala = get("NEF")
    static let oghuz = get("OGU")
    static let ordubad = get("ORD")
    static let saatly = get("SAT")
    static let sabirabad = get("SAB")
    static let salyan = get("SAL")
    static let samukh = get("SMX")
    static let shabran = get("SBN")
    static let shaki = get("SAK")
    static let shamakhi = get("SMI")
    static let shamkir = get("SKR")
    static let sharur = get("SAR")
    static let shusha = get("SUS")
    static let siyazan = get("SIY")
    static let tartar = get("TAR")
    static let tovuz = get("TOV")
    static let ujar = get("UCA")
    static let yardimli = get("YAR")
    static let yevlakh = get("YEV")
    static let zagatala = get("ZAQ")
    static let zangilan = get("ZAN")
    static let zardab = get("ZAR")

    static let baku = get("BA")
    static let ganja = get("GA")
    static let lankaranCity = get("LA")
    static let mingachevir = get("MI")
    static let naftalan = get("NA")
    static let nakhchivanCity = get("NV")
    static let shakiCity = get("SA")
    static let shirvan = get("SR")
    static let sumgayit = get("SM")
    static let yevlakh_city = get("YE")

    static let nakhchivan = get("NX")
}
