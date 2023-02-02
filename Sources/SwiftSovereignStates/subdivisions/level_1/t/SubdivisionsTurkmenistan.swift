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
    
    public var country : Country {
        return Country.turkmenistan
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public var real_name : String? {
        switch self {
        case .dasoguz: return "Daşoguz"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .ashgabat: return nil
        default: return "_Region"
        }
    }
    
    public var iso_alpha_2 : String? {
        switch self {
        case .ahal: return "A"
        case .ashgabat: return "S"
        case .balkan: return "B"
        case .dasoguz: return "D"
        case .lebap: return "L"
        case .mary: return "M"
        }
    }
    
    public var wikipedia_flag_url_svg_id : String? {
        switch self {
        case .ashgabat: return "7/7e/Ashgabat_%28seal%29"
        default: return nil
        }
    }
}
