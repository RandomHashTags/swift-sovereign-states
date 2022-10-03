//
//  WeatherSeason.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public enum WeatherSeason : CaseIterable {
    case autumn
    case spring
    case summer
    case winter
    
    func getAliases() -> [String]? {
        switch self {
        case .autumn: return ["Fall"]
        case .spring: return ["Springtime"]
        default: return nil
        }
    }
}
