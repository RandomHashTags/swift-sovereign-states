//
//  SubdivisionsMalta.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public enum SubdivisionsMalta : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Local_councils_of_Malta
    case attard
    case balzan
    case birgu
    case birkirkara
    case birzebbuga
    case cospicua
    case dingli
    case fgura
    case floriana
    case fontana
    case ghajnsielem
    case gharb
    case gharghur
    case ghasri
    case ghaxaq
    case gudja
    case gzira
    case hamrun
    case iklin
    case kalkara
    case kercem
    case kirkop
    case lija
    case luqa
    case marsa
    case marsaskala
    case marsaxlokk
    case mdina
    case mellieha
    case mgarr
    case mosta
    case mqabba
    case msida
    case mtarfa
    case munxar
    case nadur
    case naxxar
    case paola
    case pembroke
    case pieta
    case qala
    case qormi
    case qrendi
    case rabat
    case safi
    case san_gwann
    case san_lawrenz
    case sannat
    case santa_lucija
    case santa_venera
    case senglea
    case siggiewi
    case sliema
    case st_julian_s
    case st_paul_s_bay
    case swieqi
    case ta__xbiex
    case tarxien
    case valletta
    case victoria
    case xaghra
    case xewkija
    case xghajra
    case zabbar
    case zebbug
    case zebbug_gozo
    case zejtun
    case zurrieq
    
    public var country : Locale.Region {
        return Locale.Region.malta
    }
    
    public var type : Locale.Region.SubdivisionType {
        return Locale.Region.SubdivisionType.councils
    }
}
