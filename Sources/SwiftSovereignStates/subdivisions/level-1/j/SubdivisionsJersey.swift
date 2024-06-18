//
//  SubdivisionsJersey.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsJersey : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Parishes_of_Jersey
    case grouville
    case saint_lawrence
    case saint_brelade
    case saint_clement
    case saint_helier
    case saint_john
    case saint_martin
    case saint_ouen
    case saint_peter
    case saint_saviour
    case saint_mary
    case trinity
    
    public var country : Locale.Region {
        return Locale.Region.jersey
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.parishes
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .saint_lawrence,
                .saint_clement,
                .saint_john,
                .saint_martin,
                .saint_ouen,
                .saint_peter,
                .saint_saviour,
                .saint_mary,
                .trinity:
            return ",_Jersey"
        default:
            return nil
        }
    }
    
    public var flagURL : String? {
        switch self {
        case .saint_brelade: return "https://comite.je/wp-content/uploads/sites/13/2021/11/icon-st-brelade-1.svg"
        case .saint_clement: return "https://comite.je/wp-content/uploads/sites/13/2021/09/icon-st-clement.svg"
        case .grouville: return "https://comite.je/wp-content/uploads/sites/13/2021/09/icon-grouville.svg"
        case .saint_helier: return "https://comite.je/wp-content/uploads/sites/13/2021/09/icon-st-helier.svg"
        case .saint_john: return "https://comite.je/wp-content/uploads/sites/13/2021/09/icon-st-john.svg"
        case .saint_lawrence: return "https://comite.je/wp-content/uploads/sites/13/2021/09/icon-st-lawrence.svg"
        case .saint_martin: return "https://comite.je/wp-content/uploads/sites/13/2021/09/icon-st-martin.svg"
        case .saint_mary: return "https://comite.je/wp-content/uploads/sites/13/2021/09/icon-st-mary.svg"
        case .saint_ouen: return "https://comite.je/wp-content/uploads/sites/13/2021/09/icon-st-ouen.svg"
        case .saint_peter: return "https://comite.je/wp-content/uploads/sites/13/2021/09/icon-st-peter.svg"
        case .saint_saviour: return "https://comite.je/wp-content/uploads/sites/13/2021/09/icon-st-saviour.svg"
        case .trinity: return "https://comite.je/wp-content/uploads/sites/13/2021/09/icon-trinity.svg"
        }
    }
}
