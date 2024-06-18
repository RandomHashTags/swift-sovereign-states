//
//  SubdivisionsPhilippines.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public enum SubdivisionsPhilippines : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_the_Philippines
    case abra
    case agusan_del_norte
    case agusan_del_sur
    case aklan
    case albay
    case antique
    case apayao
    case aurora
    case basilan
    case bataan
    case batanes
    case batangas
    case benguet
    case biliran
    case bohol
    case bukidnon
    case bulacan
    case cagayan
    case camarines_norte
    case camarines_sur
    case camiguin
    case capiz
    case catanduanes
    case cavite
    case cebu
    case cotabato
    case davao_de_oro
    case davao_del_norte
    case davao_del_sur
    case davao_occidental
    case davao_oriental
    case dinagat_islands
    case eastern_samar
    case guimaras
    case ifugao
    case ilocos_norte
    case ilocos_sur
    case iloilo
    case isabela
    case kalinga
    case la_union
    case laguna
    case lanao_del_norte
    case lanao_del_sur
    case leyte
    case maguindanao_del_norte
    case maguindanao_del_sur
    case marinduque
    case masbate
    case misamis_occidental
    case misamis_oriental
    case mountain_province
    case negros_occidental
    case negros_oriental
    case northern_samar
    case nueva_ecija
    case nueva_vizcaya
    case occidental_mindoro
    case oriental_mindoro
    case palawan
    case pampanga
    case pangasinan
    case quezon
    case quirino
    case rizal
    case romblon
    case samar
    case sarangani
    case siquijor
    case sorsogon
    case south_cotabato
    case southern_leyte
    case sultan_kudarat
    case sulu
    case surigao_del_norte
    case surigao_del_sur
    case tarlac
    case tawi_tawi
    case zambales
    case zamboanga_del_norte
    case zamboanga_del_sur
    case zamboanga_sibugay
    
    case metro_manila
    
    public var country : Locale.Region {
        return Locale.Region.philippines
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .metro_manila:
            return SovereignStateSubdivisionType.administrative_areas
        default:
            return SovereignStateSubdivisionType.provinces
        }
    }
}
