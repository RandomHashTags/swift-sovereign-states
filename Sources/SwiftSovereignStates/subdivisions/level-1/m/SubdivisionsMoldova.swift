//
//  SubdivisionsMoldova.swift
//  
//
//  Created by Evan Anderson on 9/27/22.
//

import Foundation

public enum SubdivisionsMoldova : String, SovereignStateSubdivision {
    case anenii_noi
    case balti
    case basarabeasca
    case bender
    case briceni
    case cahul
    case calarasi
    case cantemir
    case causeni
    case chisinau
    case cimislia
    case criuleni
    case donduseni
    case drochia
    case dubasari
    case edinet
    case falesti
    case floresti
    case glodeni
    case hincesti
    case ialoveni
    case leova
    case nisporeni
    case ocnita
    case orhei
    case rezina
    case riscani
    case singerei
    case soldanesti
    case soroca
    case stefan_voda
    case straseni
    case taraclia
    case telenesti
    case ungheni
    
    case gagauzia
    case left_bank_of_the_dniester // aka Transnistria
    
    public var country : Locale.Region {
        return Locale.Region.moldova
    }
    
    public var type : Locale.Region.SubdivisionType {
        switch self {
        case .balti, .chisinau, .bender:
            return Locale.Region.SubdivisionType.municipalities
        case .gagauzia, .left_bank_of_the_dniester:
            return Locale.Region.SubdivisionType.autonomous_territorial_units
        default:
            return Locale.Region.SubdivisionType.districts
        }
    }
}
