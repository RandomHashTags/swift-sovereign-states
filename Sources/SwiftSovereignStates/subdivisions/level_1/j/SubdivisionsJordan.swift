//
//  SubdivisionsJordan.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsJordan : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Governorates_of_Jordan
    case ajloun
    case amman
    case aqaba
    case balqa
    case irbid
    case jerash
    case karak
    case maan
    case madaba
    case mafraq
    case tafilah
    case zarqa
    
    public func getCountry() -> Country {
        return Country.jordan
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return .governorates
    }
    
    public func getRealName() -> String? {
        switch self {
        case .maan: return "Ma'an"
        default: return nil
        }
    }
}
