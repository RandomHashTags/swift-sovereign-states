//
//  CountiesUnitedStatesTennessee.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesTennessee : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Tennessee
    case anderson
    case bedford
    case benton
    case bledsoe
    case blount
    case bradley
    case campbell
    case cannon
    case carroll
    case carter
    case cheatham
    case chester
    case claiborne
    case clay
    case cocke
    case coffee
    case crockett
    case cumberland
    case davidson
    case decatur
    case dekalb
    case dickson
    case dyer
    case fayette
    case fentress
    case franklin
    case gibson
    case giles
    case grainger
    case greene
    case grundy
    case hamblen
    case hamilton
    case hancock
    case hardeman
    case hardin
    case hawkins
    case haywood
    case henderson
    case henry
    case hickman
    case houston
    case humphreys
    case jackson
    case jefferson
    case johnson
    case knox
    case lake
    case lauderdale
    case lawrence
    case lewis
    case lincoln
    case loudon
    case macon
    case madison
    case marion
    case marshall
    case maury
    case mcminn
    case mcnairy
    case meigs
    case monroe
    case montgomery
    case moore
    case morgan
    case obion
    case overton
    case perry
    case pickett
    case polk
    case putnam
    case rhea
    case roane
    case robertson
    case rutherford
    case scott
    case sequatchie
    case sevier
    case shelby
    case smith
    case stewart
    case sullivan
    case sumner
    case tipton
    case trousdale
    case unicoi
    case union
    case van_buren
    case warren
    case washington
    case wayne
    case weakley
    case white
    case williamson
    case wilson
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.tennessee
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.counties
    }
    
    public var real_name : String? {
        switch self {
        case .dekalb: return "DeKalb"
        case .mcminn: return "McMinn"
        case .mcnairy: return "McNairy"
        default: return nil
        }
    }
    
    public var fips_code : Int {
        switch self {
        case .anderson: return 001
        case .bedford: return 003
        case .benton: return 005
        case .bledsoe: return 007
        case .blount: return 009
        case .bradley: return 011
        case .campbell: return 013
        case .cannon: return 015
        case .carroll: return 017
        case .carter: return 019
        case .cheatham: return 021
        case .chester: return 023
        case .claiborne: return 025
        case .clay: return 027
        case .cocke: return 029
        case .coffee: return 031
        case .crockett: return 033
        case .cumberland: return 035
        case .davidson: return 037
        case .decatur: return 039
        case .dekalb: return 041
        case .dickson: return 043
        case .dyer: return 045
        case .fayette: return 047
        case .fentress: return 049
        case .franklin: return 051
        case .gibson: return 053
        case .giles: return 055
        case .grainger: return 057
        case .greene: return 059
        case .grundy: return 061
        case .hamblen: return 063
        case .hamilton: return 065
        case .hancock: return 067
        case .hardeman: return 069
        case .hardin: return 071
        case .hawkins: return 073
        case .haywood: return 075
        case .henderson: return 077
        case .henry: return 079
        case .hickman: return 081
        case .houston: return 083
        case .humphreys: return 085
        case .jackson: return 087
        case .jefferson: return 089
        case .johnson: return 091
        case .knox: return 093
        case .lake: return 095
        case .lauderdale: return 097
        case .lawrence: return 099
        case .lewis: return 101
        case .lincoln: return 103
        case .loudon: return 105
        case .macon: return 111
        case .madison: return 113
        case .marion: return 115
        case .marshall: return 117
        case .maury: return 119
        case .mcminn: return 107
        case .mcnairy: return 109
        case .meigs: return 121
        case .monroe: return 123
        case .montgomery: return 125
        case .moore: return 127
        case .morgan: return 129
        case .obion: return 131
        case .overton: return 133
        case .perry: return 135
        case .pickett: return 137
        case .polk: return 139
        case .putnam: return 141
        case .rhea: return 143
        case .roane: return 145
        case .robertson: return 147
        case .rutherford: return 149
        case .scott: return 151
        case .sequatchie: return 153
        case .sevier: return 155
        case .shelby: return 157
        case .smith: return 159
        case .stewart: return 161
        case .sullivan: return 163
        case .sumner: return 165
        case .tipton: return 167
        case .trousdale: return 169
        case .unicoi: return 171
        case .union: return 173
        case .van_buren: return 175
        case .warren: return 177
        case .washington: return 179
        case .wayne: return 181
        case .weakley: return 183
        case .white: return 185
        case .williamson: return 187
        case .wilson: return 189
        }
    }
}
