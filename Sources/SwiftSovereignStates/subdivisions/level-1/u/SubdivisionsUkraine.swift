//
//  SubdivisionsUkraine.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public enum SubdivisionsUkraine : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Ukraine
    case cherkasy
    case chernihiv
    case chernivtsi
    case dnipropetrovsk
    case donetsk
    case ivano_frankivsk
    case kharkiv
    case kherson
    case khmelnytskyi
    case kirovohrad
    case kyiv
    case luhansk
    case lviv
    case mykolaiv
    case odesa
    case poltava
    case rivne
    case sumy
    case ternopil
    case vinnytsia
    case volyn
    case zakarpattia
    case zaporizhzhia
    case zhytomyr
    
    case crimea
    
    case kyiv_city
    case sevastopol
    
    public var country : Locale.Region {
        return Locale.Region.ukraine
    }
    
    public var type : Locale.Region.SubdivisionType {
        switch self {
        case .crimea:
            return Locale.Region.SubdivisionType.autonomousRepublic
        case .kyiv_city,
                .sevastopol:
            return Locale.Region.SubdivisionType.specialSelfGoverningCity
        default:
            return Locale.Region.SubdivisionType.oblast
        }
    }
}
