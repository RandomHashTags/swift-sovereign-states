//
//  SubdivisionsMontenegro.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public enum SubdivisionsMontenegro : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Municipalities_of_Montenegro
    case andrijevica
    case bar
    case berane
    case bijelo_polje
    case budva
    case danilovgrad
    case gusinje
    case herceg_novi
    case kolasin
    case kotor
    case mojkovac
    case niksic
    case old_royal_capital_cetinje
    case petnjica
    case plav
    case pljevlja
    case pluzine
    case podgorica_capital_city
    case rozaje
    case savnik
    case tivat
    case tuzi
    case ulcinj
    case zabljak
    
    public var country : Locale.Region {
        return Locale.Region.montenegro
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.municipalities
    }
    
    public var wikipediaURLSuffix : String? {
        return nil
    }
}
