//
//  CountiesUnitedStatesOhio.swift
//  
//
//  Created by Evan Anderson on 2/27/23.
//

import Foundation

public enum CountiesUnitedStatesOhio : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Ohio
    case adams
    case allen
    case ashland
    case ashtabula
    case athens
    case auglaize
    case belmont
    case brown
    case butler
    case carroll
    case champaign
    case clark
    case clermont
    case clinton
    case columbiana
    case coshocton
    case crawford
    case cuyahoga
    case darke
    case defiance
    case delaware
    case erie
    case fairfield
    case fayette
    case franklin
    case fulton
    case gallia
    case geauga
    case greene
    case guernsey
    case hamilton
    case hancock
    case hardin
    case harrison
    case henry
    case highland
    case hocking
    case holmes
    case huron
    case jackson
    case jefferson
    case knox
    case lake
    case lawrence
    case licking
    case logan
    case lorain
    case lucas
    case madison
    case mahoning
    case marion
    case medina
    case meigs
    case mercer
    case miami
    case monroe
    case montgomery
    case morgan
    case morrow
    case muskingum
    case noble
    case ottawa
    case paulding
    case perry
    case pickaway
    case pike
    case portage
    case preble
    case putnam
    case richland
    case ross
    case sandusky
    case scioto
    case seneca
    case shelby
    case stark
    case summit
    case trumbull
    case tuscarawas
    case union
    case van_wert
    case vinton
    case warren
    case washington
    case wayne
    case williams
    case wood
    case wyandot
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.ohio
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.counties
    }
    
    public var fips_code : Int {
        switch self {
        case .adams: return 001
        case .allen: return 003
        case .ashland: return 005
        case .ashtabula: return 007
        case .athens: return 009
        case .auglaize: return 011
        case .belmont: return 013
        case .brown: return 015
        case .butler: return 017
        case .carroll: return 019
        case .champaign: return 021
        case .clark: return 023
        case .clermont: return 025
        case .clinton: return 027
        case .columbiana: return 029
        case .coshocton: return 031
        case .crawford: return 033
        case .cuyahoga: return 035
        case .darke: return 037
        case .defiance: return 039
        case .delaware: return 041
        case .erie: return 043
        case .fairfield: return 045
        case .fayette: return 047
        case .franklin: return 049
        case .fulton: return 051
        case .gallia: return 053
        case .geauga: return 055
        case .greene: return 057
        case .guernsey: return 059
        case .hamilton: return 061
        case .hancock: return 063
        case .hardin: return 065
        case .harrison: return 067
        case .henry: return 069
        case .highland: return 071
        case .hocking: return 073
        case .holmes: return 075
        case .huron: return 077
        case .jackson: return 079
        case .jefferson: return 081
        case .knox: return 083
        case .lake: return 085
        case .lawrence: return 087
        case .licking: return 089
        case .logan: return 091
        case .lorain: return 093
        case .lucas: return 095
        case .madison: return 097
        case .mahoning: return 099
        case .marion: return 101
        case .medina: return 103
        case .meigs: return 105
        case .mercer: return 107
        case .miami: return 109
        case .monroe: return 111
        case .montgomery: return 113
        case .morgan: return 115
        case .morrow: return 117
        case .muskingum: return 119
        case .noble: return 121
        case .ottawa: return 123
        case .paulding: return 125
        case .perry: return 127
        case .pickaway: return 129
        case .pike: return 131
        case .portage: return 133
        case .preble: return 135
        case .putnam: return 137
        case .richland: return 139
        case .ross: return 141
        case .sandusky: return 143
        case .scioto: return 145
        case .seneca: return 147
        case .shelby: return 149
        case .stark: return 151
        case .summit: return 153
        case .trumbull: return 155
        case .tuscarawas: return 157
        case .union: return 159
        case .van_wert: return 161
        case .vinton: return 163
        case .warren: return 165
        case .washington: return 167
        case .wayne: return 169
        case .williams: return 171
        case .wood: return 173
        case .wyandot: return 175
        }
    }
}
