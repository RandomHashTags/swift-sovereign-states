//
//  SubdivisionsUruguayLevel1.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public typealias SubdivisionsUruguayLevel1 = Locale.Region.Subdivision.Level1.Uruguay

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.uruguay, allSameType: true, type: Locale.Region.SubdivisionType.department)
    struct Uruguay : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsUruguayLevel1 { // https://en.wikipedia.org/wiki/Departments_of_Uruguay | https://en.wikipedia.org/wiki/ISO_3166-2:UY
    static let artigas = get("AR")
    static let canelones = get("CA")
    static let cerro_largo = get("CL")
    static let colonia = get("CO")
    static let durazno = get("DU")
    static let flores = get("FS")
    static let florida = get("FD")
    static let lavalleja = get("LA")
    static let maldonado = get("MA")
    static let montevideo = get("MO")
    static let paysandu = get("PA")
    static let rio_negro = get("RN")
    static let rivera = get("RV")
    static let rocha = get("RO")
    static let salto = get("SA")
    static let san_jose = get("SJ")
    static let soriano = get("SO")
    static let tacuarembo = get("TA")
    static let treinta_y_tres = get("TT")
}

// MARK: Neighbors
public extension SubdivisionsUruguayLevel1 {
    var neighbors : [any Locale.Region.Subdivision.Level1Protocol] {
        switch self {
        case .artigas:
            return [SubdivisionsUruguayLevel1.salto, SubdivisionsUruguayLevel1.rivera]
        case .canelones:
            return [SubdivisionsUruguayLevel1.montevideo, SubdivisionsUruguayLevel1.san_jose, SubdivisionsUruguayLevel1.florida, SubdivisionsUruguayLevel1.lavalleja, SubdivisionsUruguayLevel1.maldonado]
        case .cerro_largo:
            return [SubdivisionsUruguayLevel1.rivera, SubdivisionsUruguayLevel1.tacuarembo, SubdivisionsUruguayLevel1.durazno, SubdivisionsUruguayLevel1.treinta_y_tres]
        case .colonia:
            return [SubdivisionsUruguayLevel1.soriano, SubdivisionsUruguayLevel1.flores, SubdivisionsUruguayLevel1.san_jose]
        case .durazno:
            return [SubdivisionsUruguayLevel1.florida, SubdivisionsUruguayLevel1.flores, SubdivisionsUruguayLevel1.soriano, SubdivisionsUruguayLevel1.rio_negro, SubdivisionsUruguayLevel1.tacuarembo, SubdivisionsUruguayLevel1.cerro_largo, SubdivisionsUruguayLevel1.treinta_y_tres]
        case .flores:
            return [SubdivisionsUruguayLevel1.san_jose, SubdivisionsUruguayLevel1.colonia, SubdivisionsUruguayLevel1.soriano, SubdivisionsUruguayLevel1.rio_negro, SubdivisionsUruguayLevel1.durazno, SubdivisionsUruguayLevel1.florida]
        case .florida:
            return [SubdivisionsUruguayLevel1.flores, SubdivisionsUruguayLevel1.durazno, SubdivisionsUruguayLevel1.treinta_y_tres, SubdivisionsUruguayLevel1.lavalleja, SubdivisionsUruguayLevel1.canelones, SubdivisionsUruguayLevel1.san_jose]
        case .lavalleja:
            return [SubdivisionsUruguayLevel1.florida, SubdivisionsUruguayLevel1.treinta_y_tres, SubdivisionsUruguayLevel1.rocha, SubdivisionsUruguayLevel1.maldonado, SubdivisionsUruguayLevel1.canelones]
        case .maldonado:
            return [SubdivisionsUruguayLevel1.canelones, SubdivisionsUruguayLevel1.lavalleja, SubdivisionsUruguayLevel1.rocha]
        case .montevideo:
            return [SubdivisionsUruguayLevel1.san_jose, SubdivisionsUruguayLevel1.canelones]
        case .paysandu:
            return [SubdivisionsUruguayLevel1.salto, SubdivisionsUruguayLevel1.tacuarembo, SubdivisionsUruguayLevel1.rio_negro]
        case .rio_negro:
            return [SubdivisionsUruguayLevel1.paysandu, SubdivisionsUruguayLevel1.tacuarembo, SubdivisionsUruguayLevel1.durazno, SubdivisionsUruguayLevel1.flores, SubdivisionsUruguayLevel1.soriano]
        case .rivera:
            return [SubdivisionsUruguayLevel1.artigas, SubdivisionsUruguayLevel1.salto, SubdivisionsUruguayLevel1.tacuarembo, SubdivisionsUruguayLevel1.cerro_largo]
        case .rocha:
            return [SubdivisionsUruguayLevel1.maldonado, SubdivisionsUruguayLevel1.lavalleja, SubdivisionsUruguayLevel1.treinta_y_tres]
        case .salto:
            return [SubdivisionsUruguayLevel1.artigas, SubdivisionsUruguayLevel1.rivera, SubdivisionsUruguayLevel1.tacuarembo, SubdivisionsUruguayLevel1.paysandu]
        case .san_jose:
            return [SubdivisionsUruguayLevel1.colonia, SubdivisionsUruguayLevel1.soriano, SubdivisionsUruguayLevel1.flores, SubdivisionsUruguayLevel1.florida, SubdivisionsUruguayLevel1.canelones, SubdivisionsUruguayLevel1.montevideo]
        case .soriano:
            return [SubdivisionsUruguayLevel1.rio_negro, SubdivisionsUruguayLevel1.durazno, SubdivisionsUruguayLevel1.flores, SubdivisionsUruguayLevel1.san_jose, SubdivisionsUruguayLevel1.colonia]
        case .tacuarembo:
            return [SubdivisionsUruguayLevel1.salto, SubdivisionsUruguayLevel1.paysandu, SubdivisionsUruguayLevel1.rio_negro, SubdivisionsUruguayLevel1.durazno, SubdivisionsUruguayLevel1.cerro_largo, SubdivisionsUruguayLevel1.rivera]
        case .treinta_y_tres:
            return [SubdivisionsUruguayLevel1.cerro_largo, SubdivisionsUruguayLevel1.durazno, SubdivisionsUruguayLevel1.florida, SubdivisionsUruguayLevel1.lavalleja, SubdivisionsUruguayLevel1.rocha]
        default:
            return []
        }
    }
}
