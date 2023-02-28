//
//  CountiesUnitedStatesMichigan.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesMichigan : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Michigan
    case alcona
    case alger
    case allegan
    case alpena
    case antrim
    case arenac
    case baraga
    case barry
    case bay
    case benzie
    case berrien
    case branch
    case calhoun
    case cass
    case charlevoix
    case cheboygan
    case chippewa
    case clare
    case clinton
    case crawford
    case delta
    case dickinson
    case eaton
    case emmet
    case genesee
    case gladwin
    case gogebic
    case grand_traverse
    case gratiot
    case hillsdale
    case houghton
    case huron
    case ingham
    case ionia
    case iosco
    case iron
    case isabella
    case jackson
    case kalamazoo
    case kalkaska
    case kent
    case keweenaw
    case lake
    case lapeer
    case leelanau
    case lenawee
    case livingston
    case luce
    case mackinac
    case macomb
    case manistee
    case marquette
    case mason
    case mecosta
    case menominee
    case midland
    case missaukee
    case monroe
    case montcalm
    case montmorency
    case muskegon
    case newaygo
    case oakland
    case oceana
    case ogemaw
    case ontonagon
    case osceola
    case oscoda
    case otsego
    case ottawa
    case presque_isle
    case roscommon
    case saginaw
    case sanilac
    case schoolcraft
    case shiawassee
    case st_clair
    case st_joseph
    case tuscola
    case van_buren
    case washtenaw
    case wayne
    case wexford
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.michigan
    }
    
    public var fips_code : Int {
        switch self {
        case .alcona: return 001
        case .alger: return 003
        case .allegan: return 005
        case .alpena: return 007
        case .antrim: return 009
        case .arenac: return 011
        case .baraga: return 013
        case .barry: return 015
        case .bay: return 017
        case .benzie: return 019
        case .berrien: return 021
        case .branch: return 023
        case .calhoun: return 025
        case .cass: return 027
        case .charlevoix: return 029
        case .cheboygan: return 031
        case .chippewa: return 033
        case .clare: return 035
        case .clinton: return 037
        case .crawford: return 039
        case .delta: return 041
        case .dickinson: return 043
        case .eaton: return 045
        case .emmet: return 047
        case .genesee: return 049
        case .gladwin: return 051
        case .gogebic: return 053
        case .grand_traverse: return 055
        case .gratiot: return 057
        case .hillsdale: return 059
        case .houghton: return 061
        case .huron: return 063
        case .ingham: return 065
        case .ionia: return 067
        case .iosco: return 069
        case .iron: return 071
        case .isabella: return 073
        case .jackson: return 075
        case .kalamazoo: return 077
        case .kalkaska: return 079
        case .kent: return 081
        case .keweenaw: return 083
        case .lake: return 085
        case .lapeer: return 087
        case .leelanau: return 089
        case .lenawee: return 091
        case .livingston: return 093
        case .luce: return 095
        case .mackinac: return 097
        case .macomb: return 099
        case .manistee: return 101
        case .marquette: return 103
        case .mason: return 105
        case .mecosta: return 107
        case .menominee: return 109
        case .midland: return 111
        case .missaukee: return 113
        case .monroe: return 115
        case .montcalm: return 117
        case .montmorency: return 119
        case .muskegon: return 121
        case .newaygo: return 123
        case .oakland: return 125
        case .oceana: return 127
        case .ogemaw: return 129
        case .ontonagon: return 131
        case .osceola: return 133
        case .oscoda: return 135
        case .otsego: return 137
        case .ottawa: return 139
        case .presque_isle: return 141
        case .roscommon: return 143
        case .saginaw: return 145
        case .sanilac: return 151
        case .schoolcraft: return 153
        case .shiawassee: return 155
        case .st_clair: return 147
        case .st_joseph: return 149
        case .tuscola: return 157
        case .van_buren: return 159
        case .washtenaw: return 161
        case .wayne: return 163
        case .wexford: return 165
        }
    }
}
