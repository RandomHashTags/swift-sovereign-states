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
    
    public var country : Locale.Region {
        return Locale.Region.samoa
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.districts
    }
    
    public var wikipediaURLSuffix : String? {
        return nil
    }
}
