//
//  SubdivisionsLatvia.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public enum SubdivisionsLatvia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Latvia
    case adazi
    case aizkraukle
    case aluksne
    case augsdaugava
    case balvi
    case bauska
    case cesis
    case dobele
    case gulbene
    case jekabpils
    case jelgava
    case kekava
    case kraslava
    case kuldiga
    case limbazi
    case livani
    case ludza
    case madona
    case marupe
    case ogre
    case olaine
    case preili
    case rezekne
    case ropazi
    case salaspils
    case saldus
    case saulkrasti
    case sigulda
    case smiltene
    case south_kurzeme
    case talsi
    case tukums
    case valka
    case valmiera
    case varaklani
    case ventspils
    
    case daugavpils
    case jurmala
    case liepaja
    case rezekne_city
    case riga
    case jelgava_city
    case ventspils_city
    
    public var country : Locale.Region {
        return Locale.Region.latvia
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .daugavpils,
                .jurmala,
                .liepaja,
                .rezekne_city,
                .riga,
                .jelgava_city,
                .ventspils_city:
            return SovereignStateSubdivisionType.cities
        default:
            return SovereignStateSubdivisionType.municipalities
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .daugavpils,
                .jurmala,
                .liepaja,
                .rezekne_city,
                .riga,
                .jelgava_city,
                .ventspils_city:
            return nil
        case .saldus:
            return "_" + type_suffix + "_(2021–present)"
        default:
            return "_" + type_suffix
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .adazi: return "5/51/Ādažu_novada_karogs"
        case .aizkraukle: return "3/39/Aizkraukles_novads_COA"
        case .aluksne: return "5/5e/Flag_of_Alūksnes_novads.png"
        case .augsdaugava: return nil
        case .balvi: return "3/33/Flag_of_Balvu_novads.png"
        case .bauska: return "7/75/Flag_of_Bauskas_novads"
        case .cesis: return "1/1b/Cēsu_novada_ģerbonis"
        case .dobele: return "2/2e/LVA_Dobeles_novads_flag.png"
        case .gulbene: return "0/0e/LVA_Gulbenes_novads_flag.png"
        case .jekabpils: return "6/6a/Jēkabpils_novads_flag.png"
        case .jelgava: return "6/62/Flag_of_Jelgavas_novads.png"
        case .kekava: return "a/ae/Ķekavas_novada_karogs"
        case .kraslava: return "1/1c/Krāslavas_novads_Flag.png"
        case .kuldiga: return "9/9d/Kuldīgas_novads_COA.png"
        case .limbazi: return "4/46/Limbažu_novads_COA.png"
        case .livani: return "2/27/Flag_of_Līvānu_novads.png"
        case .ludza: return "e/e8/Ludzas-novads-Flag.png"
        case .madona: return "8/8d/LVA_Madonas_novads_COA.png"
        case .marupe: return "4/46/LVA_Mārupes_novads_flag.png"
        case .ogre: return "b/b3/Ogres_novads_Flag.png"
        case .olaine: return "d/d0/Olaines_novads_Flag.png"
        case .preili: return "7/72/Flag_of_Preiļu_novads.png"
        case .rezekne: return "2/20/Flag_of_Rēzeknes_novads"
        case .ropazi: return "6/61/Ropažu_novada_karogs"
        case .salaspils: return "b/b5/Flag_of_Salaspils_Municipality.jpg"
        case .saldus: return "a/a3/Flag_of_Saldus_novads.png"
        case .saulkrasti: return "2/2f/Flag_of_Saulkrastu_novads_2010-2021.png"
        case .sigulda: return "5/5a/Siguldas_novads_Flag.png"
        case .smiltene: return "2/20/Smiltenes_novads_Flag.png"
        case .south_kurzeme: return "b/b3/Dienvidkurzemes_novada_ģerbonis"
        case .talsi: return "c/c3/Flag_of_Talsi_Municipality.png"
        case .tukums: return "e/e6/Flag_of_Tukuma_novads.png"
        case .valka: return "e/e1/Flag_of_Valkas_novads.png"
        case .valmiera: return nil
        case .varaklani: return "a/ae/Varakļānu_novads_COA"
        case .ventspils: return "f/f1/Ventspils_novada_karogs"
            
        case .daugavpils: return "1/10/Flag_of_Daugavpils.png"
        case .jurmala: return "6/62/Flag_of_Jurmala"
        case .liepaja: return "a/a5/Flag_of_Liepāja"
        case .rezekne_city: return "8/83/Flag_of_Rēzekne"
        case .riga: return "3/3e/Flag_of_Riga"
        case .jelgava_city: return "1/11/Jelgava_flag"
        case .ventspils_city: return "2/26/Flag_of_Ventspils"
        }
    }
}
