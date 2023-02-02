//
//  SubdivisionsHaiti.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsHaiti : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Departments_of_Haiti
    case artibonite
    case centre
    case grand_anse
    case nippes
    case nord
    case nord_est
    case nord_ouest
    case ouest
    case sud
    case sud_est
    
    public var country : Country {
        return Country.haiti
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.departments
    }
    
    public var real_name : String? {
        switch self {
        case .grand_anse: return "Grand'Anse"
        case .nord_est: return "Nord-Est"
        case .nord_ouest: return "Nord-Ouest"
        case .sud_est: return "Sud-Est"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .nord:
            return "_(Haitian_department)"
        case .nippes:
            return nil
        default:
            return "_(department)"
        }
    }
    
    public func getNeighbors() -> [any SovereignStateSubdivision]? {
        switch self {
        case .artibonite:
            return [SubdivisionsHaiti.nord_ouest, SubdivisionsHaiti.nord, SubdivisionsHaiti.centre, SubdivisionsHaiti.ouest]
        case .centre:
            return [SubdivisionsHaiti.artibonite, SubdivisionsHaiti.nord, SubdivisionsHaiti.nord_est, SubdivisionsHaiti.ouest]
        case .grand_anse:
            return [SubdivisionsHaiti.sud, SubdivisionsHaiti.nippes]
        case .nippes:
            return [SubdivisionsHaiti.grand_anse, SubdivisionsHaiti.sud, SubdivisionsHaiti.sud_est, SubdivisionsHaiti.ouest]
        case .nord:
            return [SubdivisionsHaiti.nord_ouest, SubdivisionsHaiti.artibonite, SubdivisionsHaiti.nord_est, SubdivisionsHaiti.centre]
        case .nord_est:
            return [SubdivisionsHaiti.nord, SubdivisionsHaiti.centre]
        case .nord_ouest:
            return [SubdivisionsHaiti.artibonite, SubdivisionsHaiti.nord]
        case .ouest:
            return [SubdivisionsHaiti.artibonite, SubdivisionsHaiti.centre, SubdivisionsHaiti.sud_est, SubdivisionsHaiti.nippes]
        case .sud:
            return [SubdivisionsHaiti.grand_anse, SubdivisionsHaiti.nippes, SubdivisionsHaiti.sud_est]
        case .sud_est:
            return [SubdivisionsHaiti.sud, SubdivisionsHaiti.nippes, SubdivisionsHaiti.ouest]
        }
    }
}
