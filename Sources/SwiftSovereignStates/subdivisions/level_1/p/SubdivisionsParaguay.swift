//
//  SubdivisionsParaguay.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public enum SubdivisionsParaguay : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Departments_of_Paraguay
    case alto_paraguay
    case alto_parana
    case amambay
    case boqueron
    case caaguazu
    case caazapa
    case canindeyu
    case central
    case concepcion
    case cordillera
    case guaira
    case itapua
    case misiones
    case neembucu
    case paraguari
    case presidente_hayes
    case san_pedro
    
    case asuncion
    
    public var country : Locale.Region {
        return Locale.Region.paraguay
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .asuncion:
            return SovereignStateSubdivisionType.cities
        default:
            return SovereignStateSubdivisionType.departments
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .concepcion: return "a/ac/Flag_of_Concepci%C3%B3n_Department"
        case .san_pedro: return "a/a5/Bandera_del_Departamento_de_San_Pedro.JPG"
        case .cordillera: return "a/ab/Bandera_del_Departamento_de_Cordillera.JPG"
        case .guaira: return "5/50/Flag_of_Guair%C3%A1_Department"
        case .caaguazu: return "8/85/Flag_of_Caaguaz%C3%BA_Department"
        case .caazapa: return "d/d4/Flag_of_Caazap%C3%A1_Department"
        case .itapua: return "1/14/Itapflag.PNG/20px-Itapflag.PNG"
        case .misiones: return "4/45/Bandera_del_Departamento_de_Misiones.JPG"
        case .paraguari: return "7/7e/Bandera_del_Departamento_de_Paraguar%C3%AD.JPG"
        case .alto_parana: return "3/32/Flag_of_Alto_Paran%C3%A1_Department"
        case .central: return "d/d7/Flag_of_Central_Department%2C_Paraguay"
        case .neembucu: return "4/49/Flag_of_%C3%91eembuc%C3%BA_Department"
        case .amambay: return "6/6d/Bandera_del_Departamento_de_Amambay.JPG"
        case .canindeyu: return "d/da/Flag_of_Canindey%C3%BA_Department"
        case .presidente_hayes: return "9/9f/Flag_of_Presidente_Hayes_Department"
        case .alto_paraguay: return "c/ca/Flag_of_Alto_Paraguay_Department"
        case .boqueron: return "2/27/Flag_of_Boquer%C3%B3n_Department"
            
        case .asuncion: return "d/d5/Flag_of_Asunción"
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .asuncion:
            return nil
        default:
            return "_" + type_suffix
        }
    }
}
