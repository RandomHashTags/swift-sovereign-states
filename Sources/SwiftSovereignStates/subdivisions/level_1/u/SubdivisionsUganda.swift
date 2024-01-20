//
//  SubdivisionsUganda.swift
//  
//
//  Created by Evan Anderson on 2/14/23.
//

import Foundation

public enum SubdivisionsUganda : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_Uganda
    case abim
    case adjumani
    case agago
    case alebtong
    case amolatar
    case amudat
    case amuria
    case amuru
    case apac
    case arua
    case budaka
    case bududa
    case bugiri
    case bugweri
    case buhweju
    case buikwe
    case bukedea
    case bukomansimbi
    case bukwa
    case bulambuli
    case buliisa
    case bundibugyo
    case bunyangabu
    case bushenyi
    case busia
    case butaleja
    case butambala
    case butebo
    case buvuma
    case buyende
    case dokolo
    case gomba
    case gulu
    case hoima
    case ibanda
    case iganga
    case isingiro
    case jinja
    case kaabong
    case kabale
    case kabarole
    case kaberamaido
    case kagadi
    case kakumiro
    case kalaki
    case kalangala
    case kaliro
    case kalungu
    case kampala
    case kamuli
    case kamwenge
    case kanungu
    case kapchorwa
    case kapelebyong
    case karenga
    case kasanda
    case kasese
    case katakwi
    case kayunga
    case kazo
    case kibaale
    case kiboga
    case kibuku
    case kikuube
    case kiruhura
    case kiryandongo
    case kisoro
    case kitagwenda
    case kitgum
    case koboko
    case kole
    case kotido
    case kumi
    case kwania
    case kween
    case kyankwanzi
    case kyegegwa
    case kyenjojo
    case kyotera
    case lamwo
    case lira
    case luuka
    case luweero
    case lwengo
    case lyantonde
    case madi_okollo
    case manafwa
    case maracha
    case masaka
    case masindi
    case mayuge
    case mbale
    case mbarara
    case mitooma
    case mityana
    case moroto
    case moyo
    case mpigi
    case mubende
    case mukono
    case nabilatuk
    case nakapiripirit
    case nakaseke
    case nakasongola
    case namayingo
    case namisindwa
    case namutumba
    case napak
    case nebbi
    case ngora
    case ntoroko
    case ntungamo
    case nwoya
    case obongi
    case omoro
    case otuke
    case oyam
    case pader
    case pakwach
    case pallisa
    case rakai
    case rubanda
    case rubirizi
    case rukiga
    case rukungiri
    case rwampara
    case sembabule
    case serere
    case sheema
    case sironko
    case soroti
    case terego
    case tororo
    case wakiso
    case yumbe
    case zombo
    
    public var country : Locale.Region {
        return Locale.Region.uganda
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .kampala:
            return SovereignStateSubdivisionType.cities
        default:
            return SovereignStateSubdivisionType.districts
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .busia:
            return "_" + type_suffix + ",_Uganda"
        case .kampala:
            return nil
        default:
            return "_" + type_suffix
        }
    }
}
