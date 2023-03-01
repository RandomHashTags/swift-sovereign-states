//
//  CountiesUnitedStatesColorado.swift
//  
//
//  Created by Evan Anderson on 2/27/23.
//

import Foundation

public enum CountiesUnitedStatesColorado : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Colorado
    case adams
    case alamosa
    case arapahoe
    case archuleta
    case baca
    case bent
    case boulder
    case broomfield
    case chaffee
    case cheyenne
    case clear_creek
    case conejos
    case costilla
    case crowley
    case custer
    case delta
    case denver
    case dolores
    case douglas
    case eagle
    case el_paso
    case elbert
    case fremont
    case garfield
    case gilpin
    case grand
    case gunnison
    case hinsdale
    case huerfano
    case jackson
    case jefferson
    case kiowa
    case kit_carson
    case la_plata
    case lake
    case larimer
    case las_animas
    case lincoln
    case logan
    case mesa
    case mineral
    case moffat
    case montezuma
    case montrose
    case morgan
    case otero
    case ouray
    case park
    case phillips
    case pitkin
    case prowers
    case pueblo
    case rio_blanco
    case rio_grande
    case routt
    case saguache
    case san_juan
    case san_miguel
    case sedgwick
    case summit
    case teller
    case washington
    case weld
    case yuma
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.colorado
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.counties
    }
    
    public var fips_code : Int {
        switch self {
        case .adams: return 001
        case .alamosa: return 003
        case .arapahoe: return 005
        case .archuleta: return 007
        case .baca: return 009
        case .bent: return 011
        case .boulder: return 013
        case .broomfield: return 014
        case .chaffee: return 015
        case .cheyenne: return 017
        case .clear_creek: return 019
        case .conejos: return 021
        case .costilla: return 023
        case .crowley: return 025
        case .custer: return 027
        case .delta: return 029
        case .denver: return 031
        case .dolores: return 033
        case .douglas: return 035
        case .eagle: return 037
        case .el_paso: return 041
        case .elbert: return 039
        case .fremont: return 043
        case .garfield: return 045
        case .gilpin: return 047
        case .grand: return 049
        case .gunnison: return 051
        case .hinsdale: return 053
        case .huerfano: return 055
        case .jackson: return 057
        case .jefferson: return 059
        case .kiowa: return 061
        case .kit_carson: return 063
        case .la_plata: return 067
        case .lake: return 065
        case .larimer: return 069
        case .las_animas: return 071
        case .lincoln: return 073
        case .logan: return 075
        case .mesa: return 077
        case .mineral: return 079
        case .moffat: return 081
        case .montezuma: return 083
        case .montrose: return 085
        case .morgan: return 087
        case .otero: return 089
        case .ouray: return 091
        case .park: return 093
        case .phillips: return 095
        case .pitkin: return 097
        case .prowers: return 099
        case .pueblo: return 101
        case .rio_blanco: return 103
        case .rio_grande: return 105
        case .routt: return 107
        case .saguache: return 109
        case .san_juan: return 111
        case .san_miguel: return 113
        case .sedgwick: return 115
        case .summit: return 117
        case .teller: return 119
        case .washington: return 121
        case .weld: return 123
        case .yuma: return 125
        }
    }
}
