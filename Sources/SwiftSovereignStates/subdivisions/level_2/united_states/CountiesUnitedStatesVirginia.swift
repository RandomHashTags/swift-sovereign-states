//
//  CountiesUnitedStatesVirginia.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesVirginia : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_cities_and_counties_in_Virginia
    case accomack
    case albemarle
    case alleghany
    case amelia
    case amherst
    case appomattox
    case arlington
    case augusta
    case bath
    case bedford
    case bland
    case botetourt
    case brunswick
    case buchanan
    case buckingham
    case campbell
    case caroline
    case carroll
    case charles_city
    case charlotte
    case chesterfield
    case clarke
    case craig
    case culpeper
    case cumberland
    case dickenson
    case dinwiddie
    case essex
    case fairfax
    case fauquier
    case floyd
    case fluvanna
    case franklin
    case frederick
    case giles
    case gloucester
    case goochland
    case grayson
    case greene
    case greensville
    case halifax
    case hanover
    case henrico
    case henry
    case highland
    case isle_of_wight
    case james_city
    case king_and_queen
    case king_george
    case king_william
    case lancaster
    case lee
    case loudoun
    case louisa
    case lunenburg
    case madison
    case mathews
    case mecklenburg
    case middlesex
    case montgomery
    case nelson
    case new_kent
    case northampton
    case northumberland
    case nottoway
    case orange
    case page
    case patrick
    case pittsylvania
    case powhatan
    case prince_edward
    case prince_george
    case prince_william
    case pulaski
    case rappahannock
    case richmond
    case roanoke
    case rockbridge
    case rockingham
    case russell
    case scott
    case shenandoah
    case smyth
    case southampton
    case spotsylvania
    case stafford
    case surry
    case sussex
    case tazewell
    case warren
    case washington
    case westmoreland
    case wise
    case wythe
    case york
    
    case alexandria
    case bristol
    case buena_vista
    case charlottesville
    case chesapeake
    case colonial_heights
    case covington
    case danville
    case emporia
    case fairfax_city
    case falls_church
    case franklin_city
    case fredericksburg
    case galax
    case hampton
    case harrisonburg
    case hopewell
    case lexington
    case lynchburg
    case manassas
    case manassas_park
    case martinsville
    case newport_news
    case norfolk
    case norton
    case petersburg
    case poquoson
    case portsmouth
    case radford
    case richmond_city
    case roanoke_city
    case salem
    case staunton
    case suffolk
    case virginia_beach
    case waynesboro
    case williamsburg
    case winchester
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.virginia
    }
    
    public var type : SovereignStateLevel2DivisionType {
        switch self {
        case .alexandria,
                .bristol,
                .buena_vista,
                .charlottesville,
                .chesapeake,
                .colonial_heights,
                .covington,
                .danville,
                .emporia,
                .fairfax_city,
                .falls_church,
                .franklin_city,
                .fredericksburg,
                .galax,
                .hampton,
                .harrisonburg,
                .hopewell,
                .lexington,
                .lynchburg,
                .manassas,
                .manassas_park,
                .martinsville,
                .newport_news,
                .norfolk,
                .norton,
                .petersburg,
                .poquoson,
                .portsmouth,
                .radford,
                .richmond_city,
                .roanoke_city,
                .salem,
                .staunton,
                .suffolk,
                .virginia_beach,
                .waynesboro,
                .williamsburg,
                .winchester:
            return SovereignStateLevel2DivisionType.independent_cities
        default:
            return SovereignStateLevel2DivisionType.counties
        }
        
    }
    
    public var real_name : String? {
        switch self {
        case .fairfax_city: return "Fairfax"
        case .franklin_city: return "Franklin"
        case .richmond_city: return "Richmond"
        case .roanoke_city: return "Roanoke"
        default: return nil
        }
    }
    
    public var fips_code : Int {
        switch self {
        case .accomack: return 001
        case .albemarle: return 003
        case .alleghany: return 005
        case .amelia: return 007
        case .amherst: return 009
        case .appomattox: return 011
        case .arlington: return 013
        case .augusta: return 015
        case .bath: return 017
        case .bedford: return 019
        case .bland: return 021
        case .botetourt: return 023
        case .brunswick: return 025
        case .buchanan: return 027
        case .buckingham: return 029
        case .campbell: return 031
        case .caroline: return 033
        case .carroll: return 035
        case .charles_city: return 036
        case .charlotte: return 037
        case .chesterfield: return 041
        case .clarke: return 043
        case .craig: return 045
        case .culpeper: return 047
        case .cumberland: return 049
        case .dickenson: return 051
        case .dinwiddie: return 053
        case .essex: return 057
        case .fairfax: return 059
        case .fauquier: return 061
        case .floyd: return 063
        case .fluvanna: return 065
        case .franklin: return 067
        case .frederick: return 069
        case .giles: return 071
        case .gloucester: return 073
        case .goochland: return 075
        case .grayson: return 077
        case .greene: return 079
        case .greensville: return 081
        case .halifax: return 083
        case .hanover: return 085
        case .henrico: return 087
        case .henry: return 089
        case .highland: return 091
        case .isle_of_wight: return 093
        case .james_city: return 095
        case .king_and_queen: return 097
        case .king_george: return 099
        case .king_william: return 101
        case .lancaster: return 103
        case .lee: return 105
        case .loudoun: return 107
        case .louisa: return 109
        case .lunenburg: return 111
        case .madison: return 113
        case .mathews: return 115
        case .mecklenburg: return 117
        case .middlesex: return 119
        case .montgomery: return 121
        case .nelson: return 125
        case .new_kent: return 127
        case .northampton: return 131
        case .northumberland: return 133
        case .nottoway: return 135
        case .orange: return 137
        case .page: return 139
        case .patrick: return 141
        case .pittsylvania: return 143
        case .powhatan: return 145
        case .prince_edward: return 147
        case .prince_george: return 149
        case .prince_william: return 153
        case .pulaski: return 155
        case .rappahannock: return 157
        case .richmond: return 159
        case .roanoke: return 161
        case .rockbridge: return 163
        case .rockingham: return 165
        case .russell: return 167
        case .scott: return 169
        case .shenandoah: return 171
        case .smyth: return 173
        case .southampton: return 175
        case .spotsylvania: return 177
        case .stafford: return 179
        case .surry: return 181
        case .sussex: return 183
        case .tazewell: return 185
        case .warren: return 187
        case .washington: return 191
        case .westmoreland: return 193
        case .wise: return 195
        case .wythe: return 197
        case .york: return 199
            
        case .alexandria: return 510
        case .bristol: return 520
        case .buena_vista: return 530
        case .charlottesville: return 540
        case .chesapeake: return 550
        case .colonial_heights: return 570
        case .covington: return 580
        case .danville: return 590
        case .emporia: return 595
        case .fairfax_city: return 600
        case .falls_church: return 610
        case .franklin_city: return 620
        case .fredericksburg: return 630
        case .galax: return 640
        case .hampton: return 650
        case .harrisonburg: return 660
        case .hopewell: return 670
        case .lexington: return 678
        case .lynchburg: return 680
        case .manassas: return 683
        case .manassas_park: return 685
        case .martinsville: return 690
        case .newport_news: return 700
        case .norfolk: return 710
        case .norton: return 720
        case .petersburg: return 730
        case .poquoson: return 735
        case .portsmouth: return 740
        case .radford: return 750
        case .richmond_city: return 760
        case .roanoke_city: return 770
        case .salem: return 775
        case .staunton: return 790
        case .suffolk: return 800
        case .virginia_beach: return 810
        case .waynesboro: return 820
        case .williamsburg: return 830
        case .winchester: return 840
        }
    }
}
