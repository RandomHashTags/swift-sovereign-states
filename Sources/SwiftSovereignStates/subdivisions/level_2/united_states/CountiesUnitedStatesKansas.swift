//
//  CountiesUnitedStatesKansas.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesKansas : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Kansas
    case allen
    case anderson
    case atchison
    case barber
    case barton
    case bourbon
    case brown
    case butler
    case chase
    case chautauqua
    case cherokee
    case cheyenne
    case clark
    case clay
    case cloud
    case coffey
    case comanche
    case cowley
    case crawford
    case decatur
    case dickinson
    case doniphan
    case douglas
    case edwards
    case elk
    case ellis
    case ellsworth
    case finney
    case ford
    case franklin
    case geary
    case gove
    case graham
    case grant
    case gray
    case greeley
    case greenwood
    case hamilton
    case harper
    case harvey
    case haskell
    case hodgeman
    case jackson
    case jefferson
    case jewell
    case johnson
    case kearny
    case kingman
    case kiowa
    case labette
    case lane
    case leavenworth
    case lincoln
    case linn
    case logan
    case lyon
    case marion
    case marshall
    case mcpherson
    case meade
    case miami
    case mitchell
    case montgomery
    case morris
    case morton
    case nemaha
    case neosho
    case ness
    case norton
    case osage
    case osborne
    case ottawa
    case pawnee
    case phillips
    case pottawatomie
    case pratt
    case rawlins
    case reno
    case republic
    case rice
    case riley
    case rooks
    case rush
    case russell
    case saline
    case scott
    case sedgwick
    case seward
    case shawnee
    case sheridan
    case sherman
    case smith
    case stafford
    case stanton
    case stevens
    case sumner
    case thomas
    case trego
    case wabaunsee
    case wallace
    case washington
    case wichita
    case wilson
    case woodson
    case wyandotte
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.kansas
    }
    
    public var fips_code : Int {
        switch self {
        case .allen: return 001
        case .anderson: return 003
        case .atchison: return 005
        case .barber: return 007
        case .barton: return 009
        case .bourbon: return 011
        case .brown: return 013
        case .butler: return 015
        case .chase: return 017
        case .chautauqua: return 019
        case .cherokee: return 021
        case .cheyenne: return 023
        case .clark: return 025
        case .clay: return 027
        case .cloud: return 029
        case .coffey: return 031
        case .comanche: return 033
        case .cowley: return 035
        case .crawford: return 037
        case .decatur: return 039
        case .dickinson: return 041
        case .doniphan: return 043
        case .douglas: return 045
        case .edwards: return 047
        case .elk: return 049
        case .ellis: return 051
        case .ellsworth: return 053
        case .finney: return 055
        case .ford: return 057
        case .franklin: return 059
        case .geary: return 061
        case .gove: return 063
        case .graham: return 065
        case .grant: return 067
        case .gray: return 069
        case .greeley: return 071
        case .greenwood: return 073
        case .hamilton: return 075
        case .harper: return 077
        case .harvey: return 079
        case .haskell: return 081
        case .hodgeman: return 083
        case .jackson: return 085
        case .jefferson: return 087
        case .jewell: return 089
        case .johnson: return 091
        case .kearny: return 093
        case .kingman: return 095
        case .kiowa: return 097
        case .labette: return 099
        case .lane: return 101
        case .leavenworth: return 103
        case .lincoln: return 105
        case .linn: return 107
        case .logan: return 109
        case .lyon: return 111
        case .marion: return 115
        case .marshall: return 117
        case .mcpherson: return 113
        case .meade: return 119
        case .miami: return 121
        case .mitchell: return 123
        case .montgomery: return 125
        case .morris: return 127
        case .morton: return 129
        case .nemaha: return 131
        case .neosho: return 133
        case .ness: return 135
        case .norton: return 137
        case .osage: return 139
        case .osborne: return 141
        case .ottawa: return 143
        case .pawnee: return 145
        case .phillips: return 147
        case .pottawatomie: return 149
        case .pratt: return 151
        case .rawlins: return 153
        case .reno: return 155
        case .republic: return 157
        case .rice: return 159
        case .riley: return 161
        case .rooks: return 163
        case .rush: return 165
        case .russell: return 167
        case .saline: return 169
        case .scott: return 171
        case .sedgwick: return 173
        case .seward: return 175
        case .shawnee: return 177
        case .sheridan: return 179
        case .sherman: return 181
        case .smith: return 183
        case .stafford: return 185
        case .stanton: return 187
        case .stevens: return 189
        case .sumner: return 191
        case .thomas: return 193
        case .trego: return 195
        case .wabaunsee: return 197
        case .wallace: return 199
        case .washington: return 201
        case .wichita: return 203
        case .wilson: return 205
        case .woodson: return 207
        case .wyandotte: return 209
        }
    }
}
