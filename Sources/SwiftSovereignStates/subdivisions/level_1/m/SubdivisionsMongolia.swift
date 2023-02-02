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
    
    public var country : Country {
        return Country.mongolia
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .ulaanbaatar:
            return SovereignStateSubdivisionType.municipalities
        default:
            return SovereignStateSubdivisionType.provinces
        }
    }
    
    public var real_name : String? {
        switch self {
        case .bayan_olgii: return "Bayan-Ölgii"
        case .darkhan_uul: return "Darkhan-Uul"
        case .govi_altai: return "Govi-Altai"
        case .govisumber: return "Govisümber"
        case .khovsgol: return "Khövsgöl"
        case .omnogovi: return "Ömnögovi"
        case .ovorkhangai: return "Övörkhangai"
        case .sukhbaatar: return "Sükhbaatar"
        case .tov: return "Töv"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .ulaanbaatar:
            return nil
        default:
            return "_Province"
        }
    }
}
