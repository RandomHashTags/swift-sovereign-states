//
//  CountiesUnitedStatesArkansas.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesArkansas : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Arkansas
    case arkansas
    case ashley
    case baxter
    case benton
    case boone
    case bradley
    case calhoun
    case carroll
    case chicot
    case clark
    case clay
    case cleburne
    case cleveland
    case columbia
    case conway
    case craighead
    case crawford
    case crittenden
    case cross
    case dallas
    case desha
    case drew
    case faulkner
    case franklin
    case fulton
    case garland
    case grant
    case greene
    case hempstead
    case hot_spring
    case howard
    case independence
    case izard
    case jackson
    case jefferson
    case johnson
    case lafayette
    case lawrence
    case lee
    case lincoln
    case little_river
    case logan
    case lonoke
    case madison
    case marion
    case miller
    case mississippi
    case monroe
    case montgomery
    case nevada
    case newton
    case ouachita
    case perry
    case phillips
    case pike
    case poinsett
    case polk
    case pope
    case prairie
    case pulaski
    case randolph
    case saline
    case scott
    case searcy
    case sebastian
    case sevier
    case sharp
    case st_francis
    case stone
    case union
    case van_buren
    case washington
    case white
    case woodruff
    case yell
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.arkansas
    }
    
    public var fips_code : Int {
        switch self {
        case .arkansas: return 001
        case .ashley: return 003
        case .baxter: return 005
        case .benton: return 007
        case .boone: return 009
        case .bradley: return 011
        case .calhoun: return 013
        case .carroll: return 015
        case .chicot: return 017
        case .clark: return 019
        case .clay: return 021
        case .cleburne: return 023
        case .cleveland: return 025
        case .columbia: return 027
        case .conway: return 029
        case .craighead: return 031
        case .crawford: return 033
        case .crittenden: return 035
        case .cross: return 037
        case .dallas: return 039
        case .desha: return 041
        case .drew: return 043
        case .faulkner: return 045
        case .franklin: return 047
        case .fulton: return 049
        case .garland: return 051
        case .grant: return 053
        case .greene: return 055
        case .hempstead: return 057
        case .hot_spring: return 059
        case .howard: return 061
        case .independence: return 063
        case .izard: return 065
        case .jackson: return 067
        case .jefferson: return 069
        case .johnson: return 071
        case .lafayette: return 073
        case .lawrence: return 075
        case .lee: return 077
        case .lincoln: return 079
        case .little_river: return 081
        case .logan: return 083
        case .lonoke: return 085
        case .madison: return 087
        case .marion: return 089
        case .miller: return 091
        case .mississippi: return 093
        case .monroe: return 095
        case .montgomery: return 097
        case .nevada: return 099
        case .newton: return 101
        case .ouachita: return 103
        case .perry: return 105
        case .phillips: return 107
        case .pike: return 109
        case .poinsett: return 111
        case .polk: return 113
        case .pope: return 115
        case .prairie: return 117
        case .pulaski: return 119
        case .randolph: return 121
        case .saline: return 125
        case .scott: return 127
        case .searcy: return 129
        case .sebastian: return 131
        case .sevier: return 133
        case .sharp: return 135
        case .st_francis: return 123
        case .stone: return 137
        case .union: return 139
        case .van_buren: return 141
        case .washington: return 143
        case .white: return 145
        case .woodruff: return 147
        case .yell: return 149
        }
    }
}
