//
//  SubdivisionsIceland.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public enum SubdivisionsIceland : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Municipalities_of_Iceland
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
    
    public func getCountry() -> Country {
        return Country.iceland
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.municipalities
    }
    
    public func getRealName() -> String? {
        switch self {
        case .arborg: return "Árborg"
        case .arneshreppur: return "Árneshreppur"
        case .asahreppur: return "Ásahreppur"
        case .blaskogabyggo: return "Bláskógabyggð"
        case .bolungarvik: return "Bolungarvík"
        case .borgarbyggo: return "Borgarbyggð"
        case .dalabyggo: return "Dalabyggð"
        case .dalvikurbyggo: return "Dalvíkurbyggð"
        case .eyja__og_miklaholtshreppur: return "Eyja- og Miklaholtshreppur"
        case .eyjafjaroarsveit: return "Eyjafjarðarsveit"
        case .fjallabyggo: return "Fjallabyggð"
        case .fjaroabyggo: return "Fjarðabyggð"
        case .fljotsdalshreppur: return "Fljótsdalshreppur"
        case .floahreppur: return "Flóahreppur"
        case .garoabaer: return "Garðabær"
        case .grimsnes__og_grafningshreppur: return "Grímsnes- og Grafningshreppur"
        case .grindavikurbaer: return "Grindavíkurbær"
        case .grundarfjaroarbaer: return "Grundarfjarðarbær"
        case .grytubakkahreppur: return "Grýtubakkahreppur"
        case .hafnarfjorour: return "Hafnarfjörður"
        case .horgarsveit: return "Hörgársveit"
        case .hornafjorour: return "Hornafjörður"
        case .hunabyggo: return "Húnabyggð"
        case .hunathing_vestra: return "Húnaþing vestra"
        case .hvalfjaroarsveit: return "Hvalfjarðarsveit"
        case .hverageroi: return "Hveragerði"
        case .isafjaroarbaer: return "Ísafjarðarbær"
        case .kjosarhreppur: return "Kjósarhreppur"
        case .kopavogur: return "Kópavogur"
        case .langanesbyggo: return "Langanesbyggð"
        case .mosfellsbaer: return "Mosfellsbær"
        case .mulathing: return "Múlaþing"
        case .myrdalshreppur: return "Mýrdalshreppur"
        case .norourthing: return "Norðurþing"
        case .olfus: return "Ölfus"
        case .rangarthing_eystra: return "Rangárþing eystra"
        case .rangarthing_ytra: return "Rangárþing ytra"
        case .reykholahreppur: return "Reykhólahreppur"
        case .reykjanesbaer: return "Reykjanesbær"
        case .reykjavik: return "Reykjavík"
        case .skaftarhreppur: return "Skaftárhreppur"
        case .skagabyggo: return "Skagabyggð"
        case .skagafjorour: return "Skagafjörður"
        case .skagastrond: return "Skagaströnd"
        case .skeioa__og_gnupverjahreppur: return "Skeiða- og Gnúpverjahreppur"
        case .skutustaoahreppur: return "Skútustaðahreppur"
        case .snaefellsbaer: return "Snæfellsbær"
        case .strandabyggo: return "Strandabyggð"
        case .stykkisholmur: return "Stykkishólmur"
        case .suoavikurhreppur: return "Súðavíkurhreppur"
        case .suournesjabaer: return "Suðurnesjabær"
        case .svalbaroshreppur: return "Svalbarðshreppur"
        case .svalbarosstrandarhreppur: return "Svalbarðsstrandarhreppur"
        case .talknafjaroarhreppur: return "Tálknafjarðarhreppur"
        case .thingeyjarsveit: return "Þingeyjarsveit"
        case .tjorneshreppur: return "Tjörneshreppur"
        case .vesturbyggo: return "Vesturbyggð"
        case .vopnafjaroarhreppur: return "Vopnafjarðarhreppur"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .vogar:
            return "_(" + getTypeSuffix().lowercased() + ")"
        default:
            return nil
        }
    }
}
