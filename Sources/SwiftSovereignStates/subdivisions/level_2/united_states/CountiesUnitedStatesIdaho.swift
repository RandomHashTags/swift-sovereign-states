//
//  CountiesUnitedStatesIdaho.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesIdaho : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Idaho
    case ada
    case adams
    case bannock
    case bear_lake
    case benewah
    case bingham
    case blaine
    case boise
    case bonner
    case bonneville
    case boundary
    case butte
    case camas
    case canyon
    case caribou
    case cassia
    case clark
    case clearwater
    case custer
    case elmore
    case franklin
    case fremont
    case gem
    case gooding
    case idaho
    case jefferson
    case jerome
    case kootenai
    case latah
    case lemhi
    case lewis
    case lincoln
    case madison
    case minidoka
    case nez_perce
    case oneida
    case owyhee
    case payette
    case power
    case shoshone
    case teton
    case twin_falls
    case valley
    case washington
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.idaho
    }
    
    public var fips_code : Int {
        switch self {
        case .ada: return 001
        case .adams: return 003
        case .bannock: return 005
        case .bear_lake: return 007
        case .benewah: return 009
        case .bingham: return 011
        case .blaine: return 013
        case .boise: return 015
        case .bonner: return 017
        case .bonneville: return 019
        case .boundary: return 021
        case .butte: return 023
        case .camas: return 025
        case .canyon: return 027
        case .caribou: return 029
        case .cassia: return 031
        case .clark: return 033
        case .clearwater: return 035
        case .custer: return 037
        case .elmore: return 039
        case .franklin: return 041
        case .fremont: return 043
        case .gem: return 045
        case .gooding: return 047
        case .idaho: return 049
        case .jefferson: return 051
        case .jerome: return 053
        case .kootenai: return 055
        case .latah: return 057
        case .lemhi: return 059
        case .lewis: return 061
        case .lincoln: return 063
        case .madison: return 065
        case .minidoka: return 067
        case .nez_perce: return 069
        case .oneida: return 071
        case .owyhee: return 073
        case .payette: return 075
        case .power: return 077
        case .shoshone: return 079
        case .teton: return 081
        case .twin_falls: return 083
        case .valley: return 085
        case .washington: return 087
        }
    }
}
