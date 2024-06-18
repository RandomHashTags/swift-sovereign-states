//
//  SubdivisionsThailand.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public enum SubdivisionsThailand : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Thailand
    case amnat_charoen
    case ang_thong
    case bueng_kan
    case buriram
    case chachoengsao
    case chai_nat
    case chaiyaphum
    case chanthaburi
    case chiang_mai
    case chiang_rai
    case chonburi
    case chumphon
    case kalasin
    case kamphaeng_phet
    case kanchanaburi
    case khon_kaen
    case krabi
    case lampang
    case lamphun
    case loei
    case lopburi
    case mae_hong_son
    case maha_sarakham
    case mukdahan
    case nakhon_nayok
    case nakhon_pathom
    case nakhon_phanom
    case nakhon_ratchasima
    case nakhon_sawan
    case nakhon_si_thammarat
    case nan
    case narathiwat
    case nong_bua_lamphu
    case nong_khai
    case nonthaburi
    case pathum_thani
    case pattani
    case phang_nga
    case phatthalung
    case phayao
    case phetchabun
    case phetchaburi
    case phichit
    case phitsanulok
    case phra_nakhon_si_ayutthaya
    case phrae
    case phuket
    case prachinburi
    case prachuap_khiri_khan
    case ranong
    case ratchaburi
    case rayong
    case roi_et
    case sa_kaeo
    case sakon_nakhon
    case samut_prakan
    case samut_sakhon
    case samut_songkhram
    case saraburi
    case satun
    case sing_buri
    case sisaket
    case songkhla
    case sukhothai
    case suphan_buri
    case surat_thani
    case surin
    case tak
    case trang
    case trat
    case ubon_ratchathani
    case udon_thani
    case uthai_thani
    case uttaradit
    case yala
    case yasothon
    
    case bangkok
    
    public var country : Locale.Region {
        return Locale.Region.thailand
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .bangkok:
            return SovereignStateSubdivisionType.special_administrative_areas
        default:
            return SovereignStateSubdivisionType.provinces
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .amnat_charoen: return "9/9b/Flag_Amnatcharoen_Province.png"
        case .ang_thong: return "7/7a/Ang_Thong_Flag.png"
        case .bangkok: return "b/b6/Flag_of_Bangkok"
        case .bueng_kan: return "9/96/Flag_of_Bueng_Kan_Province.png"
        case .buriram: return "2/2f/Flag_Buriram_Province.png"
        case .chachoengsao: return "7/7e/Flag_of_Chachoengsao_Province.png"
        case .chai_nat: return "b/bf/Chai_Nat_Flag.png"
        case .chaiyaphum: return "0/0d/Chaiyaphum_Flag.png"
        case .chanthaburi: return "9/92/Chanthaburi_Flag.png"
        case .chiang_mai: return "6/62/Flag_Chiang_Mai_Province.png"
        case .chiang_rai: return "1/19/Chiangrai_Flag.png"
        case .chonburi: return "6/69/Chon_Buri_Flag.png"
        case .chumphon: return "c/c3/Chumphon_Flag.png"
        case .kalasin: return "e/e7/Flag_Karasin_Province.png"
        case .kamphaeng_phet: return "1/1b/Flag_Kamphaeng_Phet_Province.png"
        case .kanchanaburi: return "b/bf/Kanchanaburi_Flag.png"
        case .khon_kaen: return "5/52/Khon_Kaen_Flag.png"
        case .krabi: return "b/b9/Flag_of_Krabi_Province.jpg"
        case .lampang: return "7/74/Flag_Lampang_Province.png"
        case .lamphun: return "d/da/Lamphun_provincial_flag.png"
        case .loei: return "8/8a/Loei_Flag.png"
        case .lopburi: return "d/dd/Flag_Lop_Buri_Province.png"
        case .mae_hong_son: return "a/a1/Flag_Mae_Hong_Son_Province.png"
        case .maha_sarakham: return "7/79/Mahasarakham_PV_Flag.png"
        case .mukdahan: return "1/1b/Flag_Mokdahan_Province.png"
        case .nakhon_nayok: return "2/2b/Flag_Nakhon_Nayok_Province.png"
        case .nakhon_pathom: return "8/89/Flag_of_Nakhon_Pathom_Province.jpg"
        case .nakhon_phanom: return "4/40/Flag_of_Nakhon_Phanom_Province"
        case .nakhon_ratchasima: return "7/72/Nakhon_Ratchasima_Flag.png"
        case .nakhon_sawan: return "0/08/Nakhon_Sawan_Flag.png"
        case .nakhon_si_thammarat: return "5/56/Nakhon_Si_Thammarat_Flag"
        case .nan: return "2/21/%E0%B8%98%E0%B8%87%E0%B8%9B%E0%B8%A3%E0%B8%B0%E0%B8%88%E0%B8%B3%E0%B8%88%E0%B8%B1%E0%B8%87%E0%B8%AB%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B8%99%E0%B9%88%E0%B8%B2%E0%B8%99"
        case .narathiwat: return "5/5a/Flag_Naratiwat_Province.png"
        case .nong_bua_lamphu: return "6/69/Nong_Bua_Lam_Phu_Flag.png"
        case .nong_khai: return "d/d0/Flag_Nong_Khai_Province.png"
        case .nonthaburi: return "0/07/%E0%B8%98%E0%B8%87%E0%B8%88%E0%B8%B1%E0%B8%87%E0%B8%AB%E0%B8%A7%E0%B8%B1%E0%B8%94%E0%B8%99%E0%B8%99%E0%B8%97%E0%B8%9A%E0%B8%B8%E0%B8%A3%E0%B8%B5"
        case .pathum_thani: return "3/36/Pathum_Thani_Flag.png"
        case .pattani: return "3/3e/Pattani_Flag.png"
        case .phang_nga: return "7/7c/Phangnga_Flag.png"
        case .phatthalung: return "9/9e/Phattalung_provincial_flag_.png"
        case .phayao: return "e/e5/Phayao_flag"
        case .phetchabun: return "d/d5/Flag_Phetchabun_Province.png"
        case .phetchaburi: return "0/04/Flag_Petchaburi_Province.png"
        case .phichit: return "8/82/Flag_of_Phichit_Province.png"
        case .phitsanulok: return "d/d7/Pitsanulok_flag"
        case .phra_nakhon_si_ayutthaya: return "1/12/Flag_of_Phra_Nakhon_Si_Ayutthaya_Province"
        case .phrae: return "f/f4/%E0%B8%98%E0%B8%87%E0%B9%81%E0%B8%9E%E0%B8%A3%E0%B9%88.png"
        case .phuket: return "f/ff/Phuket_Flag.png"
        case .prachinburi: return "5/57/Flag_of_Prachin_Buri_Province.jpg"
        case .prachuap_khiri_khan: return "8/84/Prachuap_Khiri_Khan_Flag.png"
        case .ranong: return "2/2e/Flag_Ranong_Province.png"
        case .ratchaburi: return "0/0f/Ratchaburi_Flag.png"
        case .rayong: return "8/82/Rayong_Flag.png"
        case .roi_et: return "8/8b/Flag_Roi-Et_Province.png"
        case .sa_kaeo: return "c/c1/Sa_Kaeo_Flag.png"
        case .sakon_nakhon: return "e/e8/Sakon_Nakhon_Flag.png"
        case .samut_prakan: return "d/db/Flag_Samut_Prakan_Province.png"
        case .samut_sakhon: return "2/20/Flag_Samut_Sakhon_Province.png"
        case .samut_songkhram: return "2/28/Flag_Samut_Songkhram_Province.png"
        case .saraburi: return "4/42/Saraburi_Flag_2.png"
        case .satun: return "a/a5/Satun_Flag.png"
        case .sing_buri: return "a/ac/Flag_of_Sing_Buri_Province.png"
        case .sisaket: return "2/2b/Si_Sa_Ket_Flag.png"
        case .songkhla: return "3/3c/Flag_Songkhla_Province.png"
        case .sukhothai: return "4/42/Flag_of_Sukhothai_Province"
        case .suphan_buri: return "5/56/Flag_Suphan_Buri_Province.png"
        case .surat_thani: return "f/f7/Flag_Surat_Thani_Province.png"
        case .surin: return "0/05/Flag_of_Surin_Province.png"
        case .tak: return "c/c2/Flag_of_Tak_Province.png"
        case .trang: return "6/6e/Trang_Flag.png"
        case .trat: return "6/61/Trat_Flag.png"
        case .ubon_ratchathani: return "f/ff/Ubon_Ratchathani_Province_Flags"
        case .udon_thani: return "2/2b/Udon_Thani_Flag.png"
        case .uthai_thani: return "a/a6/Flag_of_Uthai_Thani_Province.jpg"
        case .uttaradit: return "7/75/Uttaradit_provincial_flag.png"
        case .yala: return "1/17/Yala_Flag_2.png"
        case .yasothon: return "b/b9/Yasothon_Flag.png"
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .bangkok:
            return nil
        default:
            return "_" + type_suffix
        }
    }
}
