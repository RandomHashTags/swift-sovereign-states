//
//  CountiesUnitedStatesIowa.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesIowa : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Iowa
    case adair
    case adams
    case allamakee
    case appanoose
    case audubon
    case benton
    case black_hawk
    case boone
    case bremer
    case buchanan
    case buena_vista
    case butler
    case calhoun
    case carroll
    case cass
    case cedar
    case cerro_gordo
    case cherokee
    case chickasaw
    case clarke
    case clay
    case clayton
    case clinton
    case crawford
    case dallas
    case davis
    case decatur
    case delaware
    case des_moines
    case dickinson
    case dubuque
    case emmet
    case fayette
    case floyd
    case franklin
    case fremont
    case greene
    case grundy
    case guthrie
    case hamilton
    case hancock
    case hardin
    case harrison
    case henry
    case howard
    case humboldt
    case ida
    case iowa
    case jackson
    case jasper
    case jefferson
    case johnson
    case jones
    case keokuk
    case kossuth
    case lee
    case linn
    case louisa
    case lucas
    case lyon
    case madison
    case mahaska
    case marion
    case marshall
    case mills
    case mitchell
    case monona
    case monroe
    case montgomery
    case muscatine
    case o_brien
    case osceola
    case page
    case palo_alto
    case plymouth
    case pocahontas
    case polk
    case pottawattamie
    case poweshiek
    case ringgold
    case sac
    case scott
    case shelby
    case sioux
    case story
    case tama
    case taylor
    case union
    case van_buren
    case wapello
    case warren
    case washington
    case wayne
    case webster
    case winnebago
    case winneshiek
    case woodbury
    case worth
    case wright
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.iowa
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.counties
    }
    
    public var fips_code : Int {
        switch self {
        case .adair: return 001
        case .adams: return 003
        case .allamakee: return 005
        case .appanoose: return 007
        case .audubon: return 009
        case .benton: return 011
        case .black_hawk: return 013
        case .boone: return 015
        case .bremer: return 017
        case .buchanan: return 019
        case .buena_vista: return 021
        case .butler: return 023
        case .calhoun: return 025
        case .carroll: return 027
        case .cass: return 029
        case .cedar: return 031
        case .cerro_gordo: return 033
        case .cherokee: return 035
        case .chickasaw: return 037
        case .clarke: return 039
        case .clay: return 041
        case .clayton: return 043
        case .clinton: return 045
        case .crawford: return 047
        case .dallas: return 049
        case .davis: return 051
        case .decatur: return 053
        case .delaware: return 055
        case .des_moines: return 057
        case .dickinson: return 059
        case .dubuque: return 061
        case .emmet: return 063
        case .fayette: return 065
        case .floyd: return 067
        case .franklin: return 069
        case .fremont: return 071
        case .greene: return 073
        case .grundy: return 075
        case .guthrie: return 077
        case .hamilton: return 079
        case .hancock: return 081
        case .hardin: return 083
        case .harrison: return 085
        case .henry: return 087
        case .howard: return 089
        case .humboldt: return 091
        case .ida: return 093
        case .iowa: return 095
        case .jackson: return 097
        case .jasper: return 099
        case .jefferson: return 101
        case .johnson: return 103
        case .jones: return 105
        case .keokuk: return 107
        case .kossuth: return 109
        case .lee: return 111
        case .linn: return 113
        case .louisa: return 115
        case .lucas: return 117
        case .lyon: return 119
        case .madison: return 121
        case .mahaska: return 123
        case .marion: return 125
        case .marshall: return 127
        case .mills: return 129
        case .mitchell: return 131
        case .monona: return 133
        case .monroe: return 135
        case .montgomery: return 137
        case .muscatine: return 139
        case .o_brien: return 141
        case .osceola: return 143
        case .page: return 145
        case .palo_alto: return 147
        case .plymouth: return 149
        case .pocahontas: return 151
        case .polk: return 153
        case .pottawattamie: return 155
        case .poweshiek: return 157
        case .ringgold: return 159
        case .sac: return 161
        case .scott: return 163
        case .shelby: return 165
        case .sioux: return 167
        case .story: return 169
        case .tama: return 171
        case .taylor: return 173
        case .union: return 175
        case .van_buren: return 177
        case .wapello: return 179
        case .warren: return 181
        case .washington: return 183
        case .wayne: return 185
        case .webster: return 187
        case .winnebago: return 189
        case .winneshiek: return 191
        case .woodbury: return 193
        case .worth: return 195
        case .wright: return 197
        }
    }
}
