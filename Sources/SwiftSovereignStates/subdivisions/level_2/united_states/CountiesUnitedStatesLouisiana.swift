//
//  CountiesUnitedStatesLouisiana.swift
//  
//
//  Created by Evan Anderson on 3/1/23.
//

import Foundation

public enum CountiesUnitedStatesLouisiana : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_parishes_in_Louisiana
    case acadia
    case allen
    case ascension
    case assumption
    case avoyelles
    case beauregard
    case bienville
    case bossier
    case caddo
    case calcasieu
    case caldwell
    case cameron
    case catahoula
    case claiborne
    case concordia
    case desoto
    case east_baton_rouge
    case east_carroll
    case east_feliciana
    case evangeline
    case franklin
    case grant
    case iberia
    case iberville
    case jackson
    case jefferson
    case jefferson_davis
    case lafayette
    case lafourche
    case lasalle
    case lincoln
    case livingston
    case madison
    case morehouse
    case natchitoches
    case orleans
    case ouachita
    case plaquemines
    case pointe_coupee
    case rapides
    case red_river
    case richland
    case sabine
    case st_bernard
    case st_charles
    case st_helena
    case st_james
    case st_john_the_baptist
    case st_landry
    case st_martin
    case st_mary
    case st_tammany
    case tangipahoa
    case tensas
    case terrebonne
    case union
    case vermilion
    case vernon
    case washington
    case webster
    case west_baton_rouge
    case west_carroll
    case west_feliciana
    case winn
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.louisiana
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.parishes
    }
    
    public var fips_code : Int {
        switch self {
        case .acadia: return 001
        case .allen: return 003
        case .ascension: return 005
        case .assumption: return 007
        case .avoyelles: return 009
        case .beauregard: return 011
        case .bienville: return 013
        case .bossier: return 015
        case .caddo: return 017
        case .calcasieu: return 019
        case .caldwell: return 021
        case .cameron: return 023
        case .catahoula: return 025
        case .claiborne: return 027
        case .concordia: return 029
        case .desoto: return 031
        case .east_baton_rouge: return 033
        case .east_carroll: return 035
        case .east_feliciana: return 037
        case .evangeline: return 039
        case .franklin: return 041
        case .grant: return 043
        case .iberia: return 045
        case .iberville: return 047
        case .jackson: return 049
        case .jefferson: return 051
        case .jefferson_davis: return 053
        case .lafayette: return 055
        case .lafourche: return 057
        case .lasalle: return 059
        case .lincoln: return 061
        case .livingston: return 063
        case .madison: return 065
        case .morehouse: return 067
        case .natchitoches: return 069
        case .orleans: return 071
        case .ouachita: return 073
        case .plaquemines: return 075
        case .pointe_coupee: return 077
        case .rapides: return 079
        case .red_river: return 081
        case .richland: return 083
        case .sabine: return 085
        case .st_bernard: return 087
        case .st_charles: return 089
        case .st_helena: return 091
        case .st_james: return 093
        case .st_john_the_baptist: return 095
        case .st_landry: return 097
        case .st_martin: return 099
        case .st_mary: return 101
        case .st_tammany: return 103
        case .tangipahoa: return 105
        case .tensas: return 107
        case .terrebonne: return 109
        case .union: return 111
        case .vermilion: return 113
        case .vernon: return 115
        case .washington: return 117
        case .webster: return 119
        case .west_baton_rouge: return 121
        case .west_carroll: return 123
        case .west_feliciana: return 125
        case .winn: return 127
        }
    }
}
