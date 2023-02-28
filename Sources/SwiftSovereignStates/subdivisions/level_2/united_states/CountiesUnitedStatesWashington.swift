//
//  CountiesUnitedStatesWashington.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesWashington : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Washington
    case adams
    case asotin
    case benton
    case chelan
    case clallam
    case clark
    case columbia
    case cowlitz
    case douglas
    case ferry
    case franklin
    case garfield
    case grant
    case grays_harbor
    case island
    case jefferson
    case king
    case kitsap
    case kittitas
    case klickitat
    case lewis
    case lincoln
    case mason
    case okanogan
    case pacific
    case pend_oreille
    case pierce
    case san_juan
    case skagit
    case skamania
    case snohomish
    case spokane
    case stevens
    case thurston
    case wahkiakum
    case walla_walla
    case whatcom
    case whitman
    case yakima
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.washington
    }
    
    public var fips_code : Int {
        switch self {
        case .adams: return 001
        case .asotin: return 003
        case .benton: return 005
        case .chelan: return 007
        case .clallam: return 009
        case .clark: return 011
        case .columbia: return 013
        case .cowlitz: return 015
        case .douglas: return 017
        case .ferry: return 019
        case .franklin: return 021
        case .garfield: return 023
        case .grant: return 025
        case .grays_harbor: return 027
        case .island: return 029
        case .jefferson: return 031
        case .king: return 033
        case .kitsap: return 035
        case .kittitas: return 037
        case .klickitat: return 039
        case .lewis: return 041
        case .lincoln: return 043
        case .mason: return 045
        case .okanogan: return 047
        case .pacific: return 049
        case .pend_oreille: return 051
        case .pierce: return 053
        case .san_juan: return 055
        case .skagit: return 057
        case .skamania: return 059
        case .snohomish: return 061
        case .spokane: return 063
        case .stevens: return 065
        case .thurston: return 067
        case .wahkiakum: return 069
        case .walla_walla: return 071
        case .whatcom: return 073
        case .whitman: return 075
        case .yakima: return 077
        }
    }
}
