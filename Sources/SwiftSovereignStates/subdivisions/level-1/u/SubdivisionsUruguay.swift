//
//  SubdivisionsUruguay.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsUruguay : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Departments_of_Uruguay
    case artigas
    case canelones
    case cerro_largo
    case colonia
    case durazno
    case flores
    case florida
    case lavalleja
    case maldonado
    case montevideo
    case paysandu
    case rio_negro
    case rivera
    case rocha
    case salto
    case san_jose
    case soriano
    case tacuarembo
    case treinta_y_tres
    
    public var country : Locale.Region {
        return Locale.Region.uruguay
    }
    
    public var type : Locale.Region.SubdivisionType {
        return Locale.Region.SubdivisionType.departments
    }
    
    public var isoAlpha2 : String? {
        switch self {
        case .artigas: return "AR"
        case .canelones: return "CA"
        case .cerro_largo: return "CL"
        case .colonia: return "CO"
        case .durazno: return "DU"
        case .flores: return "FS"
        case .florida: return "FD"
        case .lavalleja: return "LA"
        case .maldonado: return "MA"
        case .montevideo: return "MO"
        case .paysandu: return "PA"
        case .rio_negro: return "RN"
        case .rivera: return "RV"
        case .rocha: return "RO"
        case .salto: return "SA"
        case .san_jose: return "SJ"
        case .soriano: return "SO"
        case .tacuarembo: return "TA"
        case .treinta_y_tres: return "TT"
        }
    }
    
    public var neighbors : [any Locale.Region.Subdivision.Level1Protocol] {
        switch self {
        case .artigas:
            return [SubdivisionsUruguay.salto, SubdivisionsUruguay.rivera]
        case .canelones:
            return [SubdivisionsUruguay.montevideo, SubdivisionsUruguay.san_jose, SubdivisionsUruguay.florida, SubdivisionsUruguay.lavalleja, SubdivisionsUruguay.maldonado]
        case .cerro_largo:
            return [SubdivisionsUruguay.rivera, SubdivisionsUruguay.tacuarembo, SubdivisionsUruguay.durazno, SubdivisionsUruguay.treinta_y_tres]
        case .colonia:
            return [SubdivisionsUruguay.soriano, SubdivisionsUruguay.flores, SubdivisionsUruguay.san_jose]
        case .durazno:
            return [SubdivisionsUruguay.florida, SubdivisionsUruguay.flores, SubdivisionsUruguay.soriano, SubdivisionsUruguay.rio_negro, SubdivisionsUruguay.tacuarembo, SubdivisionsUruguay.cerro_largo, SubdivisionsUruguay.treinta_y_tres]
        case .flores:
            return [SubdivisionsUruguay.san_jose, SubdivisionsUruguay.colonia, SubdivisionsUruguay.soriano, SubdivisionsUruguay.rio_negro, SubdivisionsUruguay.durazno, SubdivisionsUruguay.florida]
        case .florida:
            return [SubdivisionsUruguay.flores, SubdivisionsUruguay.durazno, SubdivisionsUruguay.treinta_y_tres, SubdivisionsUruguay.lavalleja, SubdivisionsUruguay.canelones, SubdivisionsUruguay.san_jose]
        case .lavalleja:
            return [SubdivisionsUruguay.florida, SubdivisionsUruguay.treinta_y_tres, SubdivisionsUruguay.rocha, SubdivisionsUruguay.maldonado, SubdivisionsUruguay.canelones]
        case .maldonado:
            return [SubdivisionsUruguay.canelones, SubdivisionsUruguay.lavalleja, SubdivisionsUruguay.rocha]
        case .montevideo:
            return [SubdivisionsUruguay.san_jose, SubdivisionsUruguay.canelones]
        case .paysandu:
            return [SubdivisionsUruguay.salto, SubdivisionsUruguay.tacuarembo, SubdivisionsUruguay.rio_negro]
        case .rio_negro:
            return [SubdivisionsUruguay.paysandu, SubdivisionsUruguay.tacuarembo, SubdivisionsUruguay.durazno, SubdivisionsUruguay.flores, SubdivisionsUruguay.soriano]
        case .rivera:
            return [SubdivisionsUruguay.artigas, SubdivisionsUruguay.salto, SubdivisionsUruguay.tacuarembo, SubdivisionsUruguay.cerro_largo]
        case .rocha:
            return [SubdivisionsUruguay.maldonado, SubdivisionsUruguay.lavalleja, SubdivisionsUruguay.treinta_y_tres]
        case .salto:
            return [SubdivisionsUruguay.artigas, SubdivisionsUruguay.rivera, SubdivisionsUruguay.tacuarembo, SubdivisionsUruguay.paysandu]
        case .san_jose:
            return [SubdivisionsUruguay.colonia, SubdivisionsUruguay.soriano, SubdivisionsUruguay.flores, SubdivisionsUruguay.florida, SubdivisionsUruguay.canelones, SubdivisionsUruguay.montevideo]
        case .soriano:
            return [SubdivisionsUruguay.rio_negro, SubdivisionsUruguay.durazno, SubdivisionsUruguay.flores, SubdivisionsUruguay.san_jose, SubdivisionsUruguay.colonia]
        case .tacuarembo:
            return [SubdivisionsUruguay.salto, SubdivisionsUruguay.paysandu, SubdivisionsUruguay.rio_negro, SubdivisionsUruguay.durazno, SubdivisionsUruguay.cerro_largo, SubdivisionsUruguay.rivera]
        case .treinta_y_tres:
            return [SubdivisionsUruguay.cerro_largo, SubdivisionsUruguay.durazno, SubdivisionsUruguay.florida, SubdivisionsUruguay.lavalleja, SubdivisionsUruguay.rocha]
        }
    }
}
