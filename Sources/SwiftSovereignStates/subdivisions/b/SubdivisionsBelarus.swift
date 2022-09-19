//
//  SubdivisionsBelarus.swift
//  
//
//  Created by Evan Anderson on 6/21/22.
//

import Foundation

public enum SubdivisionsBelarus : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Belarus
    case brest
    case gomel
    case grodno
    case minsk
    case minsk_city
    case mogilev
    case vitesbsk
    
    public func getCountry() -> Country {
        return Country.belarus
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.oblasts
    }
    
    public func getType() -> SovereignStateSubdivisionType? {
        switch self {
        case .minsk_city:
            return .special_cities
        default:
            return nil
        }
    }
    
    public func getConditionalName() -> String? {
        switch self {
        case .minsk_city:
            return "Minsk"
        default:
            return nil
        }
    }
    
    public func getWikipediaURLSuffix(typeSuffix: String) -> String? {
        switch self {
        case .minsk_city:
            return ""
        default:
            return "_" + typeSuffix
        }
    }
    
    public func getFlagURLWikipediaSVGID() -> String? {
        switch self {
        case .brest: return "e/ec/Flag_of_Brest_Voblast%2C_Belarus"
        case .minsk_city: return "6/69/Flag_of_Minsk%2C_Belarus"
        case .gomel: return "4/49/Flag_of_Homyel_Voblast"
        case .grodno: return "f/f8/Flag_of_Hrodna_Voblasts"
        case .minsk: return "2/2e/Flag_of_Minsk_Voblast"
        case .mogilev: return "b/ba/Flag_of_Mahilyow_Voblast"
        case .vitesbsk: return "a/a8/Flag_of_Vitsebsk_Voblasts"
        }
    }
    
    func getNeighbors() -> [Any]? {
        switch self {
        case .brest:
            return [SubdivisionsBelarus.grodno, SubdivisionsBelarus.minsk, SubdivisionsBelarus.gomel]
        case .gomel:
            return [SubdivisionsBelarus.brest, SubdivisionsBelarus.minsk, SubdivisionsBelarus.mogilev]
        case .grodno:
            return [SubdivisionsBelarus.brest, SubdivisionsBelarus.minsk, SubdivisionsBelarus.vitesbsk]
        case .minsk:
            return [SubdivisionsBelarus.grodno, SubdivisionsBelarus.brest, SubdivisionsBelarus.gomel, SubdivisionsBelarus.mogilev, SubdivisionsBelarus.vitesbsk, SubdivisionsBelarus.minsk_city]
        case .minsk_city:
            return [SubdivisionsBelarus.minsk]
        case .mogilev:
            return [SubdivisionsBelarus.vitesbsk, SubdivisionsBelarus.minsk, SubdivisionsBelarus.gomel]
        case .vitesbsk:
            return [SubdivisionsBelarus.grodno, SubdivisionsBelarus.minsk, SubdivisionsBelarus.mogilev]
        }
    }
}
