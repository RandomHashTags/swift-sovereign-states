//
//  SubdivisionsMexico.swift
//  
//
//  Created by Evan Anderson on 7/6/22.
//

import Foundation

public enum SubdivisionsMexico : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Mexico
    case aguascalientes
    case baja_california
    case baja_california_sur
    case campeche
    case chiapas
    case chihuahua
    case coahuila
    case colima
    case mexico_city
    case durango
    case guanajuato
    case guerrero
    case hidalgo
    case jalisco
    case mexico
    case michoacan
    case morelos
    case nayarit
    case nuevo_leon
    case oaxaca
    case puebla
    case queretaro
    case quintana_roo
    case san_luis_potosi
    case sinaloa
    case sonora
    case tabasco
    case tamaulipas
    case tlaxcala
    case veracruz
    case yucatan
    case zacatecas
    
    public var country : Locale.Region {
        return Locale.Region.mexico
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .mexico_city:
            return SovereignStateSubdivisionType.federal_entities
        default:
            return SovereignStateSubdivisionType.states
        }
    }
    
    public var wikipediaURLPrefix : String? {
        switch self {
        case .mexico:
            return "State_of_"
        default:
            return nil
        }
    }
    public var wikipediaURLSuffix : String? {
        switch self {
        case .chihuahua,
                .hidalgo:
            return "_(" + type_suffix.lowercased() + ")"
        default:
            return nil
        }
    }
    
    public var isoAlpha2 : String? {
        switch self {
        case .aguascalientes: return "AG"
        case .baja_california: return "BC"
        case .baja_california_sur: return "BS"
        case .campeche: return "CM"
        case .chiapas: return "CS"
        case .chihuahua: return "CH"
        case .coahuila: return "CO"
        case .colima: return "CL"
        case .durango: return "DG"
        case .guanajuato: return "GT"
        case .guerrero: return "GR"
        case .hidalgo: return "HG"
        case .jalisco: return "JA"
        case .mexico: return "EM"
        case .mexico_city: return "DF"
        case .michoacan: return "MI"
        case .morelos: return "MO"
        case .nayarit: return "NA"
        case .nuevo_leon: return "NL"
        case .oaxaca: return "OA"
        case .puebla: return "PU"
        case .queretaro: return "QT"
        case .quintana_roo: return "QR"
        case .san_luis_potosi: return "SL"
        case .sinaloa: return "SI"
        case .sonora: return "SO"
        case .tabasco: return "TB"
        case .tamaulipas: return "TM"
        case .tlaxcala: return "TL"
        case .veracruz: return "VE"
        case .yucatan: return "YU"
        case .zacatecas: return "ZA"
        }
    }
    
    public var isoAlpha3 : String? {
        switch self {
        case .aguascalientes: return "AGU"
        case .baja_california: return "BCN"
        case .baja_california_sur: return "BCS"
        case .campeche: return "CAM"
        case .chiapas: return "CHP"
        case .chihuahua: return "CHH"
        case .coahuila: return "COA"
        case .colima: return "COL"
        case .durango: return "DUR"
        case .guanajuato: return "GUA"
        case .guerrero: return "GRO"
        case .hidalgo: return "HID"
        case .jalisco: return "JAL"
        case .mexico: return "MEX"
        case .mexico_city: return "CMX"
        case .michoacan: return "MIC"
        case .morelos: return "MOR"
        case .nayarit: return "NAY"
        case .nuevo_leon: return "NLE"
        case .oaxaca: return "OAX"
        case .puebla: return "PUE"
        case .queretaro: return "QUE"
        case .quintana_roo: return "ROO"
        case .san_luis_potosi: return "SLP"
        case .sinaloa: return "SIN"
        case .sonora: return "SON"
        case .tabasco: return "TAB"
        case .tamaulipas: return "TAM"
        case .tlaxcala: return "TLA"
        case .veracruz: return "VER"
        case .yucatan: return "YUC"
        case .zacatecas: return "ZAC"
        }
    }
    
    public var timeZones : [SovereignStateTimeZone]? {
        let centralStandardTime:SovereignStateTimeZone = SovereignStateTimeZone.america_central_standard_time
        let mountainStandardTime:SovereignStateTimeZone = SovereignStateTimeZone.america_mountain_standard_time
        switch self {
        case .aguascalientes: return [centralStandardTime]
        case .baja_california: return [SovereignStateTimeZone.america_pacific_standard_time]
        case .baja_california_sur: return [mountainStandardTime]
        case .campeche: return [centralStandardTime]
        case .chiapas: return [centralStandardTime]
        case .chihuahua: return [mountainStandardTime]
        case .coahuila: return [centralStandardTime]
        case .colima: return [centralStandardTime]
        case .durango: return [centralStandardTime]
        case .guanajuato: return [centralStandardTime]
        case .guerrero: return [centralStandardTime]
        case .hidalgo: return [centralStandardTime]
        case .jalisco: return [centralStandardTime]
        case .mexico: return [centralStandardTime]
        case .mexico_city: return [centralStandardTime]
        case .michoacan: return [centralStandardTime]
        case .morelos: return [centralStandardTime]
        case .nayarit: return [mountainStandardTime, centralStandardTime]
        case .nuevo_leon: return [centralStandardTime]
        case .oaxaca: return [centralStandardTime]
        case .puebla: return [centralStandardTime]
        case .queretaro: return [centralStandardTime]
        case .quintana_roo: return [SovereignStateTimeZone.eastern_time]
        case .san_luis_potosi: return [centralStandardTime]
        case .sinaloa: return [mountainStandardTime]
        case .sonora: return [SovereignStateTimeZone.mountain_standard_time]
        case .tabasco: return [centralStandardTime]
        case .tamaulipas: return [centralStandardTime]
        case .tlaxcala: return [centralStandardTime]
        case .veracruz: return [centralStandardTime]
        case .yucatan: return [centralStandardTime]
        case .zacatecas: return [centralStandardTime]
        }
    }
}
