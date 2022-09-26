//
//  SubdivisionsQatar.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsQatar : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Municipalities_of_Qatar
    case ad_dawhah
    case al_daayen
    case al_khor
    case al_rayyan
    case al_shamal
    case al_wakrah
    case al_shahaniya
    case umm_salal
    
    public func getCountry() -> Country {
        return Country.qatar
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.municipalities
    }
    
    public func getRealName() -> String? {
        switch self {
        case .ad_dawhah: return "Ad-Dawhah"
        case .al_shahaniya: return "Al-Shahanya"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .ad_dawhah: return "_(municipality)"
        default: return nil
        }
    }
}
