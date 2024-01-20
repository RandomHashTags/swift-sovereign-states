//
//  SubdivisionsMicronesia.swift
//  
//
//  Created by Evan Anderson on 9/27/22.
//

import Foundation

public enum SubdivisionsMicronesia : String, SovereignStateSubdivision {
    case chuuk
    case kosrae
    case pohnpei
    case yap
    
    public var country : Locale.Region {
        return Locale.Region.micronesia
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.states
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .kosrae:
            return nil
        default:
            return "_" + type_suffix
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .chuuk: return "5/55/Flag_of_Chuuk"
        case .kosrae: return "2/23/Flag_of_Kosrae"
        case .pohnpei: return "c/ce/Flag_of_Pohnpei"
        case .yap: return "2/2c/Flag_of_Yap"
        }
    }
}
