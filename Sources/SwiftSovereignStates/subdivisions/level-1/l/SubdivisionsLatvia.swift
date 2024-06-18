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
}
