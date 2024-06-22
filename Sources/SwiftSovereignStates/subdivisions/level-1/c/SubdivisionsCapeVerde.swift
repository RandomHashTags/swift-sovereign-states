//
//  SubdivisionsCapeVerde.swift
//
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation

public enum SubdivisionsCapeVerde : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Cape_Verde
    case boa_vista
    case brava
    case maio
    case mosteiros
    case paul
    case porto_novo
    case praia
    case ribeira_brava
    case ribeira_grande
    case ribeira_grande_de_santiago
    case sal
    case santa_catarina
    case santa_catarina_do_fogo
    case santa_cruz
    case sao_domingos
    case sao_filipe
    case sao_lourenco_dos_orgaos
    case sao_miguel
    case sao_salvador_do_mundo
    case sao_vicente
    case tarrafal
    case tarrafal_de_sao_nicolau
    
    public var country : Locale.Region {
        return Locale.Region.capeVerde
    }
    
    public var type : Locale.Region.SubdivisionType {
        return Locale.Region.SubdivisionType.municipalities
    }
}
