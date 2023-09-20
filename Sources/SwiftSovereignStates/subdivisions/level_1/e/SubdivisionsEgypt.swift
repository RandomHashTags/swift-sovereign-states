//
//  SubdivisionsEgypt.swift
//  
//
//  Created by Evan Anderson on 7/26/22.
//

import Foundation

public enum SubdivisionsEgypt : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Governorates_of_Egypt
    case alexandria
    case aswan
    case asyut
    case beheira
    case beni_suef
    case cairo
    case dakahlia
    case damietta
    case faiyum
    case gharbia
    case giza
    case ismailia
    case kafr_el_sheikh
    case luxor
    case matrouh
    case minya
    case monufia
    case new_valley
    case north_sinai
    case port_said
    case qalyubia
    case qena
    case red_sea
    case sharqia
    case sohag
    case south_sinai
    case suez
    
    public var country : Locale.Region {
        return Locale.Region.egypt
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.governorates
    }
    
    public var isoAlpha2 : String? {
        switch self {
        case .alexandria: return "ALX"
        case .aswan: return "ASN"
        case .asyut: return "AST"
        case .beheira: return "BH"
        case .beni_suef: return "BNS"
        case .cairo: return "C"
        case .dakahlia: return "DK"
        case .damietta: return "DT"
        case .faiyum: return "FYM"
        case .gharbia: return "GH"
        case .giza: return "GZ"
        case .ismailia: return "IS"
        case .kafr_el_sheikh: return "KFS"
        case .luxor: return "LX"
        case .matrouh: return "MT"
        case .minya: return "MN"
        case .monufia: return "MNF"
        case .new_valley: return "WAD"
        case .north_sinai: return "SIN"
        case .port_said: return "PTS"
        case .qalyubia: return "KB"
        case .qena: return "KN"
        case .red_sea: return "BA"
        case .sharqia: return "SHR"
        case .sohag: return "SHG"
        case .south_sinai: return "JS"
        case .suez: return "SUZ"
        }
    }
}
