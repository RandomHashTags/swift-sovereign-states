//
//  CountiesUnitedStatesFlorida.swift
//  
//
//  Created by Evan Anderson on 2/27/23.
//

import Foundation

public enum CountiesUnitedStatesFlorida : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Florida
    case alachua
    case baker
    case bay
    case bradford
    case brevard
    case broward
    case calhoun
    case charlotte
    case citrus
    case clay
    case collier
    case columbia
    case desoto
    case dixie
    case duval
    case escambia
    case flagler
    case franklin
    case gadsden
    case gilchrist
    case glades
    case gulf
    case hamilton
    case hardee
    case hendry
    case hernando
    case highlands
    case hillsborough
    case holmes
    case indian_river
    case jackson
    case jefferson
    case lafayette
    case lake
    case lee
    case leon
    case levy
    case liberty
    case madison
    case manatee
    case marion
    case martin
    case miami_dade
    case monroe
    case nassau
    case okaloosa
    case okeechobee
    case orange
    case osceola
    case palm_beach
    case pasco
    case pinellas
    case polk
    case putnam
    case santa_rosa
    case sarasota
    case seminole
    case st_johns
    case st_lucie
    case sumter
    case suwannee
    case taylor
    case union
    case volusia
    case wakulla
    case walton
    case washington
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.florida
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.counties
    }
    
    public var real_name : String? {
        switch self {
        case .miami_dade: return "Miami-Dade"
        default: return nil
        }
    }
    
    public var fips_code : Int {
        switch self {
        case .alachua: return 001
        case .baker: return 003
        case .bay: return 005
        case .bradford: return 007
        case .brevard: return 009
        case .broward: return 011
        case .calhoun: return 013
        case .charlotte: return 015
        case .citrus: return 017
        case .clay: return 019
        case .collier: return 021
        case .columbia: return 023
        case .desoto: return 027
        case .dixie: return 029
        case .duval: return 031
        case .escambia: return 033
        case .flagler: return 035
        case .franklin: return 037
        case .gadsden: return 039
        case .gilchrist: return 041
        case .glades: return 043
        case .gulf: return 045
        case .hamilton: return 047
        case .hardee: return 049
        case .hendry: return 051
        case .hernando: return 053
        case .highlands: return 055
        case .hillsborough: return 057
        case .holmes: return 059
        case .indian_river: return 061
        case .jackson: return 063
        case .jefferson: return 065
        case .lafayette: return 067
        case .lake: return 069
        case .lee: return 071
        case .leon: return 073
        case .levy: return 075
        case .liberty: return 077
        case .madison: return 079
        case .manatee: return 081
        case .marion: return 083
        case .martin: return 085
        case .miami_dade: return 086
        case .monroe: return 087
        case .nassau: return 089
        case .okaloosa: return 091
        case .okeechobee: return 093
        case .orange: return 095
        case .osceola: return 097
        case .palm_beach: return 099
        case .pasco: return 101
        case .pinellas: return 103
        case .polk: return 105
        case .putnam: return 107
        case .santa_rosa: return 113
        case .sarasota: return 115
        case .seminole: return 117
        case .st_johns: return 109
        case .st_lucie: return 111
        case .sumter: return 119
        case .suwannee: return 121
        case .taylor: return 123
        case .union: return 125
        case .volusia: return 127
        case .wakulla: return 129
        case .walton: return 131
        case .washington: return 133
        }
    }
}
