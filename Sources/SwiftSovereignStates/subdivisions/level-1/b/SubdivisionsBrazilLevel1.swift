//
//  SubdivisionsBrazilLevel1.swift
//  
//
//  Created by Evan Anderson on 7/26/22.
//

import Foundation

public typealias SubdivisionsBrazilLevel1 = Locale.Region.Subdivision.Level1.Brazil

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.brazil, allSameType: false, type: Locale.Region.SubdivisionType.state)
    struct Brazil : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .distrito_federal:
                return Locale.Region.SubdivisionType.federalDistrict
            default:
                return Locale.Region.SubdivisionType.state
            }
        }
    }
}

public extension SubdivisionsBrazilLevel1 { // https://en.wikipedia.org/wiki/Federative_units_of_Brazil | https://en.wikipedia.org/wiki/ISO_3166-2:BR
    static let acre = get("AC")
    static let alagoas = get("AL")
    static let amapa = get("AP")
    static let amazonas = get("AM")
    static let bahia = get("BA")
    static let ceara = get("CE")
    static let distrito_federal = get("DF")
    static let espirito_santo = get("ES")
    static let goias = get("GO")
    static let maranhao = get("MA")
    static let mato_grosso = get("MT")
    static let mato_grosso_do_sul = get("MS")
    static let minas_gerais = get("MG")
    static let para = get("PA")
    static let paraiba = get("PB")
    static let parana = get("PR")
    static let pernambuco = get("PE")
    static let piaui = get("PI")
    static let rio_de_janeiro = get("RJ")
    static let rio_grande_do_norte = get("RN")
    static let rio_grande_do_sul = get("RS")
    static let rondonia = get("RO")
    static let roraima = get("RR")
    static let santa_catarina = get("SC")
    static let sao_paulo = get("SP")
    static let sergipe = get("SE")
    static let tocantins = get("TO")
}

// MARK: Neighbors
public extension SubdivisionsBrazilLevel1 {
    var neighbors : [any Locale.Region.Subdivision.Level1Protocol] {
        switch self {
        case .acre:
            return [SubdivisionsBrazilLevel1.amazonas, SubdivisionsBrazilLevel1.rondonia]
        case .alagoas:
            return [SubdivisionsBrazilLevel1.pernambuco, SubdivisionsBrazilLevel1.bahia, SubdivisionsBrazilLevel1.sergipe]
        case .amapa:
            return [SubdivisionsBrazilLevel1.para]
        case .amazonas:
            return [SubdivisionsBrazilLevel1.roraima, SubdivisionsBrazilLevel1.para, SubdivisionsBrazilLevel1.mato_grosso, SubdivisionsBrazilLevel1.rondonia, SubdivisionsBrazilLevel1.acre]
        case .bahia:
            return [SubdivisionsBrazilLevel1.espirito_santo, SubdivisionsBrazilLevel1.minas_gerais, SubdivisionsBrazilLevel1.goias, SubdivisionsBrazilLevel1.tocantins, SubdivisionsBrazilLevel1.maranhao, SubdivisionsBrazilLevel1.piaui, SubdivisionsBrazilLevel1.pernambuco, SubdivisionsBrazilLevel1.alagoas, SubdivisionsBrazilLevel1.sergipe]
        case .ceara:
            return [SubdivisionsBrazilLevel1.piaui, SubdivisionsBrazilLevel1.pernambuco, SubdivisionsBrazilLevel1.paraiba, SubdivisionsBrazilLevel1.rio_grande_do_norte]
        case .distrito_federal:
            return [SubdivisionsBrazilLevel1.goias, SubdivisionsBrazilLevel1.minas_gerais]
        case .espirito_santo:
            return [SubdivisionsBrazilLevel1.rio_de_janeiro, SubdivisionsBrazilLevel1.minas_gerais, SubdivisionsBrazilLevel1.bahia]
        case .goias:
            return [SubdivisionsBrazilLevel1.distrito_federal, SubdivisionsBrazilLevel1.minas_gerais, SubdivisionsBrazilLevel1.mato_grosso_do_sul, SubdivisionsBrazilLevel1.mato_grosso, SubdivisionsBrazilLevel1.tocantins, SubdivisionsBrazilLevel1.bahia]
        case .maranhao:
            return [SubdivisionsBrazilLevel1.para, SubdivisionsBrazilLevel1.tocantins, SubdivisionsBrazilLevel1.bahia, SubdivisionsBrazilLevel1.piaui]
        case .mato_grosso:
            return [SubdivisionsBrazilLevel1.rondonia, SubdivisionsBrazilLevel1.amazonas, SubdivisionsBrazilLevel1.para, SubdivisionsBrazilLevel1.tocantins, SubdivisionsBrazilLevel1.goias, SubdivisionsBrazilLevel1.mato_grosso_do_sul]
        case .mato_grosso_do_sul:
            return [SubdivisionsBrazilLevel1.mato_grosso, SubdivisionsBrazilLevel1.goias, SubdivisionsBrazilLevel1.minas_gerais, SubdivisionsBrazilLevel1.sao_paulo, SubdivisionsBrazilLevel1.parana]
        case .minas_gerais:
            return [SubdivisionsBrazilLevel1.espirito_santo, SubdivisionsBrazilLevel1.rio_de_janeiro, SubdivisionsBrazilLevel1.sao_paulo, SubdivisionsBrazilLevel1.mato_grosso_do_sul, SubdivisionsBrazilLevel1.goias, SubdivisionsBrazilLevel1.distrito_federal, SubdivisionsBrazilLevel1.bahia]
        case .para:
            return [SubdivisionsBrazilLevel1.amapa, SubdivisionsBrazilLevel1.maranhao, SubdivisionsBrazilLevel1.tocantins, SubdivisionsBrazilLevel1.mato_grosso, SubdivisionsBrazilLevel1.amazonas, SubdivisionsBrazilLevel1.roraima]
        case .paraiba:
            return [SubdivisionsBrazilLevel1.rio_grande_do_norte, SubdivisionsBrazilLevel1.ceara, SubdivisionsBrazilLevel1.pernambuco]
        case .parana:
            return [SubdivisionsBrazilLevel1.santa_catarina, SubdivisionsBrazilLevel1.sao_paulo, SubdivisionsBrazilLevel1.mato_grosso_do_sul]
        case .pernambuco:
            return [SubdivisionsBrazilLevel1.paraiba, SubdivisionsBrazilLevel1.ceara, SubdivisionsBrazilLevel1.piaui, SubdivisionsBrazilLevel1.bahia, SubdivisionsBrazilLevel1.alagoas]
        case .piaui:
            return [SubdivisionsBrazilLevel1.maranhao, SubdivisionsBrazilLevel1.tocantins, SubdivisionsBrazilLevel1.bahia, SubdivisionsBrazilLevel1.pernambuco, SubdivisionsBrazilLevel1.ceara]
        case .rio_de_janeiro:
            return [SubdivisionsBrazilLevel1.espirito_santo, SubdivisionsBrazilLevel1.minas_gerais, SubdivisionsBrazilLevel1.sao_paulo]
        case .rio_grande_do_norte:
            return [SubdivisionsBrazilLevel1.ceara, SubdivisionsBrazilLevel1.paraiba]
        case .rio_grande_do_sul:
            return [SubdivisionsBrazilLevel1.santa_catarina]
        case .rondonia:
            return [SubdivisionsBrazilLevel1.acre, SubdivisionsBrazilLevel1.amazonas, SubdivisionsBrazilLevel1.mato_grosso]
        case .roraima:
            return [SubdivisionsBrazilLevel1.amazonas, SubdivisionsBrazilLevel1.para]
        case .santa_catarina:
            return [SubdivisionsBrazilLevel1.parana, SubdivisionsBrazilLevel1.rio_grande_do_sul]
        case .sao_paulo:
            return [SubdivisionsBrazilLevel1.parana, SubdivisionsBrazilLevel1.mato_grosso_do_sul, SubdivisionsBrazilLevel1.minas_gerais, SubdivisionsBrazilLevel1.rio_de_janeiro]
        case .sergipe:
            return [SubdivisionsBrazilLevel1.bahia, SubdivisionsBrazilLevel1.alagoas]
        case .tocantins:
            return [SubdivisionsBrazilLevel1.para, SubdivisionsBrazilLevel1.mato_grosso, SubdivisionsBrazilLevel1.goias, SubdivisionsBrazilLevel1.bahia, SubdivisionsBrazilLevel1.piaui, SubdivisionsBrazilLevel1.maranhao]
        default:
            return []
        }
    }
}
