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
    
    public func getCountry() -> Country {
        return Country.sweden
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.counties
    }
    
    public var real_name : String? {
        switch self {
        case .gavleborg: return "Gävleborg"
        case .jamtland: return "Jämtland"
        case .jonkoping: return "Jönköping"
        case .skane: return "Skåne"
        case .sodermanland: return "Södermanland"
        case .varmland: return "Värmland"
        case .vasterbotten: return "Västerbotten"
        case .vasternorrland: return "Västernorrland"
        case .vastmandland: return "Västmanland"
        case .vastra_gotaland: return "Västra Götaland"
        case .orebro: return "Örebro"
        case .ostergotland: return "Östergötland"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        return "_County"
    }
    
    public func getISOAlpha2() -> String? {
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
