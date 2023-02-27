//
//  CountiesUnitedStatesMinnesota.swift
//  
//
//  Created by Evan Anderson on 2/26/23.
//

import Foundation

public enum CountiesUnitedStatesMinnesota : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Minnesota
    case aitkin
    case anoka
    case becker
    case beltrami
    case benton
    case big_stone
    case blue_earth
    case brown
    case carlton
    case carver
    case cass
    case chippewa
    case chisago
    case clay
    case clearwater
    case cook
    case cottonwood
    case crow_wing
    case dakota
    case dodge
    case douglas
    case faribault
    case fillmore
    case freeborn
    case goodhue
    case grant
    case hennepin
    case houston
    case hubbard
    case isanti
    case itasca
    case jackson
    case kanabec
    case kandiyohi
    case kittson
    case koochiching
    case lac_qui_parle
    case lake
    case lake_of_the_woods
    case le_sueur
    case lincoln
    case lyon
    case mahnomen
    case marshall
    case martin
    case mcleod
    case meeker
    case mille_lacs
    case morrison
    case mower
    case murray
    case nicollet
    case nobles
    case norman
    case olmsted
    case otter_tail
    case pennington
    case pine
    case pipestone
    case polk
    case pope
    case ramsey
    case red_lake
    case redwood
    case renville
    case rice
    case rock
    case roseau
    case saint_louis
    case scott
    case sherburne
    case sibley
    case stearns
    case steele
    case stevens
    case swift
    case todd
    case traverse
    case wabasha
    case wadena
    case waseca
    case washington
    case watonwan
    case wilkin
    case winona
    case wright
    case yellow_medicine
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.minnesota
    }
    
    public var fips_code: Int {
        switch self {
        case .aitkin: return 001
        case .anoka: return 003
        case .becker: return 005
        case .beltrami: return 007
        case .benton: return 009
        case .big_stone: return 011
        case .blue_earth: return 013
        case .brown: return 015
        case .carlton: return 017
        case .carver: return 019
        case .cass: return 021
        case .chippewa: return 023
        case .chisago: return 025
        case .clay: return 027
        case .clearwater: return 029
        case .cook: return 031
        case .cottonwood: return 033
        case .crow_wing: return 035
        case .dakota: return 037
        case .dodge: return 039
        case .douglas: return 041
        case .faribault: return 043
        case .fillmore: return 045
        case .freeborn: return 047
        case .goodhue: return 049
        case .grant: return 051
        case .hennepin: return 053
        case .houston: return 055
        case .hubbard: return 057
        case .isanti: return 059
        case .itasca: return 061
        case .jackson: return 063
        case .kanabec: return 065
        case .kandiyohi: return 067
        case .kittson: return 069
        case .koochiching: return 071
        case .lac_qui_parle: return 073
        case .lake: return 075
        case .lake_of_the_woods: return 077
        case .le_sueur: return 079
        case .lincoln: return 081
        case .lyon: return 083
        case .mahnomen: return 087
        case .marshall: return 089
        case .martin: return 091
        case .mcleod: return 085
        case .meeker: return 093
        case .mille_lacs: return 095
        case .morrison: return 097
        case .mower: return 099
        case .murray: return 101
        case .nicollet: return 103
        case .nobles: return 105
        case .norman: return 107
        case .olmsted: return 109
        case .otter_tail: return 111
        case .pennington: return 113
        case .pine: return 115
        case .pipestone: return 117
        case .polk: return 119
        case .pope: return 121
        case .ramsey: return 123
        case .red_lake: return 125
        case .redwood: return 127
        case .renville: return 129
        case .rice: return 131
        case .rock: return 133
        case .roseau: return 135
        case .saint_louis: return 137
        case .scott: return 139
        case .sherburne: return 141
        case .sibley: return 143
        case .stearns: return 145
        case .steele: return 147
        case .stevens: return 149
        case .swift: return 151
        case .todd: return 153
        case .traverse: return 155
        case .wabasha: return 157
        case .wadena: return 159
        case .waseca: return 161
        case .washington: return 163
        case .watonwan: return 165
        case .wilkin: return 167
        case .winona: return 169
        case .wright: return 171
        case .yellow_medicine: return 173
        }
    }
}
