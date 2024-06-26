//
//  SovereignStateCallingCodes.swift
//
//
//  Created by Evan Anderson on 11/20/23.
//

import Foundation

public extension Locale.Region { // https://en.wikipedia.org/wiki/List_of_country_calling_codes
    var callingCodes : [String] {
        switch self {
            
        case .afghanistan: return ["93"]
        case .ålandIslands: return ["358 (18)", "358 (475)"]
        case .albania: return ["355"]
        case .algeria: return ["213"]
        case .americanSamoa: return ["1 (684)"]
        case .andorra: return ["376"]
        case .angola: return ["244"]
        case .anguilla: return ["1 (264)"]
        case .antiguaBarbuda: return ["1 (268)"]
        case .argentina: return ["54"]
        case .armenia: return ["374"]
        case .artsakh: return ["374 (47)", "374 (97)"]
        case .aruba: return ["297"]
        case .ascensionIsland: return ["247"]
        case .australia: return ["61"]
        case .austria: return ["43"]
        case .azerbaijan: return ["994"]
        
        case .bahamas: return ["1 (242)"]
        case .bahrain: return ["973"]
        case .bangladesh: return ["880"]
        case .barbados: return ["1 (246)"]
        case .belarus: return ["375"]
        case .belgium: return ["32"]
        case .belize: return ["501"]
        case .benin: return ["229"]
        case .bermuda: return ["1 (441)"]
        case .bhutan: return ["975"]
        case .bolivia: return ["591"]
        //case .bonaire: return ["599 (7)"]
        case .bosniaHerzegovina: return ["387"]
        case .botswana: return ["267"]
        case .brazil: return ["55"]
        //case .britishIndianOceanTerritory: return ["246"]
        case .britishVirginIslands: return ["1 (284)"]
        case .brunei: return ["673"]
        case .bulgaria: return ["359"]
        case .burkinaFaso: return ["226"]
        case .burundi: return ["257"]
            
        case .cambodia: return ["855"]
        case .cameroon: return ["237"]
        case .canada: return ["1"]
        case .capeVerde: return ["238"]
        case .caribbeanNetherlands: return ["599 (3)", "599 (4)", "599 (7)"]
        case .caymanIslands: return ["1 (345)"]

        case .dominica: return ["1 (767)"]
        case .dominicanRepublic: return ["1 (809)", "1 (829)", "1 (849)"]

        case .grenada: return ["1 (473)"]
        case .guam: return ["1 (671)"]

        case .jamaica: return ["1 (658)", "1 (876)"]

        case .montserrat: return ["1 (664)"]

        case .northernMarianaIslands: return ["1 (670)"]

        case .puertoRico: return ["1 (787)", "1 (939)"]

        case .saintKittsNevis: return ["1 (869)"]
        case .saintLucia: return ["1 (758)"]
        case .saintVincentGrenadines: return ["1 (784)"]
        case .sintMaarten: return ["1 (721)"]

        case .trinidadTobago: return ["1 (868)"]
        case .turksCaicosIslands: return ["1 (649)"]
            
        case .uganda: return ["256"]
        case .ukraine: return ["380"]
        case .unitedArabEmirates: return ["971"]
        case .unitedKingdom: return ["44"]
        case .unitedStates: return ["1"]
        case .unitedStatesVirginIslands: return ["1 (340)"]
            
        default: return []
        }
    }
}
