//
//  CountiesUnitedStatesWestVirginia.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesWestVirginia : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_West_Virginia
    case barbour
    case berkeley
    case boone
    case braxton
    case brooke
    case cabell
    case calhoun
    case clay
    case doddridge
    case fayette
    case gilmer
    case grant
    case greenbrier
    case hampshire
    case hancock
    case hardy
    case harrison
    case jackson
    case jefferson
    case kanawha
    case lewis
    case lincoln
    case logan
    case marion
    case marshall
    case mason
    case mcdowell
    case mercer
    case mineral
    case mingo
    case monongalia
    case monroe
    case morgan
    case nicholas
    case ohio
    case pendleton
    case pleasants
    case pocahontas
    case preston
    case putnam
    case raleigh
    case randolph
    case ritchie
    case roane
    case summers
    case taylor
    case tucker
    case tyler
    case upshur
    case wayne
    case webster
    case wetzel
    case wirt
    case wood
    case wyoming
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.west_virginia
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.counties
    }
    
    public var real_name : String? {
        switch self {
        case .mcdowell: return "McDowell"
        default: return nil
        }
    }
    
    public var fips_code : Int {
        switch self {
        case .barbour: return 001
        case .berkeley: return 003
        case .boone: return 005
        case .braxton: return 007
        case .brooke: return 009
        case .cabell: return 011
        case .calhoun: return 013
        case .clay: return 015
        case .doddridge: return 017
        case .fayette: return 019
        case .gilmer: return 021
        case .grant: return 023
        case .greenbrier: return 025
        case .hampshire: return 027
        case .hancock: return 029
        case .hardy: return 031
        case .harrison: return 033
        case .jackson: return 035
        case .jefferson: return 037
        case .kanawha: return 039
        case .lewis: return 041
        case .lincoln: return 043
        case .logan: return 045
        case .marion: return 049
        case .marshall: return 051
        case .mason: return 053
        case .mcdowell: return 047
        case .mercer: return 055
        case .mineral: return 057
        case .mingo: return 059
        case .monongalia: return 061
        case .monroe: return 063
        case .morgan: return 065
        case .nicholas: return 067
        case .ohio: return 069
        case .pendleton: return 071
        case .pleasants: return 073
        case .pocahontas: return 075
        case .preston: return 077
        case .putnam: return 079
        case .raleigh: return 081
        case .randolph: return 083
        case .ritchie: return 085
        case .roane: return 087
        case .summers: return 089
        case .taylor: return 091
        case .tucker: return 093
        case .tyler: return 095
        case .upshur: return 097
        case .wayne: return 099
        case .webster: return 101
        case .wetzel: return 103
        case .wirt: return 105
        case .wood: return 107
        case .wyoming: return 109
        }
    }
}
