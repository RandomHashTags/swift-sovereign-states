//
//  SubdivisionsLibya.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsLibya : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_Libya
    case butnan
    case jabal_al_akhdar
    case jabal_al_gharbi
    case jafara
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
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.districts
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .benghazi:
            return nil
        case .tripoli:
            return "_" + getTypeSuffix() + ",_Libya"
        default:
            return "_" + getTypeSuffix()
        }
    }
}
