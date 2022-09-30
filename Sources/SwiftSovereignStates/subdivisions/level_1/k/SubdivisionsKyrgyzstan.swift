//
//  SubdivisionsKyrgyzstan.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public enum SubdivisionsKyrgyzstan : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Kyrgyzstan
    case batken
    case chuy
    case issyk_kul
    case jalal_abad
    case naryn
    case osh
    case talas
    
    case bishkek
    case osh_city
    
    public func getCountry() -> Country {
        return Country.kyrgyzstan
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    public func getType() -> SovereignStateSubdivisionType? {
        switch self {
        case .bishkek, .osh_city:
            return SovereignStateSubdivisionType.independent_cities
        default:
            return nil
        }
    }
    
    public func getRealName() -> String? {
        switch self {
        case .chuy: return "Chüy"
        case .issyk_kul: return "Issyk-Kul"
        case .jalal_abad: return "Jalal-Abad"
        case .osh_city: return "Osh"
        default: return nil
        }
    }
}
