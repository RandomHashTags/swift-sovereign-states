//
//  CountiesUnitedStatesNorthDakota.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesNorthDakota : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_North_Dakota
    case adams
    case barnes
    case benson
    case billings
    case bottineau
    case bowman
    case burke
    case burleigh
    case cass
    case cavalier
    case dickey
    case divide
    case dunn
    case eddy
    case emmons
    case foster
    case golden_valley
    case grand_forks
    case grant
    case griggs
    case hettinger
    case kidder
    case lamoure
    case logan
    case mchenry
    case mcintosh
    case mckenzie
    case mclean
    case mercer
    case morton
    case mountrail
    case nelson
    case oliver
    case pembina
    case pierce
    case ramsey
    case ransom
    case renville
    case richland
    case rolette
    case sargent
    case sheridan
    case sioux
    case slope
    case stark
    case steele
    case stutsman
    case towner
    case traill
    case walsh
    case ward
    case wells
    case williams
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.north_dakota
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.counties
    }
    
    public var fips_code: Int {
        switch self {
        case .adams: return 001
        case .barnes: return 003
        case .benson: return 005
        case .billings: return 007
        case .bottineau: return 009
        case .bowman: return 011
        case .burke: return 013
        case .burleigh: return 015
        case .cass: return 017
        case .cavalier: return 019
        case .dickey: return 021
        case .divide: return 023
        case .dunn: return 025
        case .eddy: return 027
        case .emmons: return 029
        case .foster: return 031
        case .golden_valley: return 033
        case .grand_forks: return 035
        case .grant: return 037
        case .griggs: return 039
        case .hettinger: return 041
        case .kidder: return 043
        case .lamoure: return 045
        case .logan: return 047
        case .mchenry: return 049
        case .mcintosh: return 051
        case .mckenzie: return 053
        case .mclean: return 055
        case .mercer: return 057
        case .morton: return 059
        case .mountrail: return 061
        case .nelson: return 063
        case .oliver: return 065
        case .pembina: return 067
        case .pierce: return 069
        case .ramsey: return 071
        case .ransom: return 073
        case .renville: return 075
        case .richland: return 077
        case .rolette: return 079
        case .sargent: return 081
        case .sheridan: return 083
        case .sioux: return 085
        case .slope: return 087
        case .stark: return 089
        case .steele: return 091
        case .stutsman: return 093
        case .towner: return 095
        case .traill: return 097
        case .walsh: return 099
        case .ward: return 101
        case .wells: return 103
        case .williams: return 105
        }
    }
}
