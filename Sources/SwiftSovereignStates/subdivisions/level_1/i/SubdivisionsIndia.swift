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
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .andaman_and_nicobar_islands,
                .chandigarh,
                .dadra_and_nagar_haveli_and_daman_and_diu,
                .delhi,
                .jammu_and_kashmir,
                .ladakh,
                .lakshadweep,
                .puducherry:
            return SovereignStateSubdivisionType.union_territories
        default:
            return SovereignStateSubdivisionType.states
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .punjab:
            return ",_India"
        case .jammu_and_kashmir,
                .puducherry:
            return "_(union_territory)"
        default:
            return nil
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
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .andhra_pradesh: return "3/37/Emblem_of_Andhra_Pradesh"
        case .arunachal_pradesh: return "en/d/d4/Arunachal_Pradesh_Seal"
        case .assam: return "0/0e/Seal_of_Assam"
        case .bihar: return "e/e9/Seal_of_Bihar"
        case .chhattisgarh: return "5/5b/..Chhattisgarh_Flag%28INDIA%29.png"
        case .goa: return "en/8/8a/Seal_of_Goa.png"
        case .gujarat: return "a/a6/Government_Of_Gujarat_Seal_In_All_Languages"
        case .haryana: return "3/36/Emblem_of_Haryana"
        case .himachal_pradesh: return "en/b/be/Himachal_Pradesh_seal"
        case .jharkhand: return "a/a9/Jharkhand_Rajakiya_Chihna"
        case .karnataka: return "a/aa/Seal_of_Karnataka"
        case .kerala: return "5/5b/Government_of_Kerala_Logo"
        case .madhya_pradesh: return "a/ae/Emblem_of_Madhya_Pradesh"
        case .maharashtra: return "f/ff/Flag_of_Maharashtra"
        case .manipur: return "en/3/3e/Manipur_emblem"
        case .meghalaya: return "5/59/Seal_of_Meghalaya"
        case .mizoram: return "5/56/Seal_of_Mizoram"
        case .nagaland: return "en/1/1e/Seal_of_Nagaland"
        case .odisha: return "f/fe/Seal_of_Odisha.png"
        case .punjab: return "5/5d/Seal_of_Punjab"
        case .rajasthan: return "1/1e/Emblem_Rajasthan.png"
        case .sikkim: return "c/c0/Seal_of_Sikkim"
        case .tamil_nadu: return "8/81/TamilNadu_Logo"
        case .telangana: return "f/f7/Government_of_Telangana_Logo.png"
        case .tripura: return "7/73/Seal_of_Tripura"
        case .uttar_pradesh: return "f/fa/Seal_of_Uttar_Pradesh"
        case .uttarakhand: return "en/9/99/Seal_of_Uttarakhand"
        case .west_bengal: return "d/d5/Emblem_of_West_Bengal"

        case .andaman_and_nicobar_islands: return "en/4/40/Seal_of_Andaman_Government.png"
        case .chandigarh: return "en/9/96/Chandigarh_emblem.png"
        case .dadra_and_nagar_haveli_and_daman_and_diu: return "7/73/Seal_of_Dadra_and_Nagar_Haveli_and_Daman_and_Diu"
        case .delhi: return nil
        case .jammu_and_kashmir: return nil
        case .ladakh: return "e/e1/Seal_of_Ladakh.png"
        case .lakshadweep: return "en/6/61/Lakshadweep_Banner.png"
        case .puducherry: return "1/12/Seal_of_Puducherry"
        }
    }
}
