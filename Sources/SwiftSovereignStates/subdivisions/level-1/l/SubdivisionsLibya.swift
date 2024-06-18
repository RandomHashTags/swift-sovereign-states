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
    case jafara
    case jufra
    case kufra
    case marj
    case al_wahat
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
    
    public var country : Locale.Region {
        return Locale.Region.libya
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.districts
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .benghazi:
            return nil
        case .tripoli:
            return "_" + type_suffix + ",_Libya"
        default:
            return "_" + type_suffix
        }
    }
}
