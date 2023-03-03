//
//  CountiesUnitedStatesTexas.swift
//  
//
//  Created by Evan Anderson on 2/27/23.
//

import Foundation

public enum CountiesUnitedStatesTexas : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Texas
    case anderson
    case andrews
    case angelina
    case aransas
    case archer
    case armstrong
    case atascosa
    case austin
    case bailey
    case bandera
    case bastrop
    case baylor
    case bee
    case bell
    case bexar
    case blanco
    case borden
    case bosque
    case bowie
    case brazoria
    case brazos
    case brewster
    case briscoe
    case brooks
    case brown
    case burleson
    case burnet
    case caldwell
    case calhoun
    case callahan
    case cameron
    case camp
    case carson
    case cass
    case castro
    case chambers
    case cherokee
    case childress
    case clay
    case cochran
    case coke
    case coleman
    case collin
    case collingsworth
    case colorado
    case comal
    case comanche
    case concho
    case cooke
    case coryell
    case cottle
    case crane
    case crockett
    case crosby
    case culberson
    case dallam
    case dallas
    case dawson
    case deaf_smith
    case delta
    case denton
    case dewitt
    case dickens
    case dimmit
    case donley
    case duval
    case eastland
    case ector
    case edwards
    case el_paso
    case ellis
    case erath
    case falls
    case fannin
    case fayette
    case fisher
    case floyd
    case foard
    case fort_bend
    case franklin
    case freestone
    case frio
    case gaines
    case galveston
    case garza
    case gillespie
    case glasscock
    case goliad
    case gonzales
    case gray
    case grayson
    case gregg
    case grimes
    case guadalupe
    case hale
    case hall
    case hamilton
    case hansford
    case hardeman
    case hardin
    case harris
    case harrison
    case hartley
    case haskell
    case hays
    case hemphill
    case henderson
    case hidalgo
    case hill
    case hockley
    case hood
    case hopkins
    case houston
    case howard
    case hudspeth
    case hunt
    case hutchinson
    case irion
    case jack
    case jackson
    case jasper
    case jeff_davis
    case jefferson
    case jim_hogg
    case jim_wells
    case johnson
    case jones
    case karnes
    case kaufman
    case kendall
    case kenedy
    case kent
    case kerr
    case kimble
    case king
    case kinney
    case kleberg
    case knox
    case la_salle
    case lamar
    case lamb
    case lampasas
    case lavaca
    case lee
    case leon
    case liberty
    case limestone
    case lipscomb
    case live_oak
    case llano
    case loving
    case lubbock
    case lynn
    case madison
    case marion
    case martin
    case mason
    case matagorda
    case maverick
    case mcculloch
    case mclennan
    case mcmullen
    case medina
    case menard
    case midland
    case milam
    case mills
    case mitchell
    case montague
    case montgomery
    case moore
    case morris
    case motley
    case nacogdoches
    case navarro
    case newton
    case nolan
    case nueces
    case ochiltree
    case oldham
    case orange
    case palo_pinto
    case panola
    case parker
    case parmer
    case pecos
    case polk
    case potter
    case presidio
    case rains
    case randall
    case reagan
    case real
    case red_river
    case reeves
    case refugio
    case roberts
    case robertson
    case rockwall
    case runnels
    case rusk
    case sabine
    case san_augustine
    case san_jacinto
    case san_patricio
    case san_saba
    case schleicher
    case scurry
    case shackelford
    case shelby
    case sherman
    case smith
    case somervell
    case starr
    case stephens
    case sterling
    case stonewall
    case sutton
    case swisher
    case tarrant
    case taylor
    case terrell
    case terry
    case throckmorton
    case titus
    case tom_green
    case travis
    case trinity
    case tyler
    case upshur
    case upton
    case uvalde
    case val_verde
    case van_zandt
    case victoria
    case walker
    case waller
    case ward
    case washington
    case webb
    case wharton
    case wheeler
    case wichita
    case wilbarger
    case willacy
    case williamson
    case wilson
    case winkler
    case wise
    case wood
    case yoakum
    case young
    case zapata
    case zavala
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.texas
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.counties
    }
    
    public var real_name : String? {
        switch self {
        case .mcculloch: return "McCulloch"
        case .mclennan: return "McLennan"
        case .mcmullen: return "McMullen"
        default: return nil
        }
    }
    
    public var fips_code : Int {
        switch self {
        case .anderson: return 001
        case .andrews: return 003
        case .angelina: return 005
        case .aransas: return 007
        case .archer: return 009
        case .armstrong: return 011
        case .atascosa: return 013
        case .austin: return 015
        case .bailey: return 017
        case .bandera: return 019
        case .bastrop: return 021
        case .baylor: return 023
        case .bee: return 025
        case .bell: return 027
        case .bexar: return 029
        case .blanco: return 031
        case .borden: return 033
        case .bosque: return 035
        case .bowie: return 037
        case .brazoria: return 039
        case .brazos: return 041
        case .brewster: return 043
        case .briscoe: return 045
        case .brooks: return 047
        case .brown: return 049
        case .burleson: return 051
        case .burnet: return 053
        case .caldwell: return 055
        case .calhoun: return 057
        case .callahan: return 059
        case .cameron: return 061
        case .camp: return 063
        case .carson: return 065
        case .cass: return 067
        case .castro: return 069
        case .chambers: return 071
        case .cherokee: return 073
        case .childress: return 075
        case .clay: return 077
        case .cochran: return 079
        case .coke: return 081
        case .coleman: return 083
        case .collin: return 085
        case .collingsworth: return 087
        case .colorado: return 089
        case .comal: return 091
        case .comanche: return 093
        case .concho: return 095
        case .cooke: return 097
        case .coryell: return 099
        case .cottle: return 101
        case .crane: return 103
        case .crockett: return 105
        case .crosby: return 107
        case .culberson: return 109
        case .dallam: return 111
        case .dallas: return 113
        case .dawson: return 115
        case .deaf_smith: return 117
        case .delta: return 119
        case .denton: return 121
        case .dewitt: return 123
        case .dickens: return 125
        case .dimmit: return 127
        case .donley: return 129
        case .duval: return 131
        case .eastland: return 133
        case .ector: return 135
        case .edwards: return 137
        case .el_paso: return 141
        case .ellis: return 139
        case .erath: return 143
        case .falls: return 145
        case .fannin: return 147
        case .fayette: return 149
        case .fisher: return 151
        case .floyd: return 153
        case .foard: return 155
        case .fort_bend: return 157
        case .franklin: return 159
        case .freestone: return 161
        case .frio: return 163
        case .gaines: return 165
        case .galveston: return 167
        case .garza: return 169
        case .gillespie: return 171
        case .glasscock: return 173
        case .goliad: return 175
        case .gonzales: return 177
        case .gray: return 179
        case .grayson: return 181
        case .gregg: return 183
        case .grimes: return 185
        case .guadalupe: return 187
        case .hale: return 189
        case .hall: return 191
        case .hamilton: return 193
        case .hansford: return 195
        case .hardeman: return 197
        case .hardin: return 199
        case .harris: return 201
        case .harrison: return 203
        case .hartley: return 205
        case .haskell: return 207
        case .hays: return 209
        case .hemphill: return 211
        case .henderson: return 213
        case .hidalgo: return 215
        case .hill: return 217
        case .hockley: return 219
        case .hood: return 221
        case .hopkins: return 223
        case .houston: return 225
        case .howard: return 227
        case .hudspeth: return 229
        case .hunt: return 231
        case .hutchinson: return 233
        case .irion: return 235
        case .jack: return 237
        case .jackson: return 239
        case .jasper: return 241
        case .jeff_davis: return 243
        case .jefferson: return 245
        case .jim_hogg: return 247
        case .jim_wells: return 249
        case .johnson: return 251
        case .jones: return 253
        case .karnes: return 255
        case .kaufman: return 257
        case .kendall: return 259
        case .kenedy: return 261
        case .kent: return 263
        case .kerr: return 265
        case .kimble: return 267
        case .king: return 269
        case .kinney: return 271
        case .kleberg: return 273
        case .knox: return 275
        case .la_salle: return 283
        case .lamar: return 277
        case .lamb: return 279
        case .lampasas: return 281
        case .lavaca: return 285
        case .lee: return 287
        case .leon: return 289
        case .liberty: return 291
        case .limestone: return 293
        case .lipscomb: return 295
        case .live_oak: return 297
        case .llano: return 299
        case .loving: return 301
        case .lubbock: return 303
        case .lynn: return 305
        case .madison: return 313
        case .marion: return 315
        case .martin: return 317
        case .mason: return 319
        case .matagorda: return 321
        case .maverick: return 323
        case .mcculloch: return 307
        case .mclennan: return 309
        case .mcmullen: return 311
        case .medina: return 325
        case .menard: return 327
        case .midland: return 329
        case .milam: return 331
        case .mills: return 333
        case .mitchell: return 335
        case .montague: return 337
        case .montgomery: return 339
        case .moore: return 341
        case .morris: return 343
        case .motley: return 345
        case .nacogdoches: return 347
        case .navarro: return 349
        case .newton: return 351
        case .nolan: return 353
        case .nueces: return 355
        case .ochiltree: return 357
        case .oldham: return 359
        case .orange: return 361
        case .palo_pinto: return 363
        case .panola: return 365
        case .parker: return 367
        case .parmer: return 369
        case .pecos: return 371
        case .polk: return 373
        case .potter: return 375
        case .presidio: return 377
        case .rains: return 379
        case .randall: return 381
        case .reagan: return 383
        case .real: return 385
        case .red_river: return 387
        case .reeves: return 389
        case .refugio: return 391
        case .roberts: return 393
        case .robertson: return 395
        case .rockwall: return 397
        case .runnels: return 399
        case .rusk: return 401
        case .sabine: return 403
        case .san_augustine: return 405
        case .san_jacinto: return 407
        case .san_patricio: return 409
        case .san_saba: return 411
        case .schleicher: return 413
        case .scurry: return 415
        case .shackelford: return 417
        case .shelby: return 419
        case .sherman: return 421
        case .smith: return 423
        case .somervell: return 425
        case .starr: return 427
        case .stephens: return 429
        case .sterling: return 431
        case .stonewall: return 433
        case .sutton: return 435
        case .swisher: return 437
        case .tarrant: return 439
        case .taylor: return 441
        case .terrell: return 443
        case .terry: return 445
        case .throckmorton: return 447
        case .titus: return 449
        case .tom_green: return 451
        case .travis: return 453
        case .trinity: return 455
        case .tyler: return 457
        case .upshur: return 459
        case .upton: return 461
        case .uvalde: return 463
        case .val_verde: return 465
        case .van_zandt: return 467
        case .victoria: return 469
        case .walker: return 471
        case .waller: return 473
        case .ward: return 475
        case .washington: return 477
        case .webb: return 479
        case .wharton: return 481
        case .wheeler: return 483
        case .wichita: return 485
        case .wilbarger: return 487
        case .willacy: return 489
        case .williamson: return 491
        case .wilson: return 493
        case .winkler: return 495
        case .wise: return 497
        case .wood: return 499
        case .yoakum: return 501
        case .young: return 503
        case .zapata: return 505
        case .zavala: return 507
        }
    }
}
