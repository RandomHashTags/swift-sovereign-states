//
//  SubdivisionsSweden.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsSweden : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Counties_of_Sweden
    case blekinge
    case dalarna
    case gotland
    case gavleborg
    case halland
    case jamtland
    case jonkoping
    case kalmar
    case kronoberg
    case norrbotten
    case skane
    case stockholm
    case sodermanland
    case uppsala
    case varmland
    case vasterbotten
    case vasternorrland
    case vastmandland
    case vastra_gotaland
    case orebro
    case ostergotland
    
    public var country : Locale.Region {
        return Locale.Region.sweden
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.counties
    }
    
    public var wikipediaURLSuffix : String? {
        return "_County"
    }
    
    public var isoAlpha2 : String? {
        switch self {
        case .blekinge: return "K"
        case .dalarna: return "W"
        case .gotland: return "I"
        case .gavleborg: return "X"
        case .halland: return "N"
        case .jamtland: return "Z"
        case .jonkoping: return "F"
        case .kronoberg: return "G"
        case .norrbotten: return "BD"
        case .skane: return "M"
        case .stockholm: return "AB"
        case .sodermanland: return "D"
        case .uppsala: return "C"
        case .varmland: return "S"
        case .vasterbotten: return "AC"
        case .vasternorrland: return "Y"
        case .vastmandland: return "U"
        case .vastra_gotaland: return "O"
        case .orebro: return "T"
        case .ostergotland: return "E"
        default: return nil
        }
    }
}
