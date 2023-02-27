//
//  CountiesUnitedStatesWisconsin.swift
//  
//
//  Created by Evan Anderson on 2/27/23.
//

import Foundation

public enum CountiesUnitedStatesWisconsin : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Wisconsin
    case adams
    case ashland
    case barron
    case bayfield
    case brown
    case buffalo
    case burnett
    case calumet
    case chippewa
    case clark
    case columbia
    case crawford
    case dane
    case dodge
    case door
    case douglas
    case dunn
    case eau_claire
    case florence
    case fond_du_lac
    case forest
    case grant
    case green
    case green_lake
    case iowa
    case iron
    case jackson
    case jefferson
    case juneau
    case kenosha
    case kewaunee
    case la_crosse
    case lafayette
    case langlade
    case lincoln
    case manitowoc
    case marathon
    case marinette
    case marquette
    case menominee
    case milwaukee
    case monroe
    case oconto
    case oneida
    case outagamie
    case ozaukee
    case pepin
    case pierce
    case polk
    case portage
    case price
    case racine
    case richland
    case rock
    case rusk
    case sauk
    case sawyer
    case shawano
    case sheboygan
    case st_croix
    case taylor
    case trempealeau
    case vernon
    case vilas
    case walworth
    case washburn
    case washington
    case waukesha
    case waupaca
    case waushara
    case winnebago
    case wood
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.wisconsin
    }
    
    public var fips_code : Int {
        switch self {
        case .adams: return 001
        case .ashland: return 003
        case .barron: return 005
        case .bayfield: return 007
        case .brown: return 009
        case .buffalo: return 011
        case .burnett: return 013
        case .calumet: return 015
        case .chippewa: return 017
        case .clark: return 019
        case .columbia: return 021
        case .crawford: return 023
        case .dane: return 025
        case .dodge: return 027
        case .door: return 029
        case .douglas: return 031
        case .dunn: return 033
        case .eau_claire: return 035
        case .florence: return 037
        case .fond_du_lac: return 039
        case .forest: return 041
        case .grant: return 043
        case .green: return 045
        case .green_lake: return 047
        case .iowa: return 049
        case .iron: return 051
        case .jackson: return 053
        case .jefferson: return 055
        case .juneau: return 057
        case .kenosha: return 059
        case .kewaunee: return 061
        case .la_crosse: return 063
        case .lafayette: return 065
        case .langlade: return 067
        case .lincoln: return 069
        case .manitowoc: return 071
        case .marathon: return 073
        case .marinette: return 075
        case .marquette: return 077
        case .menominee: return 078
        case .milwaukee: return 079
        case .monroe: return 081
        case .oconto: return 083
        case .oneida: return 085
        case .outagamie: return 087
        case .ozaukee: return 089
        case .pepin: return 091
        case .pierce: return 093
        case .polk: return 095
        case .portage: return 097
        case .price: return 099
        case .racine: return 101
        case .richland: return 103
        case .rock: return 105
        case .rusk: return 107
        case .sauk: return 111
        case .sawyer: return 113
        case .shawano: return 115
        case .sheboygan: return 117
        case .st_croix: return 109
        case .taylor: return 119
        case .trempealeau: return 121
        case .vernon: return 123
        case .vilas: return 125
        case .walworth: return 127
        case .washburn: return 129
        case .washington: return 131
        case .waukesha: return 133
        case .waupaca: return 135
        case .waushara: return 137
        case .winnebago: return 139
        case .wood: return 141
        }
    }
}
