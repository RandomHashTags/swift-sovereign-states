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
}
