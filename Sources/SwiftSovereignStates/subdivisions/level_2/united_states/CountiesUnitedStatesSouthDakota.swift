//
//  CountiesUnitedStatesSouthDakota.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesSouthDakota : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_South_Dakota
    case aurora
    case beadle
    case bennett
    case bon_homme
    case brookings
    case brown
    case brule
    case buffalo
    case butte
    case campbell
    case charles_mix
    case clark
    case clay
    case codington
    case corson
    case custer
    case davison
    case day
    case deuel
    case dewey
    case douglas
    case edmunds
    case fall_river
    case faulk
    case grant
    case gregory
    case haakon
    case hamlin
    case hand
    case hanson
    case harding
    case hughes
    case hutchinson
    case hyde
    case jackson
    case jerauld
    case jones
    case kingsbury
    case lake
    case lawrence
    case lincoln
    case lyman
    case marshall
    case mccook
    case mcpherson
    case meade
    case mellette
    case miner
    case minnehaha
    case moody
    case oglala_lakota
    case pennington
    case perkins
    case potter
    case roberts
    case sanborn
    case spink
    case stanley
    case sully
    case todd
    case tripp
    case turner
    case union
    case walworth
    case yankton
    case ziebach
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.south_dakota
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.counties
    }
    
    public var real_name : String? {
        switch self {
        case .mccook: return "McCook"
        case .mcpherson: return "McPherson"
        default: return nil
        }
    }
    
    public var fips_code : Int {
        switch self {
        case .aurora: return 003
        case .beadle: return 005
        case .bennett: return 007
        case .bon_homme: return 009
        case .brookings: return 011
        case .brown: return 013
        case .brule: return 015
        case .buffalo: return 017
        case .butte: return 019
        case .campbell: return 021
        case .charles_mix: return 023
        case .clark: return 025
        case .clay: return 027
        case .codington: return 029
        case .corson: return 031
        case .custer: return 033
        case .davison: return 035
        case .day: return 037
        case .deuel: return 039
        case .dewey: return 041
        case .douglas: return 043
        case .edmunds: return 045
        case .fall_river: return 047
        case .faulk: return 049
        case .grant: return 051
        case .gregory: return 053
        case .haakon: return 055
        case .hamlin: return 057
        case .hand: return 059
        case .hanson: return 061
        case .harding: return 063
        case .hughes: return 065
        case .hutchinson: return 067
        case .hyde: return 069
        case .jackson: return 071
        case .jerauld: return 073
        case .jones: return 075
        case .kingsbury: return 077
        case .lake: return 079
        case .lawrence: return 081
        case .lincoln: return 083
        case .lyman: return 085
        case .marshall: return 091
        case .mccook: return 087
        case .mcpherson: return 089
        case .meade: return 093
        case .mellette: return 095
        case .miner: return 097
        case .minnehaha: return 099
        case .moody: return 101
        case .oglala_lakota: return 102
        case .pennington: return 103
        case .perkins: return 105
        case .potter: return 107
        case .roberts: return 109
        case .sanborn: return 111
        case .spink: return 115
        case .stanley: return 117
        case .sully: return 119
        case .todd: return 121
        case .tripp: return 123
        case .turner: return 125
        case .union: return 127
        case .walworth: return 129
        case .yankton: return 135
        case .ziebach: return 137
        }
    }
}
