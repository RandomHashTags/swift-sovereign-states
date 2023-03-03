//
//  CountiesUnitedStatesMissouri.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesMissouri : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Missouri
    case adair
    case andrew
    case atchison
    case audrain
    case barry
    case barton
    case bates
    case benton
    case bollinger
    case boone
    case buchanan
    case butler
    case caldwell
    case callaway
    case camden
    case cape_girardeau
    case carroll
    case carter
    case cass
    case cedar
    case chariton
    case christian
    case clark
    case clay
    case clinton
    case cole
    case cooper
    case crawford
    case dade
    case dallas
    case daviess
    case dekalb
    case dent
    case douglas
    case dunklin
    case franklin
    case gasconade
    case gentry
    case greene
    case grundy
    case harrison
    case henry
    case hickory
    case holt
    case howard
    case howell
    case iron
    case jackson
    case jasper
    case jefferson
    case johnson
    case knox
    case laclede
    case lafayette
    case lawrence
    case lewis
    case lincoln
    case linn
    case livingston
    case macon
    case madison
    case maries
    case marion
    case mcdonald
    case mercer
    case miller
    case mississippi
    case moniteau
    case monroe
    case montgomery
    case morgan
    case new_madrid
    case newton
    case nodaway
    case oregon
    case osage
    case ozark
    case pemiscot
    case perry
    case pettis
    case phelps
    case pike
    case platte
    case polk
    case pulaski
    case putnam
    case ralls
    case randolph
    case ray
    case reynolds
    case ripley
    case saint_charles
    case saint_clair
    case saint_francois
    case saint_louis
    case saint_louis_city
    case sainte_genevieve
    case saline
    case schuyler
    case scotland
    case scott
    case shannon
    case shelby
    case stoddard
    case stone
    case sullivan
    case taney
    case texas
    case vernon
    case warren
    case washington
    case wayne
    case webster
    case worth
    case wright
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.missouri
    }
    
    public var type : SovereignStateLevel2DivisionType {
        switch self {
        case .saint_louis_city:
            return SovereignStateLevel2DivisionType.independent_cities
        default:
            return SovereignStateLevel2DivisionType.counties
        }
    }
    
    public var real_name : String? {
        switch self {
        case .saint_louis_city: return "Saint Louis"
        default: return nil
        }
    }
    
    public var fips_code : Int {
        switch self {
        case .adair: return 001
        case .andrew: return 003
        case .atchison: return 005
        case .audrain: return 007
        case .barry: return 009
        case .barton: return 011
        case .bates: return 013
        case .benton: return 015
        case .bollinger: return 017
        case .boone: return 019
        case .buchanan: return 021
        case .butler: return 023
        case .caldwell: return 025
        case .callaway: return 027
        case .camden: return 029
        case .cape_girardeau: return 031
        case .carroll: return 033
        case .carter: return 035
        case .cass: return 037
        case .cedar: return 039
        case .chariton: return 041
        case .christian: return 043
        case .clark: return 045
        case .clay: return 047
        case .clinton: return 049
        case .cole: return 051
        case .cooper: return 053
        case .crawford: return 055
        case .dade: return 057
        case .dallas: return 059
        case .daviess: return 061
        case .dekalb: return 063
        case .dent: return 065
        case .douglas: return 067
        case .dunklin: return 069
        case .franklin: return 071
        case .gasconade: return 073
        case .gentry: return 075
        case .greene: return 077
        case .grundy: return 079
        case .harrison: return 081
        case .henry: return 083
        case .hickory: return 085
        case .holt: return 087
        case .howard: return 089
        case .howell: return 091
        case .iron: return 093
        case .jackson: return 095
        case .jasper: return 097
        case .jefferson: return 099
        case .johnson: return 101
        case .knox: return 103
        case .laclede: return 105
        case .lafayette: return 107
        case .lawrence: return 109
        case .lewis: return 111
        case .lincoln: return 113
        case .linn: return 115
        case .livingston: return 117
        case .macon: return 121
        case .madison: return 123
        case .maries: return 125
        case .marion: return 127
        case .mcdonald: return 119
        case .mercer: return 129
        case .miller: return 131
        case .mississippi: return 133
        case .moniteau: return 135
        case .monroe: return 137
        case .montgomery: return 139
        case .morgan: return 141
        case .new_madrid: return 143
        case .newton: return 145
        case .nodaway: return 147
        case .oregon: return 149
        case .osage: return 151
        case .ozark: return 153
        case .pemiscot: return 155
        case .perry: return 157
        case .pettis: return 159
        case .phelps: return 161
        case .pike: return 163
        case .platte: return 165
        case .polk: return 167
        case .pulaski: return 169
        case .putnam: return 171
        case .ralls: return 173
        case .randolph: return 175
        case .ray: return 177
        case .reynolds: return 179
        case .ripley: return 181
        case .saint_charles: return 183
        case .saint_clair: return 185
        case .saint_francois: return 187
        case .saint_louis: return 189
        case .saint_louis_city: return 510
        case .sainte_genevieve: return 186
        case .saline: return 195
        case .schuyler: return 197
        case .scotland: return 199
        case .scott: return 201
        case .shannon: return 203
        case .shelby: return 205
        case .stoddard: return 207
        case .stone: return 209
        case .sullivan: return 211
        case .taney: return 213
        case .texas: return 215
        case .vernon: return 217
        case .warren: return 219
        case .washington: return 221
        case .wayne: return 223
        case .webster: return 225
        case .worth: return 227
        case .wright: return 229
        }
    }
}
