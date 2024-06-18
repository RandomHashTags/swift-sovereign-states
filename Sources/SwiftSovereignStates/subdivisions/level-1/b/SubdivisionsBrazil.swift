//
//  SubdivisionsBrazil.swift
//  
//
//  Created by Evan Anderson on 7/26/22.
//

import Foundation

public enum SubdivisionsBrazil : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Federative_units_of_Brazil
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
    case rio_de_janeiro
    case rio_grande_do_norte
    case rio_grande_do_sul
    case rondonia
    case roraima
    case santa_catarina
    case sao_paulo
    case sergipe
    case tocantins
    
    case distrito_federal
    
    public var country : Locale.Region {
        return Locale.Region.brazil
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .distrito_federal:
            return SovereignStateSubdivisionType.federal_districts
        default:
            return SovereignStateSubdivisionType.states
        }
    }
    
    public var wikipediaName : String? {
        switch self {
        case .distrito_federal:
            return "Federal District"
        default:
            return nil
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .acre,
                .parana,
                .rio_de_janeiro,
                .santa_catarina,
                .sao_paulo:
            return "_(" + type_suffix.lowercased() + ")"
        case .amazonas:
            return "_(Brazilian_" + type_suffix.lowercased() + ")"
        case .distrito_federal:
            return "_(Brazil)"
        default:
            return nil
        }
    }
    
    public var isoAlpha2 : String? {
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
        case .rio_de_janeiro: return "RJ"
        case .rio_grande_do_norte: return "RN"
        case .rio_grande_do_sul: return "RS"
        case .rondonia: return "RO"
        case .roraima: return "RR"
        case .santa_catarina: return "SC"
        case .sao_paulo: return "SP"
        case .sergipe: return "SE"
        case .tocantins: return "TO"
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .acre: return "4/4c/Bandeira_do_Acre"
        case .alagoas: return "8/88/Bandeira_de_Alagoas"
        case .amapa: return "0/0c/Bandeira_do_Amapá"
        case .amazonas: return "6/6b/Bandeira_do_Amazonas"
        case .bahia: return "2/28/Bandeira_da_Bahia"
        case .ceara: return "2/2e/Bandeira_do_Ceará"
        case .espirito_santo: return "4/43/Bandeira_do_Esp%C3%ADrito_Santo"
        case .goias: return "b/be/Flag_of_Goiás"
        case .maranhao: return "4/45/Bandeira_do_Maranhão"
        case .mato_grosso: return "0/0b/Bandeira_de_Mato_Grosso"
        case .mato_grosso_do_sul: return "6/64/Bandeira_de_Mato_Grosso_do_Sul"
        case .minas_gerais: return "f/f4/Bandeira_de_Minas_Gerais"
        case .para: return "0/02/Bandeira_do_Pará"
        case .paraiba: return "b/bb/Bandeira_da_Para%C3%ADba"
        case .parana: return "9/93/Bandeira_do_Paraná"
        case .pernambuco: return "5/59/Bandeira_de_Pernambuco"
        case .piaui: return "3/33/Bandeira_do_Piau%C3%AD"
        case .rio_de_janeiro: return "7/73/Bandeira_do_estado_do_Rio_de_Janeiro"
        case .rio_grande_do_norte: return "3/30/Bandeira_do_Rio_Grande_do_Norte"
        case .rio_grande_do_sul: return "6/63/Bandeira_do_Rio_Grande_do_Sul"
        case .rondonia: return "f/fa/Bandeira_de_Rondônia"
        case .roraima: return "9/98/Bandeira_de_Roraima"
        case .santa_catarina: return "1/1a/Bandeira_de_Santa_Catarina"
        case .sao_paulo: return "2/2b/Bandeira_do_estado_de_São_Paulo"
        case .sergipe: return "b/be/Bandeira_de_Sergipe"
        case .tocantins: return "f/ff/Bandeira_do_Tocantins"
            
        case .distrito_federal: return "3/3c/Bandeira_do_Distrito_Federal_%28Brasil%29"
        }
    }
    
    public var neighbors : [any SovereignStateSubdivision] {
        switch self {
        case .acre:
            return [SubdivisionsBrazil.amazonas, SubdivisionsBrazil.rondonia]
        case .alagoas:
            return [SubdivisionsBrazil.pernambuco, SubdivisionsBrazil.bahia, SubdivisionsBrazil.sergipe]
        case .amapa:
            return [SubdivisionsBrazil.para]
        case .amazonas:
            return [SubdivisionsBrazil.roraima, SubdivisionsBrazil.para, SubdivisionsBrazil.mato_grosso, SubdivisionsBrazil.rondonia, SubdivisionsBrazil.acre]
        case .bahia:
            return [SubdivisionsBrazil.espirito_santo, SubdivisionsBrazil.minas_gerais, SubdivisionsBrazil.goias, SubdivisionsBrazil.tocantins, SubdivisionsBrazil.maranhao, SubdivisionsBrazil.piaui, SubdivisionsBrazil.pernambuco, SubdivisionsBrazil.alagoas, SubdivisionsBrazil.sergipe]
        case .ceara:
            return [SubdivisionsBrazil.piaui, SubdivisionsBrazil.pernambuco, SubdivisionsBrazil.paraiba, SubdivisionsBrazil.rio_grande_do_norte]
        case .distrito_federal:
            return [SubdivisionsBrazil.goias, SubdivisionsBrazil.minas_gerais]
        case .espirito_santo:
            return [SubdivisionsBrazil.rio_de_janeiro, SubdivisionsBrazil.minas_gerais, SubdivisionsBrazil.bahia]
        case .goias:
            return [SubdivisionsBrazil.distrito_federal, SubdivisionsBrazil.minas_gerais, SubdivisionsBrazil.mato_grosso_do_sul, SubdivisionsBrazil.mato_grosso, SubdivisionsBrazil.tocantins, SubdivisionsBrazil.bahia]
        case .maranhao:
            return [SubdivisionsBrazil.para, SubdivisionsBrazil.tocantins, SubdivisionsBrazil.bahia, SubdivisionsBrazil.piaui]
        case .mato_grosso:
            return [SubdivisionsBrazil.rondonia, SubdivisionsBrazil.amazonas, SubdivisionsBrazil.para, SubdivisionsBrazil.tocantins, SubdivisionsBrazil.goias, SubdivisionsBrazil.mato_grosso_do_sul]
        case .mato_grosso_do_sul:
            return [SubdivisionsBrazil.mato_grosso, SubdivisionsBrazil.goias, SubdivisionsBrazil.minas_gerais, SubdivisionsBrazil.sao_paulo, SubdivisionsBrazil.parana]
        case .minas_gerais:
            return [SubdivisionsBrazil.espirito_santo, SubdivisionsBrazil.rio_de_janeiro, SubdivisionsBrazil.sao_paulo, SubdivisionsBrazil.mato_grosso_do_sul, SubdivisionsBrazil.goias, SubdivisionsBrazil.distrito_federal, SubdivisionsBrazil.bahia]
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
        case .rio_de_janeiro:
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
            return [SubdivisionsBrazil.parana, SubdivisionsBrazil.mato_grosso_do_sul, SubdivisionsBrazil.minas_gerais, SubdivisionsBrazil.rio_de_janeiro]
        case .sergipe:
            return [SubdivisionsBrazil.bahia, SubdivisionsBrazil.alagoas]
        case .tocantins:
            return [SubdivisionsBrazil.para, SubdivisionsBrazil.mato_grosso, SubdivisionsBrazil.goias, SubdivisionsBrazil.bahia, SubdivisionsBrazil.piaui, SubdivisionsBrazil.maranhao]
        }
    }
}
