//
//  CountiesUnitedStatesIndiana.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesIndiana : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Indiana
    case adams
    case allen
    case bartholomew
    case benton
    case blackford
    case boone
    case brown
    case carroll
    case cass
    case clark
    case clay
    case clinton
    case crawford
    case daviess
    case dearborn
    case decatur
    case dekalb
    case delaware
    case dubois
    case elkhart
    case fayette
    case floyd
    case fountain
    case franklin
    case fulton
    case gibson
    case grant
    case greene
    case hamilton
    case hancock
    case harrison
    case hendricks
    case henry
    case howard
    case huntington
    case jackson
    case jasper
    case jay
    case jefferson
    case jennings
    case johnson
    case knox
    case kosciusko
    case lagrange
    case lake
    case laporte
    case lawrence
    case madison
    case marion
    case marshall
    case martin
    case miami
    case monroe
    case montgomery
    case morgan
    case newton
    case noble
    case ohio
    case orange
    case owen
    case parke
    case perry
    case pike
    case porter
    case posey
    case pulaski
    case putnam
    case randolph
    case ripley
    case rush
    case scott
    case shelby
    case spencer
    case st_joseph
    case starke
    case steuben
    case sullivan
    case switzerland
    case tippecanoe
    case tipton
    case union
    case vanderburgh
    case vermillion
    case vigo
    case wabash
    case warren
    case warrick
    case washington
    case wayne
    case wells
    case white
    case whitley
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.indiana
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.counties
    }
    
    public var fips_code : Int {
        switch self {
        case .adams: return 001
        case .allen: return 003
        case .bartholomew: return 005
        case .benton: return 007
        case .blackford: return 009
        case .boone: return 011
        case .brown: return 013
        case .carroll: return 015
        case .cass: return 017
        case .clark: return 019
        case .clay: return 021
        case .clinton: return 023
        case .crawford: return 025
        case .daviess: return 027
        case .dearborn: return 029
        case .decatur: return 031
        case .dekalb: return 033
        case .delaware: return 035
        case .dubois: return 037
        case .elkhart: return 039
        case .fayette: return 041
        case .floyd: return 043
        case .fountain: return 045
        case .franklin: return 047
        case .fulton: return 049
        case .gibson: return 051
        case .grant: return 053
        case .greene: return 055
        case .hamilton: return 057
        case .hancock: return 059
        case .harrison: return 061
        case .hendricks: return 063
        case .henry: return 065
        case .howard: return 067
        case .huntington: return 069
        case .jackson: return 071
        case .jasper: return 073
        case .jay: return 075
        case .jefferson: return 077
        case .jennings: return 079
        case .johnson: return 081
        case .knox: return 083
        case .kosciusko: return 085
        case .lagrange: return 087
        case .lake: return 089
        case .laporte: return 091
        case .lawrence: return 093
        case .madison: return 095
        case .marion: return 097
        case .marshall: return 099
        case .martin: return 101
        case .miami: return 103
        case .monroe: return 105
        case .montgomery: return 107
        case .morgan: return 109
        case .newton: return 111
        case .noble: return 113
        case .ohio: return 115
        case .orange: return 117
        case .owen: return 119
        case .parke: return 121
        case .perry: return 123
        case .pike: return 125
        case .porter: return 127
        case .posey: return 129
        case .pulaski: return 131
        case .putnam: return 133
        case .randolph: return 135
        case .ripley: return 137
        case .rush: return 139
        case .scott: return 143
        case .shelby: return 145
        case .spencer: return 147
        case .st_joseph: return 141
        case .starke: return 149
        case .steuben: return 151
        case .sullivan: return 153
        case .switzerland: return 155
        case .tippecanoe: return 157
        case .tipton: return 159
        case .union: return 161
        case .vanderburgh: return 163
        case .vermillion: return 165
        case .vigo: return 167
        case .wabash: return 169
        case .warren: return 171
        case .warrick: return 173
        case .washington: return 175
        case .wayne: return 177
        case .wells: return 179
        case .white: return 181
        case .whitley: return 183
        }
    }
}
