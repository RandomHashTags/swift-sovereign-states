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
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .ahuachapan: return "e/e8/Bandera_del_Departamento_de_Ahuachap%C3%A1n.PNG"
        case .cabanas: return "4/47/Flag_of_the_Caba%C3%B1as_Department"
        case .chalatenango: return "d/d8/Flag_of_Chalatenango"
        case .cuscatlan: return "c/cb/Bandera_del_Departamento_de_Cuscatl%C3%A1n.PNG"
        case .la_libertad: return "a/ae/Flag_of_La_Libertad_Department_%28El_Salvador%29"
        case .la_paz: return "b/b6/Bandera_del_Departamento_de_La_Paz.jpg"
        case .la_union: return "6/6d/Bandera_del_Departamento_de_La_Union_ES.jpg"
        case .morazan: return "f/f2/Flag_of_Moraz%C3%A1n_Department"
        case .san_miguel: return "f/fb/Flag_of_San_Miguel_Department.png"
        case .san_salvador: return "7/73/San_Salvador_Flag.png"
        case .san_vicente: return "e/e7/Flag_of_San_Vicente_Department"
        case .santa_ana: return "6/6e/Santa_Ana_%28El_Salvador%29_flag.jpg"
        case .sonsonate: return "d/d2/Bandera_Sonsonate_SV.png"
        case .usulutan: return "b/b2/Usulutan_flag.png"
        }
    }
}
