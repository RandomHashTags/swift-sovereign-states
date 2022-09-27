//
//  SubdivisionsMicronesia.swift
//  
//
//  Created by Evan Anderson on 9/27/22.
//

import Foundation

public enum SubdivisionsMicronesia : String, CaseIterable, SovereignStateSubdivision {
    case chuuk
    case kosrae
    case pohnpei
    case yap
    
    public func getCountry() -> Country {
        return Country.micronesia
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.states
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .kosrae:
            return ""
        default:
            return "_" + getTypeSuffix()
        }
    }
    
    public func getFlagURLWikipediaSVGID() -> String? {
        switch self {
        case .chuuk: return "5/55/Flag_of_Chuuk"
        case .kosrae: return "2/23/Flag_of_Kosrae"
        case .pohnpei: return "c/ce/Flag_of_Pohnpei"
        case .yap: return "2/2c/Flag_of_Yap"
        }
    }
}
