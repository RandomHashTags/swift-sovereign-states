//
//  SubdivisionsBurkinaFaso.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public enum SubdivisionsBurkinaFaso : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Burkina_Faso
    case boucle_du_mouhoun
    case cascades
    case centre
    case centre_est
    case centre_nord
    case centre_ouest
    case centre_sud
    case est
    case hauts_bassins
    case nord
    case plateau_central
    case sahel
    case sud_ouest
    
    public func getCountry() -> Country {
        return Country.burkina_faso
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public var real_name : String? {
        switch self {
        case .centre_est: return "Centre-Est"
        case .centre_nord: return "Centre-Nord"
        case .centre_ouest: return "Centre-Ouest"
        case .centre_sud: return "Centre-Sud"
        case .hauts_bassins: return "Hauts-Bassins"
        case .plateau_central: return "Plateau-Central"
        case .sud_ouest: return "Sud-Ouest"
        default: return nil
        }
    }
}
