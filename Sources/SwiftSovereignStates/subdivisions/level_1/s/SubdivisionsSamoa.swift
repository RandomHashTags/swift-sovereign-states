//
//  SubdivisionsSamoa.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public enum SubdivisionsSamoa : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_Samoa
    case a_ana
    case aiga_i_le_tai
    case atua
    case fa_asaleleaga
    case gaga_emauga
    case gaga_ifomauga
    case palauli
    case satupa_itea
    case tuamasaga
    case va_a_o_fonoti
    case vaisigano
    
    public var country : Country {
        return Country.samoa
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.districts
    }
    
    public var real_name : String? {
        switch self {
        case .a_ana: return "A'ana"
        case .aiga_i_le_tai: return "Aiga-i-le-Tai"
        case .fa_asaleleaga: return "Faʻasaleleaga"
        case .gaga_emauga: return "Gagaʻemauga"
        case .gaga_ifomauga: return "Gagaʻifomauga"
        case .satupa_itea: return "Satupaʻitea"
        case .va_a_o_fonoti: return "Va'a-o-Fonoti"
        default: return nil
        }
    }
    
    public var wikipedia_url_suffix : String? {
        return nil
    }
}
