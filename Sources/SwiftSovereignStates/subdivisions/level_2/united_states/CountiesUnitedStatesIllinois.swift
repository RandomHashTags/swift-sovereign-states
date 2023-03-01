//
//  CountiesUnitedStatesIllinois.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesIllinois : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Illinois
    case adams
    case alexander
    case bond
    case boone
    case brown
    case bureau
    case calhoun
    case carroll
    case cass
    case champaign
    case christian
    case clark
    case clay
    case clinton
    case coles
    case cook
    case crawford
    case cumberland
    case dekalb
    case dewitt
    case douglas
    case dupage
    case edgar
    case edwards
    case effingham
    case fayette
    case ford
    case franklin
    case fulton
    case gallatin
    case greene
    case grundy
    case hamilton
    case hancock
    case hardin
    case henderson
    case henry
    case iroquois
    case jackson
    case jasper
    case jefferson
    case jersey
    case jo_daviess
    case johnson
    case kane
    case kankakee
    case kendall
    case knox
    case lake
    case lasalle
    case lawrence
    case lee
    case livingston
    case logan
    case macon
    case macoupin
    case madison
    case marion
    case marshall
    case mason
    case massac
    case mcdonough
    case mchenry
    case mclean
    case menard
    case mercer
    case monroe
    case montgomery
    case morgan
    case moultrie
    case ogle
    case peoria
    case perry
    case piatt
    case pike
    case pope
    case pulaski
    case putnam
    case randolph
    case richland
    case rock_island
    case saline
    case sangamon
    case schuyler
    case scott
    case shelby
    case st_clair
    case stark
    case stephenson
    case tazewell
    case union
    case vermilion
    case wabash
    case warren
    case washington
    case wayne
    case white
    case whiteside
    case will
    case williamson
    case winnebago
    case woodford
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.illinois
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.counties
    }
    
    public var fips_code : Int {
        switch self {
        case .adams: return 001
        case .alexander: return 003
        case .bond: return 005
        case .boone: return 007
        case .brown: return 009
        case .bureau: return 011
        case .calhoun: return 013
        case .carroll: return 015
        case .cass: return 017
        case .champaign: return 019
        case .christian: return 021
        case .clark: return 023
        case .clay: return 025
        case .clinton: return 027
        case .coles: return 029
        case .cook: return 031
        case .crawford: return 033
        case .cumberland: return 035
        case .dekalb: return 037
        case .dewitt: return 039
        case .douglas: return 041
        case .dupage: return 043
        case .edgar: return 045
        case .edwards: return 047
        case .effingham: return 049
        case .fayette: return 051
        case .ford: return 053
        case .franklin: return 055
        case .fulton: return 057
        case .gallatin: return 059
        case .greene: return 061
        case .grundy: return 063
        case .hamilton: return 065
        case .hancock: return 067
        case .hardin: return 069
        case .henderson: return 071
        case .henry: return 073
        case .iroquois: return 075
        case .jackson: return 077
        case .jasper: return 079
        case .jefferson: return 081
        case .jersey: return 083
        case .jo_daviess: return 085
        case .johnson: return 087
        case .kane: return 089
        case .kankakee: return 091
        case .kendall: return 093
        case .knox: return 095
        case .lake: return 097
        case .lasalle: return 099
        case .lawrence: return 101
        case .lee: return 103
        case .livingston: return 105
        case .logan: return 107
        case .macon: return 115
        case .macoupin: return 117
        case .madison: return 119
        case .marion: return 121
        case .marshall: return 123
        case .mason: return 125
        case .massac: return 127
        case .mcdonough: return 109
        case .mchenry: return 111
        case .mclean: return 113
        case .menard: return 129
        case .mercer: return 131
        case .monroe: return 133
        case .montgomery: return 135
        case .morgan: return 137
        case .moultrie: return 139
        case .ogle: return 141
        case .peoria: return 143
        case .perry: return 145
        case .piatt: return 147
        case .pike: return 149
        case .pope: return 151
        case .pulaski: return 153
        case .putnam: return 155
        case .randolph: return 157
        case .richland: return 159
        case .rock_island: return 161
        case .saline: return 165
        case .sangamon: return 167
        case .schuyler: return 169
        case .scott: return 171
        case .shelby: return 173
        case .st_clair: return 163
        case .stark: return 175
        case .stephenson: return 177
        case .tazewell: return 179
        case .union: return 181
        case .vermilion: return 183
        case .wabash: return 185
        case .warren: return 187
        case .washington: return 189
        case .wayne: return 191
        case .white: return 193
        case .whiteside: return 195
        case .will: return 197
        case .williamson: return 199
        case .winnebago: return 201
        case .woodford: return 203
        }
    }
}
