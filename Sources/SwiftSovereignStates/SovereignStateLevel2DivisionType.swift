//
//  SovereignStateLevel2DivisionType.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum SovereignStateLevel2DivisionType : CaseIterable {
    case boroughs
    case counties
    case independent_cities
    case parishes
    
    public var name_singular : String {
        switch self {
        case .boroughs: return "Borough"
        case .counties: return "County"
        case .independent_cities: return "Independent City"
        case .parishes: return "Parish"
        }
    }
    
    public var name_plural : String {
        switch self {
        case .boroughs: return "Boroughs"
        case .counties: return "Counties"
        case .independent_cities: return "Independent Cities"
        case .parishes: return "Parishes"
        }
    }
}
