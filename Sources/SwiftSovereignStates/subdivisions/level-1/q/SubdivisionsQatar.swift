//
//  SubdivisionsQatar.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsQatar : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Municipalities_of_Qatar
    case ad_dawhah
    case al_daayen
    case al_khor
    case al_rayyan
    case al_shamal
    case al_wakrah
    case al_shahaniya
    case umm_salal
    
    public var country : Locale.Region {
        return Locale.Region.qatar
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.municipalities
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .ad_dawhah:
            return "_(" + type_suffix.lowercased() + ")"
        default:
            return nil
        }
    }
}
