//
//  CountiesUnitedStatesNewYork.swift
//  
//
//  Created by Evan Anderson on 2/27/23.
//

import Foundation

public enum CountiesUnitedStatesNewYork : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_New_York
    case albany
    case allegany
    case bronx
    case broome
    case cattaraugus
    case cayuga
    case chautauqua
    case chemung
    case chenango
    case clinton
    case columbia
    case cortland
    case delaware
    case dutchess
    case erie
    case essex
    case franklin
    case fulton
    case genesee
    case greene
    case hamilton
    case herkimer
    case jefferson
    case kings
    case lewis
    case livingston
    case madison
    case monroe
    case montgomery
    case nassau
    case new_york
    case niagara
    case oneida
    case onondaga
    case ontario
    case orange
    case orleans
    case oswego
    case otsego
    case putnam
    case queens
    case rensselaer
    case richmond
    case rockland
    case saratoga
    case schenectady
    case schoharie
    case schuyler
    case seneca
    case st_lawrence
    case steuben
    case suffolk
    case sullivan
    case tioga
    case tompkins
    case ulster
    case warren
    case washington
    case wayne
    case westchester
    case wyoming
    case yates
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.new_york
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.counties
    }
    
    public var fips_code : Int {
        switch self {
        case .albany: return 001
        case .allegany: return 003
        case .bronx: return 005
        case .broome: return 007
        case .cattaraugus: return 009
        case .cayuga: return 011
        case .chautauqua: return 013
        case .chemung: return 015
        case .chenango: return 017
        case .clinton: return 019
        case .columbia: return 021
        case .cortland: return 023
        case .delaware: return 025
        case .dutchess: return 027
        case .erie: return 029
        case .essex: return 031
        case .franklin: return 033
        case .fulton: return 035
        case .genesee: return 037
        case .greene: return 039
        case .hamilton: return 041
        case .herkimer: return 043
        case .jefferson: return 045
        case .kings: return 047
        case .lewis: return 049
        case .livingston: return 051
        case .madison: return 053
        case .monroe: return 055
        case .montgomery: return 057
        case .nassau: return 059
        case .new_york: return 061
        case .niagara: return 063
        case .oneida: return 065
        case .onondaga: return 067
        case .ontario: return 069
        case .orange: return 071
        case .orleans: return 073
        case .oswego: return 075
        case .otsego: return 077
        case .putnam: return 079
        case .queens: return 081
        case .rensselaer: return 083
        case .richmond: return 085
        case .rockland: return 087
        case .saratoga: return 091
        case .schenectady: return 093
        case .schoharie: return 095
        case .schuyler: return 097
        case .seneca: return 099
        case .st_lawrence: return 089
        case .steuben: return 101
        case .suffolk: return 103
        case .sullivan: return 105
        case .tioga: return 107
        case .tompkins: return 109
        case .ulster: return 111
        case .warren: return 113
        case .washington: return 115
        case .wayne: return 117
        case .westchester: return 119
        case .wyoming: return 121
        case .yates: return 123
        }
    }
}
