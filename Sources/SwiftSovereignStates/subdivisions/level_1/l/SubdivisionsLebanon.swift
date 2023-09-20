//
//  SubdivisionsLebanon.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public enum SubdivisionsLebanon : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Governorates_of_Lebanon
    case akkar
    case baalbek_hermel
    case beirut
    case beqaa
    case keserwan_jbeil
    case mount_lebanon
    case nabatieh
    case north
    case south
    
    public var country : Locale.Region {
        return Locale.Region.lebanon
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.governorates
    }
    
    public var isoAlpha2 : String? {
        switch self {
        case .akkar: return "AK"
        case .baalbek_hermel: return "BH"
        case .beirut: return "BA"
        case .beqaa: return "BI"
        case .keserwan_jbeil: return nil
        case .mount_lebanon: return "JL"
        case .nabatieh: return "NA"
        case .north: return "AS"
        case .south: return "JA"
        }
    }
}
