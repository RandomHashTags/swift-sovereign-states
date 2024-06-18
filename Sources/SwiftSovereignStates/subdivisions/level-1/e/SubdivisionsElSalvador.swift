//
//  SubdivisionsElSalvador.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public enum SubdivisionsElSalvador : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Departments_of_El_Salvador
    case ahuachapan
    case cabanas
    case chalatenango
    case cuscatlan
    case la_libertad
    case la_paz
    case la_union
    case morazan
    case san_miguel
    case san_salvador
    case san_vicente
    case santa_ana
    case sonsonate
    case usulutan
    
    public var country : Locale.Region {
        return Locale.Region.elSalvador
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.departments
    }
}
