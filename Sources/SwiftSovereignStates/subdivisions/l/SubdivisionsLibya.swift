//
//  SubdivisionsLibya.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsLibya : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_Libya
    case butnan
    case jabal_al_akhdar
    case jabal_al_gharbi
    case jafarah
    case jufra
    case kufrah
    case marj
    case al_walhat
    case nuqat_al_khams
    case zawiya
    case benghazi
    case darnah
    case ghat
    case murqub
    case misrata
    case murzuq
    case nalut
    case sabha
    case sirte
    case tripoli
    case wadi_al_hayaa
    case wadi_al_shatii
    
    public func getCountry() -> Country {
        return Country.libya
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.districts
    }
    
    public func getWikipediaURLSuffix(typeSuffix: String) -> String? {
        switch self {
        case .benghazi,
                .jafarah:
            return ""
        case .tripoli:
            return typeSuffix + ",_Libya"
        default:
            return nil
        }
    }
}
