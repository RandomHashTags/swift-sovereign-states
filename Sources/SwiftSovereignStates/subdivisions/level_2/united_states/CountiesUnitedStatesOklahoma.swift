//
//  CountiesUnitedStatesOklahoma.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesOklahoma : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Oklahoma
    case adair
    case alfalfa
    case atoka
    case beaver
    case beckham
    case blaine
    case bryan
    case caddo
    case canadian
    case carter
    case cherokee
    case choctaw
    case cimarron
    case cleveland
    case coal
    case comanche
    case cotton
    case craig
    case creek
    case custer
    case delaware
    case dewey
    case ellis
    case garfield
    case garvin
    case grady
    case grant
    case greer
    case harmon
    case harper
    case haskell
    case hughes
    case jackson
    case jefferson
    case johnston
    case kay
    case kingfisher
    case kiowa
    case latimer
    case le_flore
    case lincoln
    case logan
    case love
    case major
    case marshall
    case mayes
    case mcclain
    case mccurtain
    case mcintosh
    case murray
    case muskogee
    case noble
    case nowata
    case okfuskee
    case oklahoma
    case okmulgee
    case osage
    case ottawa
    case pawnee
    case payne
    case pittsburg
    case pontotoc
    case pottawatomie
    case pushmataha
    case roger_mills
    case rogers
    case seminole
    case sequoyah
    case stephens
    case texas
    case tillman
    case tulsa
    case wagoner
    case washington
    case washita
    case woods
    case woodward
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.oklahoma
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.counties
    }
    
    public var real_name : String? {
        switch self {
        case .mcclain: return "McClain"
        case .mccurtain: return "McCurtain"
        case .mcintosh: return "McIntosh"
        default: return nil
        }
    }
    
    public var fips_code : Int {
        switch self {
        case .adair: return 001
        case .alfalfa: return 003
        case .atoka: return 005
        case .beaver: return 007
        case .beckham: return 009
        case .blaine: return 011
        case .bryan: return 013
        case .caddo: return 015
        case .canadian: return 017
        case .carter: return 019
        case .cherokee: return 021
        case .choctaw: return 023
        case .cimarron: return 025
        case .cleveland: return 027
        case .coal: return 029
        case .comanche: return 031
        case .cotton: return 033
        case .craig: return 035
        case .creek: return 037
        case .custer: return 039
        case .delaware: return 041
        case .dewey: return 043
        case .ellis: return 045
        case .garfield: return 047
        case .garvin: return 049
        case .grady: return 051
        case .grant: return 053
        case .greer: return 055
        case .harmon: return 057
        case .harper: return 059
        case .haskell: return 061
        case .hughes: return 063
        case .jackson: return 065
        case .jefferson: return 067
        case .johnston: return 069
        case .kay: return 071
        case .kingfisher: return 073
        case .kiowa: return 075
        case .latimer: return 077
        case .le_flore: return 079
        case .lincoln: return 081
        case .logan: return 083
        case .love: return 085
        case .major: return 093
        case .marshall: return 095
        case .mayes: return 097
        case .mcclain: return 087
        case .mccurtain: return 089
        case .mcintosh: return 091
        case .murray: return 099
        case .muskogee: return 101
        case .noble: return 103
        case .nowata: return 105
        case .okfuskee: return 107
        case .oklahoma: return 109
        case .okmulgee: return 111
        case .osage: return 113
        case .ottawa: return 115
        case .pawnee: return 117
        case .payne: return 119
        case .pittsburg: return 121
        case .pontotoc: return 123
        case .pottawatomie: return 125
        case .pushmataha: return 127
        case .roger_mills: return 129
        case .rogers: return 131
        case .seminole: return 133
        case .sequoyah: return 135
        case .stephens: return 137
        case .texas: return 139
        case .tillman: return 141
        case .tulsa: return 143
        case .wagoner: return 145
        case .washington: return 147
        case .washita: return 149
        case .woods: return 151
        case .woodward: return 153
        }
    }
}
