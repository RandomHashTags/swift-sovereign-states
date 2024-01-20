//
//  SubdivisionsBermuda.swift
//  
//
//  Created by Evan Anderson on 2/11/23.
//

import Foundation

public enum SubdivisionsBermuda : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Bermuda
    case devonshire
    case hamilton
    case paget
    case pembroke
    case sandys
    case smith_s
    case southampton
    case st_george_s
    case warwick
    
    case hamilton_city
    case st_george_s_town
    
    public var country : Locale.Region {
        return Locale.Region.bermuda
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .hamilton:
            return SovereignStateSubdivisionType.cities
        case .st_george_s_town:
            return SovereignStateSubdivisionType.towns
        default:
            return SovereignStateSubdivisionType.parishes
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .southampton,
                .st_george_s:
            return "_" + type_suffix + ",_Bermuda"
        case .hamilton_city,
                .st_george_s_town:
            return ",_Bermuda"
        default:
            return "_" + type_suffix
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .devonshire: return nil
        case .hamilton: return nil
        case .paget: return nil
        case .pembroke: return nil
        case .sandys: return nil
        case .smith_s: return "d/d1/Crest_of_Sir_Thomas_Smith.png"
        case .southampton: return nil
        case .st_george_s: return nil
        case .warwick: return nil
            
        case .hamilton_city: return nil
        case .st_george_s_town: return "e/ec/Flag_of_St._George%27s%2C_Bermuda.png"
        }
    }
}
