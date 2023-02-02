//
//  SubdivisionsAlgeria.swift
//  
//
//  Created by Evan Anderson on 6/21/22.
//

import Foundation

public enum SubdivisionsAlgeria : String, SovereignStateSubdivision {  // https://en.wikipedia.org/wiki/Provinces_of_Algeria
    case adrar
    case ain_defla
    case ain_temouchent
    case algiers
    case annaba
    case batna
    case bechar
    case bejaia
    case beni_abbes
    case biskra
    case blida
    case bordj_baji_mokhtar
    case bordj_bou_arreridj
    case bouira
    case boumerdes
    case chlef
    case constantine
    case djanet
    case djelfa
    case el_bayadh
    case el_m_ghair
    case el_menia
    case el_oued
    case el_tarf
    case ghardaia
    case guelma
    case illizi
    case in_guezzam
    case in_salah
    case jijel
    case khenchela
    case laghouat
    case m_sila
    case mascara
    case medea
    case mila
    case mostaganem
    case naama
    case oran
    case ouargla
    case ouled_djellal
    case oum_el_bouaghi
    case relizane
    case saida
    case setif
    case sidi_bel_abbes
    case skikda
    case souk_ahras
    case tamanrasset
    case tebessa
    case tiaret
    case timimoun
    case tindouf
    case tipaza
    case tissemsilt
    case tizi_ouzou
    case tlemcen
    case touggourt
    
    public var country : Country {
        return Country.algeria
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public var real_name : String? {
        switch self {
        case .ain_defla: return "Aïn Defla"
        case .ain_temouchent: return "Aïn Témouchent"
        case .bechar: return "Béchar"
        case .bejaia: return "Béjaïa"
        case .beni_abbes: return "Béni Abbès"
        case .bordj_bou_arreridj: return "Bordj Bou Arréridj"
        case .bouira: return "Bouïra"
        case .boumerdes: return "Boumerdès"
        case .el_m_ghair: return "El M'Ghair"
        case .ghardaia: return "Ghardaïa"
        case .m_sila: return "M'Sila"
        case .medea: return "Médéa"
        case .naama: return "Naâma"
        case .saida: return "Saïda"
        case .setif: return "Sétif"
        case .sidi_bel_abbes: return "Sidi Bel Abbès"
        case .tebessa: return "Tébessa"
        default: return nil
        }
    }
    
    public var cities : [any SovereignStateCity]? {
        switch self {
        case .adrar: return CitiesAlgeriaAdrar.allCases
        default: return nil
        }
    }
}
