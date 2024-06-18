//
//  SubdivisionsPapuaNewGuinea.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsPapuaNewGuinea : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Papua_New_Guinea
    case bougainville
    case central
    case chimbu
    case east_new_britain
    case east_sepik
    case eastern_highlands
    case enga
    case oro
    case gulf
    case hela
    case jiwaka
    case madang
    case manus
    case milne_bay
    case morobe
    case national_capital_district
    case new_ireland
    case sandaun
    case southern_highlands
    case west_new_britain
    case western_highlands
    case western
    
    public var country : Locale.Region {
        return Locale.Region.papuaNewGuinea
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .bougainville:
            return SovereignStateSubdivisionType.autonomous_regions
        case .national_capital_district:
            return SovereignStateSubdivisionType.incorporated_areas
        default:
            return SovereignStateSubdivisionType.provinces
        }
    }
    
    public var wikipediaName : String? {
        switch self {
        case .bougainville:
            return "Autonomous Region of Bougainville"
        default:
            return nil
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .bougainville:
            return nil
        case .central,
                .western:
            return "_" + type_suffix + "_(Papua_New_Guinea)"
        case .national_capital_district:
            return "_(Papua_New_Guinea)"
        default:
            return "_" + type_suffix
        }
    }
    
    public var isoAlpha2 : String? {
        switch self {
        case .bougainville: return "NSB"
        case .central: return "CPM"
        case .chimbu: return "CPK"
        case .east_new_britain: return "EBR"
        case .east_sepik: return "ESW"
        case .eastern_highlands: return "EHG"
        case .enga: return "EPW"
        case .gulf: return "GPK"
        case .hela: return "HLA"
        case .jiwaka: return "JWK"
        case .madang: return "MPM"
        case .manus: return "MRL"
        case .milne_bay: return "MBA"
        case .morobe: return "MPL"
        case .national_capital_district: return "NCD"
        case .new_ireland: return "NIK"
        case .oro: return "NPP"
        case .sandaun: return "SAN"
        case .southern_highlands: return "SHM"
        case .west_new_britain: return "WBK"
        case .western: return "WPD"
        case .western_highlands: return "WHM"
        }
    }
}
