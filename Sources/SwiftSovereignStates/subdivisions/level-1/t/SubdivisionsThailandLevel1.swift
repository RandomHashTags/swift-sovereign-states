//
//  SubdivisionsThailandLevel1.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public typealias SubdivisionsThailandLevel1 = Locale.Region.Subdivision.Level1.Thailand

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.thailand, allSameType: false, type: Locale.Region.SubdivisionType.province)
    struct Thailand : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .bangkok:
                return Locale.Region.SubdivisionType.specialAdministrativeArea
                case .phatthaya:
                    return Locale.Region.SubdivisionType.specialAdministrativeCity
            default:
                return Locale.Region.SubdivisionType.province
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsThailandLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Thailand | https://en.wikipedia.org/wiki/ISO_3166-2:TH
    static let amnat_charoen = get("37")
    static let ang_thong = get("15")
    static let bueng_kan = get("38")
    static let buriram = get("31")
    static let chachoengsao = get("24")
    static let chai_nat = get("18")
    static let chaiyaphum = get("18")
    static let chanthaburi = get("22")
    static let chiang_mai = get("50")
    static let chiang_rai = get("57")
    static let chonburi = get("20")
    static let chumphon = get("86")
    static let kalasin = get("46")
    static let kamphaeng_phet = get("62")
    static let kanchanaburi = get("71")
    static let khon_kaen = get("40")
    static let krabi = get("81")
    static let lampang = get("52")
    static let lamphun = get("51")
    static let loei = get("42")
    static let lopburi = get("16")
    static let mae_hong_son = get("58")
    static let maha_sarakham = get("44")
    static let mukdahan = get("49")
    static let nakhon_nayok = get("26")
    static let nakhon_pathom = get("73")
    static let nakhon_phanom = get("48")
    static let nakhon_ratchasima = get("30")
    static let nakhon_sawan = get("60")
    static let nakhon_si_thammarat = get("80")
    static let nan = get("55")
    static let narathiwat = get("96")
    static let nong_bua_lamphu = get("39")
    static let nong_khai = get("43")
    static let nonthaburi = get("12")
    static let pathum_thani = get("13")
    static let pattani = get("94")
    static let phang_nga = get("82")
    static let phatthalung = get("93")
    static let phatthaya = get("S")
    static let phayao = get("56")
    static let phetchabun = get("67")
    static let phetchaburi = get("76")
    static let phichit = get("66")
    static let phitsanulok = get("65")
    static let phra_nakhon_si_ayutthaya = get("14")
    static let phrae = get("54")
    static let phuket = get("83")
    static let prachinburi = get("25")
    static let prachuap_khiri_khan = get("77")
    static let ranong = get("85")
    static let ratchaburi = get("70")
    static let rayong = get("21")
    static let roi_et = get("45")
    static let sa_kaeo = get("27")
    static let sakon_nakhon = get("47")
    static let samut_prakan = get("11")
    static let samut_sakhon = get("74")
    static let samut_songkhram = get("75")
    static let saraburi = get("19")
    static let satun = get("91")
    static let sing_buri = get("17")
    static let sisaket = get("33")
    static let songkhla = get("90")
    static let sukhothai = get("64")
    static let suphan_buri = get("72")
    static let surat_thani = get("84")
    static let surin = get("32")
    static let tak = get("63")
    static let trang = get("92")
    static let trat = get("23")
    static let ubon_ratchathani = get("34")
    static let udon_thani = get("41")
    static let uthai_thani = get("61")
    static let uttaradit = get("53")
    static let yala = get("95")
    static let yasothon = get("35")
    
    static let bangkok = get("10")
}
