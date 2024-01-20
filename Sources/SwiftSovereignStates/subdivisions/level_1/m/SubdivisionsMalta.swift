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
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.councils
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .attard: return "f/f5/Flag_of_Attard"
        case .balzan: return "d/d4/Flag_of_Balzan"
        case .birgu: return "a/a4/Flag_of_Birgu"
        case .birkirkara: return "d/d9/Flag_of_Birkirkara"
        case .birzebbuga: return "f/f8/Flag_of_Bir%C5%BCebbu%C4%A1a.gif"
        case .cospicua: return "8/80/Flag_of_Cospicua_%28Bormla%29"
        case .dingli: return "b/bf/Flag_of_Dingli"
        case .fgura: return "f/fa/Flag_of_Il-Fgura"
        case .floriana: return "8/80/Flag_of_Floriana"
        case .fontana: return "7/7f/Flag_of_Fontana"
        case .ghajnsielem: return "a/ab/Flag_of_G%C4%A7ajnsielem"
        case .gharb: return "5/59/Flag_of_Gharb"
        case .gharghur: return "2/24/Flag_of_G%C4%A7arg%C4%A7ur"
        case .ghasri: return "b/b2/Flag_of_G%C4%A7asri"
        case .ghaxaq: return "9/99/Flag_of_G%C4%A7axaq"
        case .gudja: return "f/f4/Flag_of_Gudja"
        case .gzira: return "1/14/Flag_of_G%C5%BCira"
        case .hamrun: return "d/d4/Flag_of_Hamrun"
        case .iklin: return "4/4b/Flag_of_Iklin"
        case .kalkara: return "0/07/Flag_of_Kalkara%2C_Malta.gif"
        case .kercem: return "9/90/Flag_of_Kercem"
        case .kirkop: return "c/c8/Flag_of_Kirkop"
        case .lija: return "1/1a/Flag_of_Lija"
        case .luqa: return "a/ac/Flag_of_Luqa"
        case .marsa: return "3/3d/Flag_of_Marsa"
        case .marsaskala: return "d/d4/Flag_of_Marsaskala"
        case .marsaxlokk: return "4/4c/Flag_of_Marsaxlokk"
        case .mdina: return "7/7c/Flag_of_Mdina"
        case .mellieha: return "4/43/Flag_of_Mellie%C4%A7a"
        case .mgarr: return "0/0e/Flag_of_M%C4%A1arr"
        case .mosta: return "8/83/Flag_of_Mosta"
        case .mqabba: return "4/49/Flag_of_Mqabba"
        case .msida: return "5/5a/Flag_of_Msida"
        case .mtarfa: return "1/1c/Flag_of_Mtarfa"
        case .munxar: return "e/e2/Flag_of_Munxar"
        case .nadur: return "b/b1/Flag_of_Nadur"
        case .naxxar: return "9/92/Flag_of_Naxxar"
        case .paola: return "5/54/Flag_of_Paola%2C_Malta.gif"
        case .pembroke: return "8/8a/Flag_of_Pembroke"
        case .pieta: return "a/a8/Flag_of_Piet%C3%A0"
        case .qala: return "6/68/Flag_of_Qala"
        case .qormi: return "a/ab/Flag_of_Qormi"
        case .qrendi: return "c/c6/Flag_of_Qrendi"
        case .rabat: return "f/fd/Flag_of_Rabat"
        case .safi: return "0/07/Flag_of_Safi"
        case .st_julian_s: return "7/78/Flag_of_San_%C4%A0iljan"
        case .st_paul_s_bay: return "b/bd/Flag_of_Saint_Paul%27s_Bay"
        case .san_gwann: return "1/1a/Flag_of_San_%C4%A0wann"
        case .san_lawrenz: return "e/e7/Flag_of_San_Lawrenz"
        case .sannat: return "4/44/Flag_of_Sannat"
        case .santa_lucija: return "9/99/Flag_of_Santa_Lucija"
        case .santa_venera: return "c/c8/Flag_of_Santa_Venera"
        case .senglea: return "2/27/Flag_of_Isla"
        case .siggiewi: return "5/53/Flag_of_Si%C4%A1%C4%A1iewi"
        case .sliema: return "d/de/Flag_of_Sliema"
        case .swieqi: return "1/16/Flag_of_Swieqi"
        case .tarxien: return "e/eb/Flag_of_Tarxien"
        case .valletta: return "0/0e/Flag_of_Valletta%2C_Malta"
        case .victoria: return "5/5f/Flag_of_Victoria%2C_Gozo"
        case .ta__xbiex: return "e/e1/Flag_of_Ta%27_Xbiex"
        case .xaghra: return "a/a6/Flag_of_Xag%C4%A7ra"
        case .xewkija: return "2/2e/Flag_of_Xewkija%2C_Malta"
        case .xghajra: return "4/49/Flag_of_Xg%C4%A7ajra"
        case .zabbar: return "8/81/Flag_of_%C5%BBabbar"
        case .zebbug: return "a/ae/Flag_of_%C5%BBebbu%C4%A1"
        case .zebbug_gozo: return "f/f5/Flag_of_%C5%BBebbu%C4%A1%2C_Gozo"
        case .zejtun: return "f/f3/Flag_of_%C5%BBejtun"
        case .zurrieq: return "3/31/Flag_of_%C5%BBurrieq"
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .fontana,
                .victoria,
                .zebbug_gozo:
            return ",_Gozo"
        case .marsa,
                .paola,
                .pembroke,
                .pieta,
                .qala,
                .rabat,
                .safi,
                .st_julian_s:
            return ",_Malta"
        default:
            return nil
        }
    }
}
