//
//  CountiesUnitedStatesMaryland.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesMaryland : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Maryland
    case allegany
    case anne_arundel
    case baltimore
    case baltimore_city
    case calvert
    case caroline
    case carroll
    case cecil
    case charles
    case dorchester
    case frederick
    case garrett
    case harford
    case howard
    case kent
    case montgomery
    case prince_george_s
    case queen_anne_s
    case somerset
    case st_mary_s
    case talbot
    case washington
    case wicomico
    case worcester
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.maryland
    }
    
    public var type : SovereignStateLevel2DivisionType {
        switch self {
        case .baltimore_city:
            return SovereignStateLevel2DivisionType.independent_cities
        default:
            return SovereignStateLevel2DivisionType.counties
        }
    }
    
    public var real_name : String? {
        switch self {
        case .baltimore_city: return "Baltimore"
        case .prince_george_s: return "Prince George's"
        case .queen_anne_s: return "Queen Anne's"
        case .st_mary_s: return "St. Mary's"
        default: return nil
        }
    }
    
    public var fips_code : Int {
        switch self {
        case .allegany: return 001
        case .anne_arundel: return 003
        case .baltimore: return 005
        case .baltimore_city: return 510
        case .calvert: return 009
        case .caroline: return 011
        case .carroll: return 013
        case .cecil: return 015
        case .charles: return 017
        case .dorchester: return 019
        case .frederick: return 021
        case .garrett: return 023
        case .harford: return 025
        case .howard: return 027
        case .kent: return 029
        case .montgomery: return 031
        case .prince_george_s: return 033
        case .queen_anne_s: return 035
        case .somerset: return 039
        case .st_mary_s: return 037
        case .talbot: return 041
        case .washington: return 043
        case .wicomico: return 045
        case .worcester: return 047
        }
    }
}
