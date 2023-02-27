//
//  CountiesUnitedStatesCalifornia.swift
//  
//
//  Created by Evan Anderson on 2/27/23.
//

import Foundation

public enum CountiesUnitedStatesCalifornia : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_California
    case alameda
    case alpine
    case amador
    case butte
    case calaveras
    case colusa
    case contra_costa
    case del_norte
    case el_dorado
    case fresno
    case glenn
    case humboldt
    case imperial
    case inyo
    case kern
    case kings
    case lake
    case lassen
    case los_angeles
    case madera
    case marin
    case mariposa
    case mendocino
    case merced
    case modoc
    case mono
    case monterey
    case napa
    case nevada
    case orange
    case placer
    case plumas
    case riverside
    case sacramento
    case san_benito
    case san_bernardino
    case san_diego
    case san_francisco
    case san_joaquin
    case san_luis_obispo
    case san_mateo
    case santa_barbara
    case santa_clara
    case santa_cruz
    case shasta
    case sierra
    case siskiyou
    case solano
    case sonoma
    case stanislaus
    case sutter
    case tehama
    case trinity
    case tulare
    case tuolumne
    case ventura
    case yolo
    case yuba
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.california
    }
    
    public var fips_code : Int {
        switch self {
        case .alameda: return 001
        case .alpine: return 003
        case .amador: return 005
        case .butte: return 007
        case .calaveras: return 009
        case .colusa: return 011
        case .contra_costa: return 013
        case .del_norte: return 015
        case .el_dorado: return 017
        case .fresno: return 019
        case .glenn: return 021
        case .humboldt: return 023
        case .imperial: return 025
        case .inyo: return 027
        case .kern: return 029
        case .kings: return 031
        case .lake: return 033
        case .lassen: return 035
        case .los_angeles: return 037
        case .madera: return 039
        case .marin: return 041
        case .mariposa: return 043
        case .mendocino: return 045
        case .merced: return 047
        case .modoc: return 049
        case .mono: return 051
        case .monterey: return 053
        case .napa: return 055
        case .nevada: return 057
        case .orange: return 059
        case .placer: return 061
        case .plumas: return 063
        case .riverside: return 065
        case .sacramento: return 067
        case .san_benito: return 069
        case .san_bernardino: return 071
        case .san_diego: return 073
        case .san_francisco: return 075
        case .san_joaquin: return 077
        case .san_luis_obispo: return 079
        case .san_mateo: return 081
        case .santa_barbara: return 083
        case .santa_clara: return 085
        case .santa_cruz: return 087
        case .shasta: return 089
        case .sierra: return 091
        case .siskiyou: return 093
        case .solano: return 095
        case .sonoma: return 097
        case .stanislaus: return 099
        case .sutter: return 101
        case .tehama: return 103
        case .trinity: return 105
        case .tulare: return 107
        case .tuolumne: return 109
        case .ventura: return 111
        case .yolo: return 113
        case .yuba: return 115
        }
    }
}
