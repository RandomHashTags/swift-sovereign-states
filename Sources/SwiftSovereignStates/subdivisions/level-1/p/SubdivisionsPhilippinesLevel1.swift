//
//  SubdivisionsPhilippinesLevel1.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public typealias SubdivisionsPhilippinesLevel1 = Locale.Region.Subdivision.Level1.Philippines

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.philippines, allSameType: true, type: Locale.Region.SubdivisionType.province)
    struct Philippines : Locale.Region.Subdivision.Level1Protocol {

        /*public var type : Locale.Region.SubdivisionType {
            switch self {
            //case .metro_manila:
            //    return Locale.Region.SubdivisionType.administrativeArea
            default:
                return Locale.Region.SubdivisionType.province
            }
        }*/
    }
}

@SubdivisionCases
public extension SubdivisionsPhilippinesLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_the_Philippines | https://en.wikipedia.org/wiki/ISO_3166-2:PH
    static let abra = get("ABR")
    static let agusan_del_norte = get("AGN")
    static let agusan_del_sur = get("AGS")
    static let aklan = get("AKL")
    static let albay = get("ALB")
    static let antique = get("ANT")
    static let apayao = get("APA")
    static let aurora = get("AUR")
    static let basilan = get("BAS")
    static let bataan = get("BAN")
    static let batanes = get("BTN")
    static let batangas = get("BTG")
    static let benguet = get("BEN")
    static let biliran = get("BIL")
    static let bohol = get("BOH")
    static let bukidnon = get("BUK")
    static let bulacan = get("BUL")
    static let cagayan = get("CAG")
    static let camarines_norte = get("CAN")
    static let camarines_sur = get("CAS")
    static let camiguin = get("CAM")
    static let capiz = get("CAP")
    static let catanduanes = get("CAT")
    static let cavite = get("CAV")
    static let cebu = get("CEB")
    static let cotabato = get("NCO")
    static let davao_de_oro = get("COM")
    static let davao_del_norte = get("DAV")
    static let davao_del_sur = get("DAS")
    static let davao_occidental = get("DVO")
    static let davao_oriental = get("DAO")
    static let dinagat_islands = get("DIN")
    static let eastern_samar = get("EAS")
    static let guimaras = get("GUI")
    static let ifugao = get("IFU")
    static let ilocos_norte = get("ILN")
    static let ilocos_sur = get("ILS")
    static let iloilo = get("ILI")
    static let isabela = get("ISA")
    static let kalinga = get("KAL")
    static let la_union = get("LUN")
    static let laguna = get("LAG")
    static let lanao_del_norte = get("LAN")
    static let lanao_del_sur = get("LAS")
    static let leyte = get("LEY")
    static let maguindanao_del_norte = get("MGN")
    static let maguindanao_del_sur = get("MGS")
    static let marinduque = get("MAD")
    static let masbate = get("MAS")
    static let misamis_occidental = get("MDC")
    static let misamis_oriental = get("MDR")
    static let mountain_province = get("MOU")
    static let negros_occidental = get("NEC")
    static let negros_oriental = get("NER")
    static let northern_samar = get("NSA")
    static let nueva_ecija = get("NUE")
    static let nueva_vizcaya = get("NUV")
    static let occidental_mindoro = get("MDC")
    static let oriental_mindoro = get("MDR")
    static let palawan = get("PLW")
    static let pampanga = get("PAM")
    static let pangasinan = get("PAN")
    static let quezon = get("QUE")
    static let quirino = get("QUI")
    static let rizal = get("RIZ")
    static let romblon = get("ROM")
    static let samar = get("WSA")
    static let sarangani = get("SAR")
    static let siquijor = get("SIG")
    static let sorsogon = get("SOR")
    static let south_cotabato = get("SCO")
    static let southern_leyte = get("SLE")
    static let sultan_kudarat = get("SUK")
    static let sulu = get("SLU")
    static let surigao_del_norte = get("SUN")
    static let surigao_del_sur = get("SUR")
    static let tarlac = get("TAR")
    static let tawi_tawi = get("TAW")
    static let zambales = get("ZMB")
    static let zamboanga_del_norte = get("ZAN")
    static let zamboanga_del_sur = get("ZAS")
    static let zamboanga_sibugay = get("ZSI")
    
    //static let metro_manila
}