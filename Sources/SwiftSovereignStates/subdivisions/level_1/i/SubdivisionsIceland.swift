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
        case .arborg: return "??rborg"
        case .arneshreppur: return "??rneshreppur"
        case .asahreppur: return "??sahreppur"
        case .blaskogabyggo: return "Bl??sk??gabygg??"
        case .bolungarvik: return "Bolungarv??k"
        case .borgarbyggo: return "Borgarbygg??"
        case .dalabyggo: return "Dalabygg??"
        case .dalvikurbyggo: return "Dalv??kurbygg??"
        case .eyja__og_miklaholtshreppur: return "Eyja- og Miklaholtshreppur"
        case .eyjafjaroarsveit: return "Eyjafjar??arsveit"
        case .fjallabyggo: return "Fjallabygg??"
        case .fjaroabyggo: return "Fjar??abygg??"
        case .fljotsdalshreppur: return "Flj??tsdalshreppur"
        case .floahreppur: return "Fl??ahreppur"
        case .garoabaer: return "Gar??ab??r"
        case .grimsnes__og_grafningshreppur: return "Gr??msnes- og Grafningshreppur"
        case .grindavikurbaer: return "Grindav??kurb??r"
        case .grundarfjaroarbaer: return "Grundarfjar??arb??r"
        case .grytubakkahreppur: return "Gr??tubakkahreppur"
        case .hafnarfjorour: return "Hafnarfj??r??ur"
        case .horgarsveit: return "H??rg??rsveit"
        case .hornafjorour: return "Hornafj??r??ur"
        case .hunabyggo: return "H??nabygg??"
        case .hunathing_vestra: return "H??na??ing vestra"
        case .hvalfjaroarsveit: return "Hvalfjar??arsveit"
        case .hverageroi: return "Hverager??i"
        case .isafjaroarbaer: return "??safjar??arb??r"
        case .kjosarhreppur: return "Kj??sarhreppur"
        case .kopavogur: return "K??pavogur"
        case .langanesbyggo: return "Langanesbygg??"
        case .mosfellsbaer: return "Mosfellsb??r"
        case .mulathing: return "M??la??ing"
        case .myrdalshreppur: return "M??rdalshreppur"
        case .norourthing: return "Nor??ur??ing"
        case .olfus: return "??lfus"
        case .rangarthing_eystra: return "Rang??r??ing eystra"
        case .rangarthing_ytra: return "Rang??r??ing ytra"
        case .reykholahreppur: return "Reykh??lahreppur"
        case .reykjanesbaer: return "Reykjanesb??r"
        case .reykjavik: return "Reykjav??k"
        case .skaftarhreppur: return "Skaft??rhreppur"
        case .skagabyggo: return "Skagabygg??"
        case .skagafjorour: return "Skagafj??r??ur"
        case .skagastrond: return "Skagastr??nd"
        case .skeioa__og_gnupverjahreppur: return "Skei??a- og Gn??pverjahreppur"
        case .skutustaoahreppur: return "Sk??tusta??ahreppur"
        case .snaefellsbaer: return "Sn??fellsb??r"
        case .strandabyggo: return "Strandabygg??"
        case .stykkisholmur: return "Stykkish??lmur"
        case .suoavikurhreppur: return "S????av??kurhreppur"
        case .suournesjabaer: return "Su??urnesjab??r"
        case .svalbaroshreppur: return "Svalbar??shreppur"
        case .svalbarosstrandarhreppur: return "Svalbar??sstrandarhreppur"
        case .talknafjaroarhreppur: return "T??lknafjar??arhreppur"
        case .thingeyjarsveit: return "??ingeyjarsveit"
        case .tjorneshreppur: return "Tj??rneshreppur"
        case .vesturbyggo: return "Vesturbygg??"
        case .vopnafjaroarhreppur: return "Vopnafjar??arhreppur"
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
