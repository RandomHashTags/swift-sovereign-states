//
//  CountiesUnitedStatesGeorgia.swift
//  
//
//  Created by Evan Anderson on 2/27/23.
//

import Foundation

public enum CountiesUnitedStatesGeorgia : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Georgia
    case appling
    case atkinson
    case bacon
    case baker
    case baldwin
    case banks
    case barrow
    case bartow
    case ben_hill
    case berrien
    case bibb
    case bleckley
    case brantley
    case brooks
    case bryan
    case bulloch
    case burke
    case butts
    case calhoun
    case camden
    case candler
    case carroll
    case catoosa
    case charlton
    case chatham
    case chattahoochee
    case chattooga
    case cherokee
    case clarke
    case clay
    case clayton
    case clinch
    case cobb
    case coffee
    case colquitt
    case columbia
    case cook
    case coweta
    case crawford
    case crisp
    case dade
    case dawson
    case decatur
    case dekalb
    case dodge
    case dooly
    case dougherty
    case douglas
    case early
    case echols
    case effingham
    case elbert
    case emanuel
    case evans
    case fannin
    case fayette
    case floyd
    case forsyth
    case franklin
    case fulton
    case gilmer
    case glascock
    case glynn
    case gordon
    case grady
    case greene
    case gwinnett
    case habersham
    case hall
    case hancock
    case haralson
    case harris
    case hart
    case heard
    case henry
    case houston
    case irwin
    case jackson
    case jasper
    case jeff_davis
    case jefferson
    case jenkins
    case johnson
    case jones
    case lamar
    case lanier
    case laurens
    case lee
    case liberty
    case lincoln
    case long
    case lowndes
    case lumpkin
    case macon
    case madison
    case marion
    case mcduffie
    case mcintosh
    case meriwether
    case miller
    case mitchell
    case monroe
    case montgomery
    case morgan
    case murray
    case muscogee
    case newton
    case oconee
    case oglethorpe
    case paulding
    case peach
    case pickens
    case pierce
    case pike
    case polk
    case pulaski
    case putnam
    case quitman
    case rabun
    case randolph
    case richmond
    case rockdale
    case schley
    case screven
    case seminole
    case spalding
    case stephens
    case stewart
    case sumter
    case talbot
    case taliaferro
    case tattnall
    case taylor
    case telfair
    case terrell
    case thomas
    case tift
    case toombs
    case towns
    case treutlen
    case troup
    case turner
    case twiggs
    case union
    case upson
    case walker
    case walton
    case ware
    case warren
    case washington
    case wayne
    case webster
    case wheeler
    case white
    case whitfield
    case wilcox
    case wilkes
    case wilkinson
    case worth
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.georgia
    }
    
    public var fips_code : Int {
        switch self {
        case .appling: return 001
        case .atkinson: return 003
        case .bacon: return 005
        case .baker: return 007
        case .baldwin: return 009
        case .banks: return 011
        case .barrow: return 013
        case .bartow: return 015
        case .ben_hill: return 017
        case .berrien: return 019
        case .bibb: return 021
        case .bleckley: return 023
        case .brantley: return 025
        case .brooks: return 027
        case .bryan: return 029
        case .bulloch: return 031
        case .burke: return 033
        case .butts: return 035
        case .calhoun: return 037
        case .camden: return 039
        case .candler: return 043
        case .carroll: return 045
        case .catoosa: return 047
        case .charlton: return 049
        case .chatham: return 051
        case .chattahoochee: return 053
        case .chattooga: return 055
        case .cherokee: return 057
        case .clarke: return 059
        case .clay: return 061
        case .clayton: return 063
        case .clinch: return 065
        case .cobb: return 067
        case .coffee: return 069
        case .colquitt: return 071
        case .columbia: return 073
        case .cook: return 075
        case .coweta: return 077
        case .crawford: return 079
        case .crisp: return 081
        case .dade: return 083
        case .dawson: return 085
        case .decatur: return 087
        case .dekalb: return 089
        case .dodge: return 091
        case .dooly: return 093
        case .dougherty: return 095
        case .douglas: return 097
        case .early: return 099
        case .echols: return 101
        case .effingham: return 103
        case .elbert: return 105
        case .emanuel: return 107
        case .evans: return 109
        case .fannin: return 111
        case .fayette: return 113
        case .floyd: return 115
        case .forsyth: return 117
        case .franklin: return 119
        case .fulton: return 121
        case .gilmer: return 123
        case .glascock: return 125
        case .glynn: return 127
        case .gordon: return 129
        case .grady: return 131
        case .greene: return 133
        case .gwinnett: return 135
        case .habersham: return 137
        case .hall: return 139
        case .hancock: return 141
        case .haralson: return 143
        case .harris: return 145
        case .hart: return 147
        case .heard: return 149
        case .henry: return 151
        case .houston: return 153
        case .irwin: return 155
        case .jackson: return 157
        case .jasper: return 159
        case .jeff_davis: return 161
        case .jefferson: return 163
        case .jenkins: return 165
        case .johnson: return 167
        case .jones: return 169
        case .lamar: return 171
        case .lanier: return 173
        case .laurens: return 175
        case .lee: return 177
        case .liberty: return 179
        case .lincoln: return 181
        case .long: return 183
        case .lowndes: return 185
        case .lumpkin: return 187
        case .macon: return 193
        case .madison: return 195
        case .marion: return 197
        case .mcduffie: return 189
        case .mcintosh: return 191
        case .meriwether: return 199
        case .miller: return 201
        case .mitchell: return 205
        case .monroe: return 207
        case .montgomery: return 209
        case .morgan: return 211
        case .murray: return 213
        case .muscogee: return 215
        case .newton: return 217
        case .oconee: return 219
        case .oglethorpe: return 221
        case .paulding: return 223
        case .peach: return 225
        case .pickens: return 227
        case .pierce: return 229
        case .pike: return 231
        case .polk: return 233
        case .pulaski: return 235
        case .putnam: return 237
        case .quitman: return 239
        case .rabun: return 241
        case .randolph: return 243
        case .richmond: return 245
        case .rockdale: return 247
        case .schley: return 249
        case .screven: return 251
        case .seminole: return 253
        case .spalding: return 255
        case .stephens: return 257
        case .stewart: return 259
        case .sumter: return 261
        case .talbot: return 263
        case .taliaferro: return 265
        case .tattnall: return 267
        case .taylor: return 269
        case .telfair: return 271
        case .terrell: return 273
        case .thomas: return 275
        case .tift: return 277
        case .toombs: return 279
        case .towns: return 281
        case .treutlen: return 283
        case .troup: return 285
        case .turner: return 287
        case .twiggs: return 289
        case .union: return 291
        case .upson: return 293
        case .walker: return 295
        case .walton: return 297
        case .ware: return 299
        case .warren: return 301
        case .washington: return 303
        case .wayne: return 305
        case .webster: return 307
        case .wheeler: return 309
        case .white: return 311
        case .whitfield: return 313
        case .wilcox: return 315
        case .wilkes: return 317
        case .wilkinson: return 319
        case .worth: return 321
        }
    }
}
