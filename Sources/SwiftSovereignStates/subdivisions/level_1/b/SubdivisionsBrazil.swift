//
//  SubdivisionsBrazil.swift
//  
//
//  Created by Evan Anderson on 7/26/22.
//

import Foundation

public enum SubdivisionsBrazil : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Federative_units_of_Brazil
    case acre
    case alagoas
    case amapa
    case amazonas
    case bahia
    case ceara
    case espirito_santo
    case goias
    case maranhao
    case mato_grosso
    case mato_grosso_do_sul
    case minas_gerais
    case para
    case paraiba
    case parana
    case pernambuco
    case piaui
    case rio_de_janerio
    case rio_grande_do_norte
    case rio_grande_do_sul
    case rondonia
    case roraima
    case santa_catarina
    case sao_paulo
    case sergiepe
    case tocantins
    
    case distrito_federal
    
    public func getCountry() -> Country {
        return Country.brazil
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.states
    }
    
    public func getType() -> SovereignStateSubdivisionType? {
        switch self {
        case .distrito_federal:
            return SovereignStateSubdivisionType.federal_districts
        default:
            return nil
        }
    }
    
    public func getConditionalName() -> String? {
        switch self {
        case .distrito_federal:
            return "Federal District"
        default:
            return nil
        }
    }
    
    
    public func getRealName() -> String? {
        switch self {
        case .amapa: return "Amapá"
        case .ceara: return "Ceará"
        case .espirito_santo: return "Espírito Santo"
        case .goias: return "Goiás"
        case .maranhao: return "Maranhão"
        case .para: return "Pará"
        case .paraiba: return "Paraíba"
        case .parana: return "Paraná"
        case .piaui: return "Piauí"
        case .rondonia: return "Rondônia"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .acre,
                .parana,
                .rio_de_janerio,
                .santa_catarina,
                .sao_paulo:
            return "_(" + getTypeSuffix() + ")"
        case .amazonas:
            return "_(Brazilian_" + getTypeSuffix() + ")"
        case .distrito_federal:
            return "_(Brazil)"
        default:
            return ""
        }
    }
    
    public func getISOAlpha2() -> String? {
        switch self {
        case .acre: return "AC"
        case .alagoas: return "AL"
        case .amapa: return "AP"
        case .amazonas: return "AM"
        case .bahia: return "BA"
        case .ceara: return "CE"
        case .distrito_federal: return "DF"
        case .espirito_santo: return "ES"
        case .goias: return "GO"
        case .maranhao: return "MA"
        case .mato_grosso: return "MT"
        case .mato_grosso_do_sul: return "MS"
        case .minas_gerais: return "MG"
        case .para: return "PA"
        case .paraiba: return "PB"
        case .parana: return "PR"
        case .pernambuco: return "PE"
        case .piaui: return "PI"
        case .rio_de_janerio: return "RJ"
        case .rio_grande_do_norte: return "RN"
        case .rio_grande_do_sul: return "RS"
        case .rondonia: return "RO"
        case .roraima: return "RR"
        case .santa_catarina: return "SC"
        case .sao_paulo: return "SP"
        case .sergiepe: return "SE"
        case .tocantins: return "TO"
        }
    }
    
    public func getNeighbors() -> [any SovereignStateSubdivision]? {
        switch self {
        case .acre:
            return [SubdivisionsBrazil.amazonas, SubdivisionsBrazil.rondonia]
        case .alagoas:
            return [SubdivisionsBrazil.pernambuco, SubdivisionsBrazil.bahia, SubdivisionsBrazil.sergiepe]
        case .amapa:
            return [SubdivisionsBrazil.para]
        case .amazonas:
            return [SubdivisionsBrazil.roraima, SubdivisionsBrazil.para, SubdivisionsBrazil.mato_grosso, SubdivisionsBrazil.rondonia, SubdivisionsBrazil.acre]
        case .bahia:
            return [SubdivisionsBrazil.espirito_santo, SubdivisionsBrazil.minas_gerais, SubdivisionsBrazil.goias, SubdivisionsBrazil.tocantins, SubdivisionsBrazil.maranhao, SubdivisionsBrazil.piaui, SubdivisionsBrazil.pernambuco, SubdivisionsBrazil.alagoas, SubdivisionsBrazil.sergiepe]
        case .ceara:
            return [SubdivisionsBrazil.piaui, SubdivisionsBrazil.pernambuco, SubdivisionsBrazil.paraiba, SubdivisionsBrazil.rio_grande_do_norte]
        case .distrito_federal:
            return [SubdivisionsBrazil.goias, SubdivisionsBrazil.minas_gerais]
        case .espirito_santo:
            return [SubdivisionsBrazil.rio_de_janerio, SubdivisionsBrazil.minas_gerais, SubdivisionsBrazil.bahia]
        case .goias:
            return [SubdivisionsBrazil.distrito_federal, SubdivisionsBrazil.minas_gerais, SubdivisionsBrazil.mato_grosso_do_sul, SubdivisionsBrazil.mato_grosso, SubdivisionsBrazil.tocantins, SubdivisionsBrazil.bahia]
        case .maranhao:
            return [SubdivisionsBrazil.para, SubdivisionsBrazil.tocantins, SubdivisionsBrazil.bahia, SubdivisionsBrazil.piaui]
        case .mato_grosso:
            return [SubdivisionsBrazil.rondonia, SubdivisionsBrazil.amazonas, SubdivisionsBrazil.para, SubdivisionsBrazil.tocantins, SubdivisionsBrazil.goias, SubdivisionsBrazil.mato_grosso_do_sul]
        case .mato_grosso_do_sul:
            return [SubdivisionsBrazil.mato_grosso, SubdivisionsBrazil.goias, SubdivisionsBrazil.minas_gerais, SubdivisionsBrazil.sao_paulo, SubdivisionsBrazil.parana]
        case .minas_gerais:
            return [SubdivisionsBrazil.espirito_santo, SubdivisionsBrazil.rio_de_janerio, SubdivisionsBrazil.sao_paulo, SubdivisionsBrazil.mato_grosso_do_sul, SubdivisionsBrazil.goias, SubdivisionsBrazil.distrito_federal, SubdivisionsBrazil.bahia]
        case .para:
            return [SubdivisionsBrazil.amapa, SubdivisionsBrazil.maranhao, SubdivisionsBrazil.tocantins, SubdivisionsBrazil.mato_grosso, SubdivisionsBrazil.amazonas, SubdivisionsBrazil.roraima]
        case .paraiba:
            return [SubdivisionsBrazil.rio_grande_do_norte, SubdivisionsBrazil.ceara, SubdivisionsBrazil.pernambuco]
        case .parana:
            return [SubdivisionsBrazil.santa_catarina, SubdivisionsBrazil.sao_paulo, SubdivisionsBrazil.mato_grosso_do_sul]
        case .pernambuco:
            return [SubdivisionsBrazil.paraiba, SubdivisionsBrazil.ceara, SubdivisionsBrazil.piaui, SubdivisionsBrazil.bahia, SubdivisionsBrazil.alagoas]
        case .piaui:
            return [SubdivisionsBrazil.maranhao, SubdivisionsBrazil.tocantins, SubdivisionsBrazil.bahia, SubdivisionsBrazil.pernambuco, SubdivisionsBrazil.ceara]
        case .rio_de_janerio:
            return [SubdivisionsBrazil.espirito_santo, SubdivisionsBrazil.minas_gerais, SubdivisionsBrazil.sao_paulo]
        case .rio_grande_do_norte:
            return [SubdivisionsBrazil.ceara, SubdivisionsBrazil.paraiba]
        case .rio_grande_do_sul:
            return [SubdivisionsBrazil.santa_catarina]
        case .rondonia:
            return [SubdivisionsBrazil.acre, SubdivisionsBrazil.amazonas, SubdivisionsBrazil.mato_grosso]
        case .roraima:
            return [SubdivisionsBrazil.amazonas, SubdivisionsBrazil.para]
        case .santa_catarina:
            return [SubdivisionsBrazil.parana, SubdivisionsBrazil.rio_grande_do_sul]
        case .sao_paulo:
            return [SubdivisionsBrazil.parana, SubdivisionsBrazil.mato_grosso_do_sul, SubdivisionsBrazil.minas_gerais, SubdivisionsBrazil.rio_de_janerio]
        case .sergiepe:
            return [SubdivisionsBrazil.bahia, SubdivisionsBrazil.alagoas]
        case .tocantins:
            return [SubdivisionsBrazil.para, SubdivisionsBrazil.mato_grosso, SubdivisionsBrazil.goias, SubdivisionsBrazil.bahia, SubdivisionsBrazil.piaui, SubdivisionsBrazil.maranhao]
        }
    }
}
