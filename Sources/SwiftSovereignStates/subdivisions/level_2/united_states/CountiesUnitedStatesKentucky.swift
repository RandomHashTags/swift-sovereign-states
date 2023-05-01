//
//  CountiesUnitedStatesKentucky.swift
//  
//
//  Created by Evan Anderson on 2/27/23.
//

import Foundation

public enum CountiesUnitedStatesKentucky : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Kentucky
    case adair
    case allen
    case anderson
    case ballard
    case barren
    case bath
    case bell
    case boone
    case bourbon
    case boyd
    case boyle
    case bracken
    case breathitt
    case breckinridge
    case bullitt
    case butler
    case caldwell
    case calloway
    case campbell
    case carlisle
    case carroll
    case carter
    case casey
    case christian
    case clark
    case clay
    case clinton
    case crittenden
    case cumberland
    case daviess
    case edmonson
    case elliott
    case estill
    case fayette
    case fleming
    case floyd
    case franklin
    case fulton
    case gallatin
    case garrard
    case grant
    case graves
    case grayson
    case green
    case greenup
    case hancock
    case hardin
    case harlan
    case harrison
    case hart
    case henderson
    case henry
    case hickman
    case hopkins
    case jackson
    case jefferson
    case jessamine
    case johnson
    case kenton
    case knott
    case knox
    case larue
    case laurel
    case lawrence
    case lee
    case leslie
    case letcher
    case lewis
    case lincoln
    case livingston
    case logan
    case lyon
    case madison
    case magoffin
    case marion
    case marshall
    case martin
    case mason
    case mccracken
    case mccreary
    case mclean
    case meade
    case menifee
    case mercer
    case metcalfe
    case monroe
    case montgomery
    case morgan
    case muhlenberg
    case nelson
    case nicholas
    case ohio
    case oldham
    case owen
    case owsley
    case pendleton
    case perry
    case pike
    case powell
    case pulaski
    case robertson
    case rockcastle
    case rowan
    case russell
    case scott
    case shelby
    case simpson
    case spencer
    case taylor
    case todd
    case trigg
    case trimble
    case union
    case warren
    case washington
    case wayne
    case webster
    case whitley
    case wolfe
    case woodford
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.kentucky
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.counties
    }
    
    public var fips_code : Int {
        switch self {
        case .adair: return 001
        case .allen: return 003
        case .anderson: return 005
        case .ballard: return 007
        case .barren: return 009
        case .bath: return 011
        case .bell: return 013
        case .boone: return 015
        case .bourbon: return 017
        case .boyd: return 019
        case .boyle: return 021
        case .bracken: return 023
        case .breathitt: return 025
        case .breckinridge: return 027
        case .bullitt: return 029
        case .butler: return 031
        case .caldwell: return 033
        case .calloway: return 035
        case .campbell: return 037
        case .carlisle: return 039
        case .carroll: return 041
        case .carter: return 043
        case .casey: return 045
        case .christian: return 047
        case .clark: return 049
        case .clay: return 051
        case .clinton: return 053
        case .crittenden: return 055
        case .cumberland: return 057
        case .daviess: return 059
        case .edmonson: return 061
        case .elliott: return 063
        case .estill: return 065
        case .fayette: return 067
        case .fleming: return 069
        case .floyd: return 071
        case .franklin: return 073
        case .fulton: return 075
        case .gallatin: return 077
        case .garrard: return 079
        case .grant: return 081
        case .graves: return 083
        case .grayson: return 085
        case .green: return 087
        case .greenup: return 089
        case .hancock: return 091
        case .hardin: return 093
        case .harlan: return 095
        case .harrison: return 097
        case .hart: return 099
        case .henderson: return 101
        case .henry: return 103
        case .hickman: return 105
        case .hopkins: return 107
        case .jackson: return 109
        case .jefferson: return 111
        case .jessamine: return 113
        case .johnson: return 115
        case .kenton: return 117
        case .knott: return 119
        case .knox: return 121
        case .larue: return 123
        case .laurel: return 125
        case .lawrence: return 127
        case .lee: return 129
        case .leslie: return 131
        case .letcher: return 133
        case .lewis: return 135
        case .lincoln: return 137
        case .livingston: return 139
        case .logan: return 141
        case .lyon: return 143
        case .madison: return 151
        case .magoffin: return 153
        case .marion: return 155
        case .marshall: return 157
        case .martin: return 159
        case .mason: return 161
        case .mccracken: return 145
        case .mccreary: return 147
        case .mclean: return 149
        case .meade: return 163
        case .menifee: return 165
        case .mercer: return 167
        case .metcalfe: return 169
        case .monroe: return 171
        case .montgomery: return 173
        case .morgan: return 175
        case .muhlenberg: return 177
        case .nelson: return 179
        case .nicholas: return 181
        case .ohio: return 183
        case .oldham: return 185
        case .owen: return 187
        case .owsley: return 189
        case .pendleton: return 191
        case .perry: return 193
        case .pike: return 195
        case .powell: return 197
        case .pulaski: return 199
        case .robertson: return 201
        case .rockcastle: return 203
        case .rowan: return 205
        case .russell: return 207
        case .scott: return 209
        case .shelby: return 211
        case .simpson: return 213
        case .spencer: return 215
        case .taylor: return 217
        case .todd: return 219
        case .trigg: return 221
        case .trimble: return 223
        case .union: return 225
        case .warren: return 227
        case .washington: return 229
        case .wayne: return 231
        case .webster: return 233
        case .whitley: return 235
        case .wolfe: return 237
        case .woodford: return 239
        }
    }
}
