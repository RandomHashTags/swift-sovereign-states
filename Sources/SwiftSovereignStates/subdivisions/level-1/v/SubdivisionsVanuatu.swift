//
//  SubdivisionsVanuatu.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsVanuatu : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Vanuatu
    case malampa
    case penama
    case sanma
    case shefa
    case tafea
    case torba
    
    public var country : Locale.Region {
        return Locale.Region.vanuatu
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public var isoAlpha2 : String? {
        switch self {
        case .malampa: return "MAP"
        case .penama: return "PAM"
        case .sanma: return "SAM"
        case .shefa: return "SEE"
        case .tafea: return "TAE"
        case .torba: return "TOB"
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .malampa: return "d/dd/Flag_of_Malampa_Province"
        case .penama: return "a/ac/Flag_of_Penama_Province"
        case .sanma: return "d/d0/Flag_of_Sanma_Province"
        case .shefa: return "d/df/Flag_of_Shefa_Province"
        case .tafea: return "5/55/Tafea_Province_Flag"
        case .torba: return "en/a/af/Flag_of_Torba_%28Vanuatu%29_Province"
        }
    }
    
    public var neighbors : [any SovereignStateSubdivision] {
        switch self {
        case .malampa:
            return [SubdivisionsVanuatu.sanma, SubdivisionsVanuatu.penama, SubdivisionsVanuatu.shefa]
        case .penama:
            return [SubdivisionsVanuatu.torba, SubdivisionsVanuatu.sanma, SubdivisionsVanuatu.malampa]
        case .sanma:
            return [SubdivisionsVanuatu.torba, SubdivisionsVanuatu.penama, SubdivisionsVanuatu.malampa]
        case .shefa:
            return [SubdivisionsVanuatu.malampa, SubdivisionsVanuatu.tafea]
        case .tafea:
            return [SubdivisionsVanuatu.shefa]
        case .torba:
            return [SubdivisionsVanuatu.sanma, SubdivisionsVanuatu.penama]
        }
    }
}
