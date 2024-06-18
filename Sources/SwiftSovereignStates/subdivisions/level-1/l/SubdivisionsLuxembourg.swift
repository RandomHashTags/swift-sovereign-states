//
//  SubdivisionsLuxembourg.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public enum SubdivisionsLuxembourg : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Cantons_of_Luxembourg
    case capellen
    case clervaux
    case diekirch
    case echternach
    case esch_sur_alzette
    case grevenmacher
    case luxembourg
    case mersch
    case redange
    case remich
    case vianden
    case wiltz
    
    public var country : Locale.Region {
        return Locale.Region.luxembourg
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.cantons
    }
}
