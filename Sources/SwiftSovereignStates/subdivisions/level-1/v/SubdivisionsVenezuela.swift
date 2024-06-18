//
//  SubdivisionsVenezuela.swift
//  
//
//  Created by Evan Anderson on 9/21/22.
//

import Foundation

public enum SubdivisionsVenezuela : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/States_of_Venezuela
    case amazonas
    case anzoategui
    case apure
    case aragua
    case barinas
    case bolivar
    case carabobo
    case cojedes
    case delta_amacuro
    case falcon
    case guarico
    case la_guaira
    case lara
    case merida
    case miranda
    case monagas
    case nueva_esparta
    case portuguesa
    case sucre
    case tachira
    case trujillo
    case yaracuy
    case zulia
    
    case capital_district
    
    public var country : Locale.Region {
        return Locale.Region.venezuela
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .capital_district:
            return SovereignStateSubdivisionType.federal_districts
        default:
            return SovereignStateSubdivisionType.states
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .amazonas:
            return "_(Venezuelan_state)"
        case .capital_district:
            return "_(Venezuela)"
        case .barinas,
                .bolivar,
                .cojedes,
                .la_guaira,
                .lara,
                .miranda,
                .portuguesa,
                .sucre,
                .trujillo:
            return "_(" + type_suffix.lowercased() + ")"
        default:
            return nil
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .amazonas: return "7/7f/Flag_of_Amazonas_Indigenous_State"
        case .anzoategui: return "0/03/Flag_of_Anzoátegui_State_%28original_version%29"
        case .apure: return "1/1a/Flag_of_Apure_State"
        case .aragua: return "4/4f/Flag_of_Aragua_State"
        case .barinas: return "5/5e/Flag_of_Barinas_State"
        case .bolivar: return "0/06/Flag_of_Bol%C3%ADvar_State"
        case .carabobo: return "5/52/Flag_of_Carabobo_State"
        case .cojedes: return "7/7d/Flag_of_Cojedes_State"
        case .delta_amacuro: return "2/20/Flag_of_Delta_Amacuro_State"
        case .falcon: return "0/0e/Flag_of_Falcón"
        case .guarico: return "a/a2/Flag_of_Guárico_State"
        case .la_guaira: return "a/a9/Flag_of_Vargas_State"
        case .lara: return "4/4b/Flag_of_Lara_State"
        case .merida: return "9/9f/Flag_of_Mérida_State"
        case .miranda: return "9/92/Flag_of_Miranda_state"
        case .monagas: return "3/31/Flag_of_Monagas_State"
        case .nueva_esparta: return "6/6a/Flag_of_Nueva_Esparta"
        case .portuguesa: return "8/81/Flag_of_Portuguesa"
        case .sucre: return "c/c1/Flag_of_Sucre_State"
        case .tachira: return "0/01/Flag_of_Táchira"
        case .trujillo: return "b/b0/Flag_of_Trujillo_State"
        case .yaracuy: return "1/15/Flag_of_Yaracuy_State"
        case .zulia: return "c/c6/Flag_of_Zulia_State"
            
        case .capital_district: return nil
        }
    }
    
    public var governmentURL : String? {
        switch self {
        case .amazonas: return "https://amazonas.gob.ve"
        case .anzoategui: return nil
        case .apure: return "http://www.apure.gob.ve"
        case .aragua: return nil
        case .barinas: return nil
        case .bolivar: return "http://www.e-bolivar.gob.ve"
        case .carabobo: return "http://www.carabobo.gob.ve"
        case .cojedes: return nil
        case .delta_amacuro: return nil
        case .falcon: return nil
        case .guarico: return "http://guarico.gob.ve"
        case .la_guaira: return nil
        case .lara: return "https://lara.gob.ve/"
        case .merida: return "https://merida.gob.ve"
        case .miranda: return "http://www.miranda.gob.ve"
        case .monagas: return nil
        case .nueva_esparta: return nil
        case .portuguesa: return "http://portuguesa.gob.ve"
        case .sucre: return nil
        case .tachira: return "http://www.tachira.gob.ve"
        case .trujillo: return nil
        case .yaracuy: return "https://yaracuy.gob.ve"
        case .zulia: return nil
        
        case .capital_district: return "https://www.gdc.gob.ve/sistema/frontend/"
        }
    }
}
