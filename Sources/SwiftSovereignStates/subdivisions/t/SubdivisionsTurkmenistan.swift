//
//  SubdivisionsTurkmenistan.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsTurkmenistan : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Turkmenistan
    case ahal
    case ashgabat
    case balkan
    case dasoguz
    case lebap
    case mary
    
    public func getCountry() -> Country {
        return Country.turkmenistan
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public func getRealName() -> String? {
        switch self {
        case .dasoguz: return "Daşoguz"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix(typeSuffix: String) -> String? {
        switch self {
        case .ashgabat: return nil
        default: return "_Region"
        }
    }
    
    public func getISOAlpha2() -> String? {
        switch self {
        case .ahal: return "A"
        case .ashgabat: return "S"
        case .balkan: return "B"
        case .dasoguz: return "D"
        case .lebap: return "L"
        case .mary: return "M"
        }
    }
    
    public func getFlagURLWikipediaSVGID() -> String? {
        switch self {
        case .ashgabat: return "7/7e/Ashgabat_%28seal%29"
        default: return nil
        }
    }
}
