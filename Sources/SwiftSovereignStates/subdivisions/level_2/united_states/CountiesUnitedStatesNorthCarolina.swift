//
//  CountiesUnitedStatesNorthCarolina.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesNorthCarolina : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_North_Carolina
    case alamance
    case alexander
    case alleghany
    case anson
    case ashe
    case avery
    case beaufort
    case bertie
    case bladen
    case brunswick
    case buncombe
    case burke
    case cabarrus
    case caldwell
    case camden
    case carteret
    case caswell
    case catawba
    case chatham
    case cherokee
    case chowan
    case clay
    case cleveland
    case columbus
    case craven
    case cumberland
    case currituck
    case dare
    case davidson
    case davie
    case duplin
    case durham
    case edgecombe
    case forsyth
    case franklin
    case gaston
    case gates
    case graham
    case granville
    case greene
    case guilford
    case halifax
    case harnett
    case haywood
    case henderson
    case hertford
    case hoke
    case hyde
    case iredell
    case jackson
    case johnston
    case jones
    case lee
    case lenoir
    case lincoln
    case macon
    case madison
    case martin
    case mcdowell
    case mecklenburg
    case mitchell
    case montgomery
    case moore
    case nash
    case new_hanover
    case northampton
    case onslow
    case orange
    case pamlico
    case pasquotank
    case pender
    case perquimans
    case person
    case pitt
    case polk
    case randolph
    case richmond
    case robeson
    case rockingham
    case rowan
    case rutherford
    case sampson
    case scotland
    case stanly
    case stokes
    case surry
    case swain
    case transylvania
    case tyrrell
    case union
    case vance
    case wake
    case warren
    case washington
    case watauga
    case wayne
    case wilkes
    case wilson
    case yadkin
    case yancey
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.north_carolina
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.counties
    }
    
    public var fips_code : Int {
        switch self {
        case .alamance: return 001
        case .alexander: return 003
        case .alleghany: return 005
        case .anson: return 007
        case .ashe: return 009
        case .avery: return 011
        case .beaufort: return 013
        case .bertie: return 015
        case .bladen: return 017
        case .brunswick: return 019
        case .buncombe: return 021
        case .burke: return 023
        case .cabarrus: return 025
        case .caldwell: return 027
        case .camden: return 029
        case .carteret: return 031
        case .caswell: return 033
        case .catawba: return 035
        case .chatham: return 037
        case .cherokee: return 039
        case .chowan: return 041
        case .clay: return 043
        case .cleveland: return 045
        case .columbus: return 047
        case .craven: return 049
        case .cumberland: return 051
        case .currituck: return 053
        case .dare: return 055
        case .davidson: return 057
        case .davie: return 059
        case .duplin: return 061
        case .durham: return 063
        case .edgecombe: return 065
        case .forsyth: return 067
        case .franklin: return 069
        case .gaston: return 071
        case .gates: return 073
        case .graham: return 075
        case .granville: return 077
        case .greene: return 079
        case .guilford: return 081
        case .halifax: return 083
        case .harnett: return 085
        case .haywood: return 087
        case .henderson: return 089
        case .hertford: return 091
        case .hoke: return 093
        case .hyde: return 095
        case .iredell: return 097
        case .jackson: return 099
        case .johnston: return 101
        case .jones: return 103
        case .lee: return 105
        case .lenoir: return 107
        case .lincoln: return 109
        case .macon: return 113
        case .madison: return 115
        case .martin: return 117
        case .mcdowell: return 111
        case .mecklenburg: return 119
        case .mitchell: return 121
        case .montgomery: return 123
        case .moore: return 125
        case .nash: return 127
        case .new_hanover: return 129
        case .northampton: return 131
        case .onslow: return 133
        case .orange: return 135
        case .pamlico: return 137
        case .pasquotank: return 139
        case .pender: return 141
        case .perquimans: return 143
        case .person: return 145
        case .pitt: return 147
        case .polk: return 149
        case .randolph: return 151
        case .richmond: return 153
        case .robeson: return 155
        case .rockingham: return 157
        case .rowan: return 159
        case .rutherford: return 161
        case .sampson: return 163
        case .scotland: return 165
        case .stanly: return 167
        case .stokes: return 169
        case .surry: return 171
        case .swain: return 173
        case .transylvania: return 175
        case .tyrrell: return 177
        case .union: return 179
        case .vance: return 181
        case .wake: return 183
        case .warren: return 185
        case .washington: return 187
        case .watauga: return 189
        case .wayne: return 191
        case .wilkes: return 193
        case .wilson: return 195
        case .yadkin: return 197
        case .yancey: return 199
        }
    }
}
