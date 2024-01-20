//
//  SubdivisionsKuwait.swift
//  
//
//  Created by Evan Anderson on 9/27/22.
//

import Foundation

public enum SubdivisionsKuwait : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Governorates_of_Kuwait
    case ahmadi
    case al_asimah
    case al_jahra
    case farwaniya
    case hawalli
    case mubarak_al_kabeer
    
    public var country : Locale.Region {
        return Locale.Region.kuwait
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.governorates
    }
    
    public var isoAlpha2 : String? {
        switch self {
        case .ahmadi: return "AH"
        case .al_asimah: return "KU"
        case .al_jahra: return "JA"
        case .farwaniya: return "FA"
        case .hawalli: return "HA"
        case .mubarak_al_kabeer: return "MU"
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .al_asimah:
            return "_(Kuwait)"
        default:
            return "_" + type_suffix
        }
    }
}
