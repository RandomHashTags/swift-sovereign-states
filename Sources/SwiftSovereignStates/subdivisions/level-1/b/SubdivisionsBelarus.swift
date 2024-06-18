//
//  SubdivisionsBelarus.swift
//  
//
//  Created by Evan Anderson on 6/21/22.
//

import Foundation

public enum SubdivisionsBelarus : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Belarus
    case brest
    case gomel
    case grodno
    case minsk
    case minsk_city
    case mogilev
    case vitebsk
    
    public var country : Locale.Region {
        return Locale.Region.belarus
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .minsk_city:
            return SovereignStateSubdivisionType.special_cities
        default:
            return SovereignStateSubdivisionType.oblasts
        }
    }
    
    public var neighbors : [any SovereignStateSubdivision] {
        switch self {
        case .brest:
            return [SubdivisionsBelarus.grodno, SubdivisionsBelarus.minsk, SubdivisionsBelarus.gomel]
        case .gomel:
            return [SubdivisionsBelarus.brest, SubdivisionsBelarus.minsk, SubdivisionsBelarus.mogilev]
        case .grodno:
            return [SubdivisionsBelarus.brest, SubdivisionsBelarus.minsk, SubdivisionsBelarus.vitebsk]
        case .minsk:
            return [SubdivisionsBelarus.grodno, SubdivisionsBelarus.brest, SubdivisionsBelarus.gomel, SubdivisionsBelarus.mogilev, SubdivisionsBelarus.vitebsk, SubdivisionsBelarus.minsk_city]
        case .minsk_city:
            return [SubdivisionsBelarus.minsk]
        case .mogilev:
            return [SubdivisionsBelarus.vitebsk, SubdivisionsBelarus.minsk, SubdivisionsBelarus.gomel]
        case .vitebsk:
            return [SubdivisionsBelarus.grodno, SubdivisionsBelarus.minsk, SubdivisionsBelarus.mogilev]
        }
    }
}
