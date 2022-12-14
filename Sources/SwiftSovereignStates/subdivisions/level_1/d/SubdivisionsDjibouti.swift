//
//  SubdivisionsDjibouti.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsDjibouti : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Djibouti
    case ali_sabieh
    case arta
    case dikhil
    case djibouti
    case obock
    case tadjourah
    
    public func getCountry() -> Country {
        return Country.djibouti
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public func getNeighbors() -> [any SovereignStateSubdivision]? {
        switch self {
        case .ali_sabieh:
            return [SubdivisionsDjibouti.dikhil, SubdivisionsDjibouti.arta]
        case .arta:
            return [SubdivisionsDjibouti.djibouti, SubdivisionsDjibouti.ali_sabieh, SubdivisionsDjibouti.dikhil, SubdivisionsDjibouti.tadjourah]
        case .dikhil:
            return [SubdivisionsDjibouti.tadjourah, SubdivisionsDjibouti.arta, SubdivisionsDjibouti.ali_sabieh]
        case .djibouti:
            return [SubdivisionsDjibouti.obock, SubdivisionsDjibouti.tadjourah, SubdivisionsDjibouti.arta]
        case .obock:
            return [SubdivisionsDjibouti.tadjourah, SubdivisionsDjibouti.djibouti]
        case .tadjourah:
            return [SubdivisionsDjibouti.obock, SubdivisionsDjibouti.djibouti, SubdivisionsDjibouti.arta, SubdivisionsDjibouti.dikhil]
        }
    }
}
