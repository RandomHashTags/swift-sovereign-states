//
//  SubdivisionsIceland.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public enum SubdivisionsIceland : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Municipalities_of_Iceland
    case akrahreppur
    case akranes
    case akureyri
    case arborg
    case arneshreppur
    case asahreppur
    case blaskogabyggo
    case bolungarvik
    case borgarbyggo
    case dalabyggo
    case dalvikurbyggo
    case eyja__og_miklaholtshreppur
    case eyjafjaroarsveit
    case fjallabyggo
    case fjaroabyggo
    case fljotsdalshreppur
    case floahreppur
    case garoabaer
    case grimsnes__og_grafningshreppur
    case grindavikurbaer
    case grundarfjaroarbaer
    case grytubakkahreppur
    case hafnarfjorour
    case helgafellssveit
    case horgarsveit
    case hornafjorour
    case hrunamannahreppur
    case hunabyggo
    case hunathing_vestra
    case hvalfjaroarsveit
    case hverageroi
    case isafjaroarbaer
    case kaldrananeshreppur
    case kjosarhreppur
    case kopavogur
    case langanesbyggo
    case mosfellsbaer
    case mulathing
    case myrdalshreppur
    case norourthing
    case olfus
    case rangarthing_eystra
    case rangarthing_ytra
    case reykholahreppur
    case reykjanesbaer
    case reykjavik
    case seltjarnarnes
    case skaftarhreppur
    case skagabyggo
    case skagafjorour
    case skagastrond
    case skeioa__og_gnupverjahreppur
    case skorradalshreppur
    case skutustaoahreppur
    case snaefellsbaer
    case strandabyggo
    case stykkisholmur
    case suoavikurhreppur
    case suournesjabaer
    case svalbaroshreppur
    case svalbarosstrandarhreppur
    case talknafjaroarhreppur
    case thingeyjarsveit
    case tjorneshreppur
    case vestmannaeyjar
    case vesturbyggo
    case vogar
    case vopnafjaroarhreppur
    
    public var country : Locale.Region {
        return Locale.Region.iceland
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.municipalities
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .vogar:
            return "_(" + type_suffix.lowercased() + ")"
        default:
            return nil
        }
    }
}
