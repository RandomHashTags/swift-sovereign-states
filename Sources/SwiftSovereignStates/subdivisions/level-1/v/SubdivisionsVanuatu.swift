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
