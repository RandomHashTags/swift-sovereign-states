//
//  SubdivisionsMongolia.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public enum SubdivisionsMongolia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Mongolia
    case arkhangai
    case bayan_olgii
    case bayankhongor
    case bulgan
    case darkhan_uul
    case dornod
    case dornogovi
    case dundgovi
    case govi_altai
    case govisumber
    case khentii
    case khovd
    case khovsgol
    case omnogovi
    case orkhon
    case ovorkhangai
    case selenge
    case sukhbaatar
    case tov
    case ulaanbaatar
    case uvs
    case zavkhan
    
    public var country : Locale.Region {
        return Locale.Region.mongolia
    }
    
    public var type : Locale.Region.SubdivisionType {
        switch self {
        case .ulaanbaatar:
            return Locale.Region.SubdivisionType.municipality
        default:
            return Locale.Region.SubdivisionType.province
        }
    }
}
