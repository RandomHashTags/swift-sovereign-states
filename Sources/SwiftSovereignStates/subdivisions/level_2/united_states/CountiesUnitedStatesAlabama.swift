//
//  CountiesUnitedStatesAlabama.swift
//  
//
//  Created by Evan Anderson on 2/27/23.
//

import Foundation

public enum CountiesUnitedStatesAlabama : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Alabama
    case autauga
    case baldwin
    case barbour
    case bibb
    case blount
    case bullock
    case butler
    case calhoun
    case chambers
    case cherokee
    case chilton
    case choctaw
    case clarke
    case clay
    case cleburne
    case coffee
    case colbert
    case conecuh
    case coosa
    case covington
    case crenshaw
    case cullman
    case dale
    case dallas
    case dekalb
    case elmore
    case escambia
    case etowah
    case fayette
    case franklin
    case geneva
    case greene
    case hale
    case henry
    case houston
    case jackson
    case jefferson
    case lamar
    case lauderdale
    case lawrence
    case lee
    case limestone
    case lowndes
    case macon
    case madison
    case marengo
    case marion
    case marshall
    case mobile
    case monroe
    case montgomery
    case morgan
    case perry
    case pickens
    case pike
    case randolph
    case russell
    case shelby
    case st_clair
    case sumter
    case talladega
    case tallapoosa
    case tuscaloosa
    case walker
    case washington
    case wilcox
    case winston
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.alabama
    }
    
    public var fips_code : Int {
        switch self {
        case .autauga: return 001
        case .baldwin: return 003
        case .barbour: return 005
        case .bibb: return 007
        case .blount: return 009
        case .bullock: return 011
        case .butler: return 013
        case .calhoun: return 015
        case .chambers: return 017
        case .cherokee: return 019
        case .chilton: return 021
        case .choctaw: return 023
        case .clarke: return 025
        case .clay: return 027
        case .cleburne: return 029
        case .coffee: return 031
        case .colbert: return 033
        case .conecuh: return 035
        case .coosa: return 037
        case .covington: return 039
        case .crenshaw: return 041
        case .cullman: return 043
        case .dale: return 045
        case .dallas: return 047
        case .dekalb: return 049
        case .elmore: return 051
        case .escambia: return 053
        case .etowah: return 055
        case .fayette: return 057
        case .franklin: return 059
        case .geneva: return 061
        case .greene: return 063
        case .hale: return 065
        case .henry: return 067
        case .houston: return 069
        case .jackson: return 071
        case .jefferson: return 073
        case .lamar: return 075
        case .lauderdale: return 077
        case .lawrence: return 079
        case .lee: return 081
        case .limestone: return 083
        case .lowndes: return 085
        case .macon: return 087
        case .madison: return 089
        case .marengo: return 091
        case .marion: return 093
        case .marshall: return 095
        case .mobile: return 097
        case .monroe: return 099
        case .montgomery: return 101
        case .morgan: return 103
        case .perry: return 105
        case .pickens: return 107
        case .pike: return 109
        case .randolph: return 111
        case .russell: return 113
        case .shelby: return 117
        case .st_clair: return 115
        case .sumter: return 119
        case .talladega: return 121
        case .tallapoosa: return 123
        case .tuscaloosa: return 125
        case .walker: return 127
        case .washington: return 129
        case .wilcox: return 131
        case .winston: return 133
        }
    }
}
