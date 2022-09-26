//
//  SubdivisionsPapuaNewGuinea.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsPapuaNewGuinea : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Papua_New_Guinea
    case bougainville
    case central
    case chimbu
    case east_new_britian
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
    case west_new_britian
    case western_highlands
    case western
    
    public func getCountry() -> Country {
        return Country.papua_new_guinea
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public func getType() -> SovereignStateSubdivisionType? {
        switch self {
        case .bougainville:
            return SovereignStateSubdivisionType.autonomous_regions
        case .national_capital_district:
            return SovereignStateSubdivisionType.incorporated_areas
        default:
            return nil
        }
    }
    
    public func getConditionalName() -> String? {
        switch self {
        case .bougainville:
            return "Autonomous Region of Bougainville"
        default:
            return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .bougainville:
            return ""
        case .central,
                .western:
            return getTypeSuffix() + "_(Papua_New_Guinea)"
        case .national_capital_district:
            return "(Papua_New_Guinea)"
        default:
            return nil
        }
    }
    
    public func getISOAlpha2() -> String? {
        switch self {
        case .bougainville: return "NSB"
        case .central: return "CPM"
        case .chimbu: return "CPK"
        case .east_new_britian: return "EBR"
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
        case .west_new_britian: return "WBK"
        case .western: return "WPD"
        case .western_highlands: return "WHM"
        }
    }
}
