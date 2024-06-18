//
//  SubdivisionsFinland.swift
//  
//
//  Created by Evan Anderson on 2/11/23.
//

import Foundation

public enum SubdivisionsFinland : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Finland
    case aland
    case central_finland
    case central_ostrobothnia
    case kainuu
    case kanta_hame
    case kymenlaakso
    case lapland
    case north_karelia
    case north_ostrobothnia
    case north_savo
    case ostrobothnia
    case paijat_hame
    case pirkanmaa
    case satakunta
    case south_karelia
    case south_ostrobothnia
    case south_savo
    case southwest_finland
    case uusimaa
    
    public var country : Locale.Region {
        return Locale.Region.finland
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .lapland:
            return "_(Finland)"
        case .ostrobothnia:
            return "_(region)"
        default:
            return nil
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .aland: return "5/52/Flag_of_%C3%85land"
        case .central_finland: return "9/9a/Keski-suomi_lippu"
        case .central_ostrobothnia: return "6/64/Keski-Pohjanmaa.lippu"
        case .kainuu: return "5/5d/Flag_of_Kainuu"
        case .kanta_hame: return "b/bd/Flag_of_Tavastia_Proper"
        case .kymenlaakso: return nil
        case .lapland: return nil
        case .north_karelia: return "e/e0/North_karelia_flag"
        case .north_ostrobothnia: return nil
        case .north_savo: return "8/85/Flag_of_Northern_Savonia"
        case .ostrobothnia: return nil
        case .paijat_hame: return "1/18/P%C3%A4ij%C3%A4t-H%C3%A4me.lippu"
        case .pirkanmaa: return nil
        case .satakunta: return "7/78/Satakunta-flag"
        case .south_karelia: return nil
        case .south_ostrobothnia: return "3/30/Flag_of_Southern_Ostrobothnia"
        case .south_savo: return "b/b1/Flag_of_South_Savonia"
        case .southwest_finland: return nil
        case .uusimaa: return "c/c8/Flag_of_Uusimaa"
        }
    }
}
