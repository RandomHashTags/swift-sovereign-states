//
//  CountiesUnitedStatesNebraska.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesNebraska : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Nebraska
    case adams
    case antelope
    case arthur
    case banner
    case blaine
    case boone
    case box_butte
    case boyd
    case brown
    case buffalo
    case burt
    case butler
    case cass
    case cedar
    case chase
    case cherry
    case cheyenne
    case clay
    case colfax
    case cuming
    case custer
    case dakota
    case dawes
    case dawson
    case deuel
    case dixon
    case dodge
    case douglas
    case dundy
    case fillmore
    case franklin
    case frontier
    case furnas
    case gage
    case garden
    case garfield
    case gosper
    case grant
    case greeley
    case hall
    case hamilton
    case harlan
    case hayes
    case hitchcock
    case holt
    case hooker
    case howard
    case jefferson
    case johnson
    case kearney
    case keith
    case keya_paha
    case kimball
    case knox
    case lancaster
    case lincoln
    case logan
    case loup
    case madison
    case mcpherson
    case merrick
    case morrill
    case nance
    case nemaha
    case nuckolls
    case otoe
    case pawnee
    case perkins
    case phelps
    case pierce
    case platte
    case polk
    case red_willow
    case richardson
    case rock
    case saline
    case sarpy
    case saunders
    case scotts_bluff
    case seward
    case sheridan
    case sherman
    case sioux
    case stanton
    case thayer
    case thomas
    case thurston
    case valley
    case washington
    case wayne
    case webster
    case wheeler
    case york
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.nebraska
    }
    
    public var fips_code : Int {
        switch self {
        case .adams: return 001
        case .antelope: return 003
        case .arthur: return 005
        case .banner: return 007
        case .blaine: return 009
        case .boone: return 011
        case .box_butte: return 013
        case .boyd: return 015
        case .brown: return 017
        case .buffalo: return 019
        case .burt: return 021
        case .butler: return 023
        case .cass: return 025
        case .cedar: return 027
        case .chase: return 029
        case .cherry: return 031
        case .cheyenne: return 033
        case .clay: return 035
        case .colfax: return 037
        case .cuming: return 039
        case .custer: return 041
        case .dakota: return 043
        case .dawes: return 045
        case .dawson: return 047
        case .deuel: return 049
        case .dixon: return 051
        case .dodge: return 053
        case .douglas: return 055
        case .dundy: return 057
        case .fillmore: return 059
        case .franklin: return 061
        case .frontier: return 063
        case .furnas: return 065
        case .gage: return 067
        case .garden: return 069
        case .garfield: return 071
        case .gosper: return 073
        case .grant: return 075
        case .greeley: return 077
        case .hall: return 079
        case .hamilton: return 081
        case .harlan: return 083
        case .hayes: return 085
        case .hitchcock: return 087
        case .holt: return 089
        case .hooker: return 091
        case .howard: return 093
        case .jefferson: return 095
        case .johnson: return 097
        case .kearney: return 099
        case .keith: return 101
        case .keya_paha: return 103
        case .kimball: return 105
        case .knox: return 107
        case .lancaster: return 109
        case .lincoln: return 111
        case .logan: return 113
        case .loup: return 115
        case .madison: return 119
        case .mcpherson: return 117
        case .merrick: return 121
        case .morrill: return 123
        case .nance: return 125
        case .nemaha: return 127
        case .nuckolls: return 129
        case .otoe: return 131
        case .pawnee: return 133
        case .perkins: return 135
        case .phelps: return 137
        case .pierce: return 139
        case .platte: return 141
        case .polk: return 143
        case .red_willow: return 145
        case .richardson: return 147
        case .rock: return 149
        case .saline: return 151
        case .sarpy: return 153
        case .saunders: return 155
        case .scotts_bluff: return 157
        case .seward: return 159
        case .sheridan: return 161
        case .sherman: return 163
        case .sioux: return 165
        case .stanton: return 167
        case .thayer: return 169
        case .thomas: return 171
        case .thurston: return 173
        case .valley: return 175
        case .washington: return 177
        case .wayne: return 179
        case .webster: return 181
        case .wheeler: return 183
        case .york: return 185
        }
    }
}
