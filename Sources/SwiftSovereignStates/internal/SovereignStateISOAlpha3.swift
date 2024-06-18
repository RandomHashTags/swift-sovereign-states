//
//  SovereignStateISOAlpha3.swift
//  
//
//  Created by Evan Anderson on 6/14/22.
//

import Foundation

public extension Locale.Region {
    var isoAlpha3 : String? {
        switch self {
        case .abkhazia: return nil
        case .artsakh: return nil
        case .kosovo: return nil
        case .northernCyprus: return nil
        case .scotland: return nil
        case .somaliland: return nil
        case .transnistria: return nil
            
        case .aruba: return "ABW"
        case .afghanistan: return "AFG"
        case .angola: return "AGO"
        case .anguilla: return "AIA"
        case .ålandIslands: return "ALA"
        case .albania: return "ALB"
        case .algeria: return "DZA"
        case .andorra: return "AND"
        case .argentina: return "ARG"
        case .armenia: return "ARM"
        case .americanSamoa: return "ASM"
        case .antarctica: return "ATA"
        case .antiguaBarbuda: return "ATG"
        case .australia: return "AUS"
        case .austria: return "AUT"
        case .azerbaijan: return "AZE"

        case .burundi: return "BDI"
        case .belgium: return "BEL"
        case .benin: return "BEN"
        case .burkinaFaso: return "BFA"
        case .bangladesh: return "BGD"
        case .bulgaria: return "BGR"
        case .bahrain: return "BHR"
        case .bahamas: return "BHS"
        case .bosniaHerzegovina: return "BIH"
        case .belarus: return "BLR"
        case .belize: return "BLZ"
        case .bermuda: return "BMU"
        case .bolivia: return "BOL"
        case .brazil: return "BRA"
        case .barbados: return "BRB"
        case .britishVirginIslands: return "VGB"
        case .brunei: return "BRN"
        case .bhutan: return "BTN"
        case .bouvetIsland: return "BVT"
        case .botswana: return "BWA"

        case .centralAfricanRepublic: return "CAF"
        case .cambodia: return "KHM"
        case .canada: return "CAN"
        case .cocosIslands: return "CCK"
        case .chad: return "TCD"
        case .chile: return "CHL"
        case .chinaMainland: return "CHN"
        case .cameroon: return "CMR"
        case .congoKinshasa: return "COD"
        case .congoBrazzaville: return "COG"
        case .cookIslands: return "COK"
        case .colombia: return "COL"
        case .comoros: return "COM"
        case .capeVerde: return "CPV"
        case .costaRica: return "CRI"
        case .cuba: return "CUB"
        case .curaçao: return "CUW"
        case .christmasIsland: return "CXR"
        case .caymanIslands: return "CYM"
        case .croatia: return "HRV"
        case .cyprus: return "CYP"
        case .czechia: return "CZE"

        case .denmark: return "DNK"
        case .djibouti: return "DJI"
        case .dominica: return "DMA"
        case .dominicanRepublic: return "DOM"

        case .ecuador: return "ECU"
        case .egypt: return "EGY"
        case .elSalvador: return "SLV"
        case .equatorialGuinea: return "GNQ"
        case .eritrea: return "ERI"
        case .estonia: return "EST"
        case .eswatini: return "SWZ"
        case .ethiopia: return "ETH"
        
        case .falklandIslands: return "FLK"
        case .faroeIslands: return "FRO"
        case .finland: return "FIN"
        case .fiji: return "FJI"
        case .france: return "FRA"
        case .frenchPolynesia: return "PYF"

        case .gabon: return "GAB"
        case .gambia: return "GMB"
        case .georgia: return "GEO"
        case .germany: return "DEU"
        case .ghana: return "GHA"
        case .gibraltar: return "GIB"
        case .greece: return "GRC"
        case .greenland: return "GRL"
        case .grenada: return "GRD"
        case .guadeloupe: return "GLP"
        case .guam: return "GUM"
        case .guatemala: return "GTM"
        case .guernsey: return "GGY"
        case .guinea: return "GIN"
        case .guineaBissau: return "GNB"
        case .guyana: return "GUY"

        case .haiti: return "HTI"
        case .honduras: return "HND"
        case .hongKong: return "HKG"
        case .hungary: return "HUN"

        case .iceland: return "ISL"
        case .india: return "IND"
        case .indonesia: return "IDN"
        case .iran: return "IRN"
        case .iraq: return "IRQ"
        case .ireland: return "IRL"
        case .israel: return "ISR"
        case .isleOfMan: return "IMN"
        case .italy: return "ITA"
        case .côteDIvoire: return "CIV"

        case .jamaica: return "JAM"
        case .japan: return "JPN"
        case .jersey: return "JEY"
        case .jordan: return "JOR"

        case .kazakhstan: return "KAZ"
        case .kenya: return "KEN"
        case .kiribati: return "KIR"
        case .kuwait: return "KWT"
        case .kyrgyzstan: return "KGZ"

        case .laos: return "LAO"
        case .latvia: return "LVA"
        case .lebanon: return "LBN"
        case .lesotho: return "LSO"
        case .liberia: return "LBR"
        case .libya: return "LBY"
        case .liechtenstein: return "LIE"
        case .lithuania: return "LTU"
        case .luxembourg: return "LUX"

        case .macao: return "MAC"
        case .madagascar: return "MDG"
        case .malawi: return "MWI"
        case .malaysia: return "MYS"
        case .maldives: return "MDV"
        case .mali: return "MLI"
        case .malta: return "MLT"
        case .marshallIslands: return "MHL"
        case .mauritania: return "MRT"
        case .mauritius: return "MUS"
        case .mexico: return "MEX"
        case .micronesia: return "FSM"
        case .moldova: return "MDA"
        case .monaco: return "MCO"
        case .mongolia: return "MNG"
        case .montenegro: return "MNE"
        case .montserrat: return "MSR"
        case .morocco: return "MAR"
        case .mozambique: return "MOZ"
        case .myanmar: return "MMR"

        case .namibia: return "NAM"
        case .nauru: return "NRU"
        case .nepal: return "NPL"
        case .netherlands: return "NLD"
        case .newCaledonia: return "NCL"
        case .newZealand: return "NZL"
        case .nicaragua: return "NIC"
        case .niger: return "NER"
        case .nigeria: return "NGA"
        case .niue: return "NIU"
        case .norfolkIsland: return "NFK"
        case .northKorea: return "PRK"
        case .northMacedonia: return "MKD"
        case .northernMarianaIslands: return "MNP"
        case .norway: return "NOR"

        case .oman: return "OMN"

        case .pakistan: return "PAK"
        case .panama: return "PAN"
        case .peru: return "PER"
        case .philippines: return "PHL"
        case .palau: return "PLW"
        case .papuaNewGuinea: return "PNG"
        case .poland: return "POL"
        case .puertoRico: return "PRI"
        case .portugal: return "PRT"
        case .paraguay: return "PRY"
        case .palestine: return "PSE"

        case .qatar: return "QAT"

        case .réunion: return "REU"
        case .romania: return "ROU"
        case .russia: return "RUS"
        case .rwanda: return "RWA"

        case .saintBarthélemy: return "BLM"
        case .saintHelena: return "SHN"
        case .saintKittsNevis: return "KNA"
        case .saintLucia: return "LCA"
        case .saintMartin: return "MAF"

        case .saintPierreMiquelon: return "SPM"
        case .saintVincentGrenadines: return "VCT"
        case .samoa: return "WSM"
        case .sanMarino: return "SMR"
        case .sãoToméPríncipe: return "STP"
        case .saudiArabia: return "SAU"
        case .senegal: return "SEN"
        case .serbia: return "SRB"
        case .seychelles: return "SYC"
        case .sierraLeone: return "SLE"
        case .singapore: return "SGP"
        case .slovakia: return "SVK"
        case .slovenia: return "SVN"
        case .solomonIslands: return "SLB"
        case .somalia: return "SOM"
        case .southAfrica: return "ZAF"
        case .southKorea: return "KOR"
        case .southSudan: return "SSD"
        case .spain: return "ESP"
        case .sriLanka: return "LKA"
        case .sudan: return "SDN"
        case .suriname: return "SUR"
        case .svalbardJanMayen: return "SJM"
        case .sweden: return "SWE"
        case .switzerland: return "CHE"
        case .syria: return "SYR"

        case .taiwan: return "TWN"
        case .tajikistan: return "TJK"
        case .tanzania: return "TZA"
        case .thailand: return "THA"
        case .timorLeste: return "TLS"
        case .togo: return "TGO"
        case .tokelau: return "TKL"
        case .tonga: return "TON"
        case .trinidadTobago: return "TTO"
        case .tunisia: return "TUN"
        case .turkey: return "TUR"
        case .turkmenistan: return "TKM"
        case .turksCaicosIslands: return "TCA"
        case .tuvalu: return "TUV"

        case .uganda: return "UGA"
        case .ukraine: return "UKR"
        case .unitedArabEmirates: return "ARE"
        case .unitedKingdom: return "GBR"
        case .unitedStates: return "USA"
        case .unitedStatesVirginIslands: return "VIR"
        case .uruguay: return "URY"
        case .uzbekistan: return "UZB"

        case .vanuatu: return "VUT"
        case .vaticanCity: return "VAT"
        case .venezuela: return "VEN"
        case .vietnam: return "VNM"

        case .wallisFutuna: return "WLF"
        case .westernSahara: return "ESH"

        case .yemen: return "YEM"

        case .zambia: return "ZMB"
        case .zimbabwe: return "ZWE"
            
        default: return nil
        }
    }
}
