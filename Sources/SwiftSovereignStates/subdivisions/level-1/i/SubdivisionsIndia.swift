//
//  SubdivisionsIndia.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsIndia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/States_and_union_territories_of_India
    case andhra_pradesh
    case arunachal_pradesh
    case assam
    case bihar
    case chhattisgarh
    case goa
    case gujarat
    case haryana
    case himachal_pradesh
    case jharkhand
    case karnataka
    case kerala
    case madhya_pradesh
    case maharashtra
    case manipur
    case meghalaya
    case mizoram
    case nagaland
    case odisha
    case punjab
    case rajasthan
    case sikkim
    case tamil_nadu
    case telangana
    case tripura
    case uttar_pradesh
    case uttarakhand
    case west_bengal
    
    case andaman_and_nicobar_islands
    case chandigarh
    case dadra_and_nagar_haveli_and_daman_and_diu
    case delhi
    case jammu_and_kashmir
    case ladakh
    case lakshadweep
    case puducherry
    
    public var country : Locale.Region {
        return Locale.Region.india
    }
    
    public var type : Locale.Region.SubdivisionType {
        switch self {
        case .andaman_and_nicobar_islands,
                .chandigarh,
                .dadra_and_nagar_haveli_and_daman_and_diu,
                .delhi,
                .jammu_and_kashmir,
                .ladakh,
                .lakshadweep,
                .puducherry:
            return Locale.Region.SubdivisionType.unionTerritory
        default:
            return Locale.Region.SubdivisionType.states
        }
    }
    
    public var isoAlpha2 : String? {
        switch self {
        case .andaman_and_nicobar_islands: return "AN"
        case .andhra_pradesh: return "AP"
        case .arunachal_pradesh: return "AR"
        case .assam: return "AS"
        case .bihar: return "BR"
        case .chandigarh: return "CH"
        case .chhattisgarh: return "CT"
        case .dadra_and_nagar_haveli_and_daman_and_diu: return "DH"
        case .delhi: return "DL"
        case .goa: return "GA"
        case .gujarat: return "GJ"
        case .haryana: return "HR"
        case .himachal_pradesh: return "HP"
        case .jammu_and_kashmir: return "JK"
        case .jharkhand: return "JH"
        case .karnataka: return "KA"
        case .kerala: return "KL"
        case .ladakh: return "LA"
        case .lakshadweep: return "LD"
        case .madhya_pradesh: return "MP"
        case .maharashtra: return "MH"
        case .manipur: return "MN"
        case .meghalaya: return "ML"
        case .mizoram: return "MZ"
        case .nagaland: return "NL"
        case .odisha: return "OR"
        case .puducherry: return "PY"
        case .punjab: return "PB"
        case .rajasthan: return "RJ"
        case .sikkim: return "SK"
        case .tamil_nadu: return "TN"
        case .telangana: return "TG"
        case .tripura: return "TR"
        case .uttar_pradesh: return "UP"
        case .uttarakhand: return "UT"
        case .west_bengal: return "WB"
        }
    }
}
