//
//  SubdivisionsAzerbaijan.swift
//  
//
//  Created by Evan Anderson on 7/26/22.
//

import Foundation

public enum SubdivisionsAzerbaijan : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Azerbaijan
    case absheron
    case agdam
    case agdash
    case aghjabadi
    case agstafa
    case agsu
    case astara
    case baku
    case balakan
    case barda
    case beylagan
    case bilasuvar
    case dashkasan
    case fuzuli
    case gadabay
    case ganja
    case gobustan
    case goranboy
    case goychay
    case goygol
    case hajigabul
    case imishli
    case ismayilli
    case jabrayil
    case jalilabad
    case kalbajar
    case khachmaz
    case khankendi
    case khizi
    case khojaly
    case khojavend
    case kurdamir
    case lachin
    case lankaran
    case lerik
    case masally
    case mingachevir
    case naftalan
    case neftchala
    case oghuz
    case qabala
    case qakh
    case qazakh
    case quba
    case qubadli
    case qusar
    case saatly
    case sabirabad
    case salyan
    case samukh
    case shabran
    case shaki_city
    case shaki_district
    case shirvan
    case shusha
    case siyazan
    case sumqayit
    case tartar
    case tovuz
    case ujar
    case yardimli
    case yevlakh_city
    case yevlakh_district
    case zangilan
    case zaqatala
    case zardab
    
    case babek
    case julfa
    case kangarli
    case nakhchivan
    case ordubad
    case sadarak
    case shahbuz
    case sharur
    
    public var country : Locale.Region {
        return Locale.Region.azerbaijan
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .baku,
                .ganja,
                .khankendi,
                .lankaran,
                .mingachevir,
                .naftalan,
                .shaki_city,
                .shirvan,
                .sumqayit,
                .yevlakh_city:
            return SovereignStateSubdivisionType.cities
        default:
            return SovereignStateSubdivisionType.districts
        }
    }
    
    public var wikipediaName : String? {
        switch self {
        case .shaki_city, .shaki_district:
            return "Shaki"
        case .shirvan:
            return "Şirvan"
        case .yevlakh_city, .yevlakh_district:
            return "Yevlakh"
        default:
            return nil
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .baku,
                .khankendi,
                .lankaran,
                .mingachevir,
                .sumqayit,
                .yevlakh_city:
            return nil
        case .ganja,
                .naftalan,
                .shaki_city,
                .shirvan:
            return ",_Azerbaijan"
        case .nakhchivan:
            return "_(city)"
        case .jalilabad,
                .quba,
                .salyan:
            return "_" + type_suffix + "_(Azerbaijan)"
        default:
            return "_" + type_suffix
        }
    }
    
    public var isoAlpha2 : String? {
        switch self {
        case .absheron: return "ABS"
        case .agdam: return "AGM"
        case .agdash: return "AGS"
        case .aghjabadi: return "AGC"
        case .agstafa: return "AGA"
        case .agsu: return "AGU"
        case .astara: return "AST"
        case .babek: return "BAB"
        case .baku: return "BA"
        case .balakan: return "BAL"
        case .barda: return "BAR"
        case .beylagan: return "BEY"
        case .bilasuvar: return "BIL"
        case .dashkasan: return "DAS"
        case .fuzuli: return "FUZ"
        case .gadabay: return "GAD"
        case .ganja: return "GA"
        case .gobustan: return "QOB"
        case .goranboy: return "GOR"
        case .goychay: return "GOY"
        case .goygol: return "GYG"
        case .hajigabul: return "HAC"
        case .imishli: return "IMI"
        case .ismayilli: return "ISM"
        case .jabrayil: return "CAB"
        case .julfa: return "CUL"
        case .kalbajar: return "KAL"
        case .kangarli: return "KAN"
        case .khachmaz: return "XAC"
        case .khizi: return "XIZ"
        case .khojaly: return "XCI"
        case .khojavend: return "XVD"
        case .kurdamir: return "KUR"
        case .lachin: return "LAC"
        case .lankaran: return "LA"
        //case LANKARAN: return "LAN"
        case .lerik: return "LER"
        case .masally: return "MAS"
        case .mingachevir: return "MI"
        case .naftalan: return "NA"
        case .nakhchivan: return "NV"
        case .neftchala: return "NEF"
        case .oghuz: return "OGU"
        case .ordubad: return "ORD"
        case .qakh: return "QAX"
        case .qazakh: return "QAZ"
        //case QBALA: return "QAB"
        case .quba: return "QBA"
        case .qubadli: return "QBI"
        case .qusar: return "QUS"
        case .saatly: return "SAT"
        case .sabirabad: return "SAB"
        case .sadarak: return "SAD"
        case .salyan: return "SAL"
        case .samukh: return "SMX"
        case .shabran: return "SBN"
        case .shahbuz: return "SAH"
        case .shaki_city: return "SA"
        case .shaki_district: return "SAK"
        //case SHAMAKHI: return "SMI"
        //case SHAMKIR: return "SKR"
        case .sharur: return "SAR"
        case .shirvan: return "SR"
        case .shusha: return "SUS"
        //case SIAZAN: return "SIY"
        //case STEPANAKERT: return "XA"
        case .sumqayit: return "SM"
        case .tartar: return "TAR"
        case .tovuz: return "TOV"
        case .ujar: return "UCA"
        case .yardimli: return "YAR"
        case .yevlakh_city: return "YE"
        case .yevlakh_district: return "YEV"
        case .zangilan: return "ZAN"
        case .zaqatala: return "ZAQ"
        case .zardab: return "ZAR"
        default: return nil
        }
    }
}
