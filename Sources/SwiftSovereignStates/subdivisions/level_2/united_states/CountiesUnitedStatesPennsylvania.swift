//
//  CountiesUnitedStatesPennsylvania.swift
//  
//
//  Created by Evan Anderson on 2/27/23.
//

import Foundation

public enum CountiesUnitedStatesPennsylvania : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Pennsylvania
    case adams
    case allegheny
    case armstrong
    case beaver
    case bedford
    case berks
    case blair
    case bradford
    case bucks
    case butler
    case cambria
    case cameron
    case carbon
    case centre
    case chester
    case clarion
    case clearfield
    case clinton
    case columbia
    case crawford
    case cumberland
    case dauphin
    case delaware
    case elk
    case erie
    case fayette
    case forest
    case franklin
    case fulton
    case greene
    case huntingdon
    case indiana
    case jefferson
    case juniata
    case lackawanna
    case lancaster
    case lawrence
    case lebanon
    case lehigh
    case luzerne
    case lycoming
    case mckean
    case mercer
    case mifflin
    case monroe
    case montgomery
    case montour
    case northampton
    case northumberland
    case perry
    case philadelphia
    case pike
    case potter
    case schuylkill
    case snyder
    case somerset
    case sullivan
    case susquehanna
    case tioga
    case union
    case venango
    case warren
    case washington
    case wayne
    case westmoreland
    case wyoming
    case york
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.pennsylvania
    }
    
    public var fips_code : Int {
        switch self {
        case .adams: return 001
        case .allegheny: return 003
        case .armstrong: return 005
        case .beaver: return 007
        case .bedford: return 009
        case .berks: return 011
        case .blair: return 013
        case .bradford: return 015
        case .bucks: return 017
        case .butler: return 019
        case .cambria: return 021
        case .cameron: return 023
        case .carbon: return 025
        case .centre: return 027
        case .chester: return 029
        case .clarion: return 031
        case .clearfield: return 033
        case .clinton: return 035
        case .columbia: return 037
        case .crawford: return 039
        case .cumberland: return 041
        case .dauphin: return 043
        case .delaware: return 045
        case .elk: return 047
        case .erie: return 049
        case .fayette: return 051
        case .forest: return 053
        case .franklin: return 055
        case .fulton: return 057
        case .greene: return 059
        case .huntingdon: return 061
        case .indiana: return 063
        case .jefferson: return 065
        case .juniata: return 067
        case .lackawanna: return 069
        case .lancaster: return 071
        case .lawrence: return 073
        case .lebanon: return 075
        case .lehigh: return 077
        case .luzerne: return 079
        case .lycoming: return 081
        case .mckean: return 083
        case .mercer: return 085
        case .mifflin: return 087
        case .monroe: return 089
        case .montgomery: return 091
        case .montour: return 093
        case .northampton: return 095
        case .northumberland: return 097
        case .perry: return 099
        case .philadelphia: return 101
        case .pike: return 103
        case .potter: return 105
        case .schuylkill: return 107
        case .snyder: return 109
        case .somerset: return 111
        case .sullivan: return 113
        case .susquehanna: return 115
        case .tioga: return 117
        case .union: return 119
        case .venango: return 121
        case .warren: return 123
        case .washington: return 125
        case .wayne: return 127
        case .westmoreland: return 129
        case .wyoming: return 131
        case .york: return 133
        }
    }
}
