//
//  CountiesUnitedStatesMontana.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesMontana : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Montana
    case beaverhead
    case big_horn
    case blaine
    case broadwater
    case carbon
    case carter
    case cascade
    case chouteau
    case custer
    case daniels
    case dawson
    case deer_lodge
    case fallon
    case fergus
    case flathead
    case gallatin
    case garfield
    case glacier
    case golden_valley
    case granite
    case hill
    case jefferson
    case judith_basin
    case lake
    case lewis_and_clark
    case liberty
    case lincoln
    case madison
    case mccone
    case meagher
    case mineral
    case missoula
    case musselshell
    case park
    case petroleum
    case phillips
    case pondera
    case powder_river
    case powell
    case prairie
    case ravalli
    case richland
    case roosevelt
    case rosebud
    case sanders
    case sheridan
    case silver_bow
    case stillwater
    case sweet_grass
    case teton
    case toole
    case treasure
    case valley
    case wheatland
    case wibaux
    case yellowstone
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.montana
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.counties
    }
    
    public var real_name : String? {
        switch self {
        case .mccone: return "McCone"
        default: return nil
        }
    }
    
    public var fips_code : Int {
        switch self {
        case .beaverhead: return 001
        case .big_horn: return 003
        case .blaine: return 005
        case .broadwater: return 007
        case .carbon: return 009
        case .carter: return 011
        case .cascade: return 013
        case .chouteau: return 015
        case .custer: return 017
        case .daniels: return 019
        case .dawson: return 021
        case .deer_lodge: return 023
        case .fallon: return 025
        case .fergus: return 027
        case .flathead: return 029
        case .gallatin: return 031
        case .garfield: return 033
        case .glacier: return 035
        case .golden_valley: return 037
        case .granite: return 039
        case .hill: return 041
        case .jefferson: return 043
        case .judith_basin: return 045
        case .lake: return 047
        case .lewis_and_clark: return 049
        case .liberty: return 051
        case .lincoln: return 053
        case .madison: return 057
        case .mccone: return 055
        case .meagher: return 059
        case .mineral: return 061
        case .missoula: return 063
        case .musselshell: return 065
        case .park: return 067
        case .petroleum: return 069
        case .phillips: return 071
        case .pondera: return 073
        case .powder_river: return 075
        case .powell: return 077
        case .prairie: return 079
        case .ravalli: return 081
        case .richland: return 083
        case .roosevelt: return 085
        case .rosebud: return 087
        case .sanders: return 089
        case .sheridan: return 091
        case .silver_bow: return 093
        case .stillwater: return 095
        case .sweet_grass: return 097
        case .teton: return 099
        case .toole: return 101
        case .treasure: return 103
        case .valley: return 105
        case .wheatland: return 107
        case .wibaux: return 109
        case .yellowstone: return 111
        }
    }
}
