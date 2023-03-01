//
//  CountiesUnitedStatesOregon.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesOregon : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Oregon
    case baker
    case benton
    case clackamas
    case clatsop
    case columbia
    case coos
    case crook
    case curry
    case deschutes
    case douglas
    case gilliam
    case grant
    case harney
    case hood_river
    case jackson
    case jefferson
    case josephine
    case klamath
    case lake
    case lane
    case lincoln
    case linn
    case malheur
    case marion
    case morrow
    case multnomah
    case polk
    case sherman
    case tillamook
    case umatilla
    case union
    case wallowa
    case wasco
    case washington
    case wheeler
    case yamhill
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.oregon
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.counties
    }
    
    public var fips_code : Int {
        switch self {
        case .baker: return 001
        case .benton: return 003
        case .clackamas: return 005
        case .clatsop: return 007
        case .columbia: return 009
        case .coos: return 011
        case .crook: return 013
        case .curry: return 015
        case .deschutes: return 017
        case .douglas: return 019
        case .gilliam: return 021
        case .grant: return 023
        case .harney: return 025
        case .hood_river: return 027
        case .jackson: return 029
        case .jefferson: return 031
        case .josephine: return 033
        case .klamath: return 035
        case .lake: return 037
        case .lane: return 039
        case .lincoln: return 041
        case .linn: return 043
        case .malheur: return 045
        case .marion: return 047
        case .morrow: return 049
        case .multnomah: return 051
        case .polk: return 053
        case .sherman: return 055
        case .tillamook: return 057
        case .umatilla: return 059
        case .union: return 061
        case .wallowa: return 063
        case .wasco: return 065
        case .washington: return 067
        case .wheeler: return 069
        case .yamhill: return 071
        }
    }
}
