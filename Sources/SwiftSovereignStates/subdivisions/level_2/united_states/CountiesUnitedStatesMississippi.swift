//
//  CountiesUnitedStatesMississippi.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesMississippi : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Mississippi
    case adams
    case alcorn
    case amite
    case attala
    case benton
    case bolivar
    case calhoun
    case carroll
    case chickasaw
    case choctaw
    case claiborne
    case clarke
    case clay
    case coahoma
    case copiah
    case covington
    case desoto
    case forrest
    case franklin
    case george
    case greene
    case grenada
    case hancock
    case harrison
    case hinds
    case holmes
    case humphreys
    case issaquena
    case itawamba
    case jackson
    case jasper
    case jefferson
    case jefferson_davis
    case jones
    case kemper
    case lafayette
    case lamar
    case lauderdale
    case lawrence
    case leake
    case lee
    case leflore
    case lincoln
    case lowndes
    case madison
    case marion
    case marshall
    case monroe
    case montgomery
    case neshoba
    case newton
    case noxubee
    case oktibbeha
    case panola
    case pearl_river
    case perry
    case pike
    case pontotoc
    case prentiss
    case quitman
    case rankin
    case scott
    case sharkey
    case simpson
    case smith
    case stone
    case sunflower
    case tallahatchie
    case tate
    case tippah
    case tishomingo
    case tunica
    case union
    case walthall
    case warren
    case washington
    case wayne
    case webster
    case wilkinson
    case winston
    case yalobusha
    case yazoo
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.mississippi
    }
    
    public var fips_code : Int {
        switch self {
        case .adams: return 001
        case .alcorn: return 003
        case .amite: return 005
        case .attala: return 007
        case .benton: return 009
        case .bolivar: return 011
        case .calhoun: return 013
        case .carroll: return 015
        case .chickasaw: return 017
        case .choctaw: return 019
        case .claiborne: return 021
        case .clarke: return 023
        case .clay: return 025
        case .coahoma: return 027
        case .copiah: return 029
        case .covington: return 031
        case .desoto: return 033
        case .forrest: return 035
        case .franklin: return 037
        case .george: return 039
        case .greene: return 041
        case .grenada: return 043
        case .hancock: return 045
        case .harrison: return 047
        case .hinds: return 049
        case .holmes: return 051
        case .humphreys: return 053
        case .issaquena: return 055
        case .itawamba: return 057
        case .jackson: return 059
        case .jasper: return 061
        case .jefferson: return 063
        case .jefferson_davis: return 065
        case .jones: return 067
        case .kemper: return 069
        case .lafayette: return 071
        case .lamar: return 073
        case .lauderdale: return 075
        case .lawrence: return 077
        case .leake: return 079
        case .lee: return 081
        case .leflore: return 083
        case .lincoln: return 085
        case .lowndes: return 087
        case .madison: return 089
        case .marion: return 091
        case .marshall: return 093
        case .monroe: return 095
        case .montgomery: return 097
        case .neshoba: return 099
        case .newton: return 101
        case .noxubee: return 103
        case .oktibbeha: return 105
        case .panola: return 107
        case .pearl_river: return 109
        case .perry: return 111
        case .pike: return 113
        case .pontotoc: return 115
        case .prentiss: return 117
        case .quitman: return 119
        case .rankin: return 121
        case .scott: return 123
        case .sharkey: return 125
        case .simpson: return 127
        case .smith: return 129
        case .stone: return 131
        case .sunflower: return 133
        case .tallahatchie: return 135
        case .tate: return 137
        case .tippah: return 139
        case .tishomingo: return 141
        case .tunica: return 143
        case .union: return 145
        case .walthall: return 147
        case .warren: return 149
        case .washington: return 151
        case .wayne: return 153
        case .webster: return 155
        case .wilkinson: return 157
        case .winston: return 159
        case .yalobusha: return 161
        case .yazoo: return 163
        }
    }
}
