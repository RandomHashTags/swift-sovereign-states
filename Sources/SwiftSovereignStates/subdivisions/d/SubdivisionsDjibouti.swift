//
//  SubdivisionsDjibouti.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsDjibouti : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Djibouti
    case ali_sabieh
    case arta
    case dikhil
    case djbouti
    case obock
    case tadjourah
    
    public func getCountry() -> Country {
        return Country.djibouti
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    func returnNeighbors() -> [Any]? {
        switch self {
        case .ali_sabieh:
            return [SubdivisionsDjibouti.dikhil, SubdivisionsDjibouti.arta]
        case .arta:
            return [SubdivisionsDjibouti.djbouti, SubdivisionsDjibouti.ali_sabieh, SubdivisionsDjibouti.dikhil, SubdivisionsDjibouti.tadjourah]
        case .dikhil:
            return [SubdivisionsDjibouti.tadjourah, SubdivisionsDjibouti.arta, SubdivisionsDjibouti.ali_sabieh]
        case .djbouti:
            return [SubdivisionsDjibouti.obock, SubdivisionsDjibouti.tadjourah, SubdivisionsDjibouti.arta]
        case .obock:
            return [SubdivisionsDjibouti.tadjourah, SubdivisionsDjibouti.djbouti]
        case .tadjourah:
            return [SubdivisionsDjibouti.obock, SubdivisionsDjibouti.djbouti, SubdivisionsDjibouti.arta, SubdivisionsDjibouti.dikhil]
        }
    }
}
