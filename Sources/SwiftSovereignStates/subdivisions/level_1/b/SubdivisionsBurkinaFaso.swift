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
    
    public var country : Locale.Region {
        return Locale.Region.burkinaFaso
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
}
