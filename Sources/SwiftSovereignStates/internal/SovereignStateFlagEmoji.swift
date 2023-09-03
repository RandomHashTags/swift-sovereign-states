//
//  SovereignStateFlagEmoji.swift
//  
//
//  Created by Evan Anderson on 6/14/22.
//

import Foundation

internal enum SovereignStateFlagEmoji {
    static func get(_ country: Locale.Region) -> String? {
        switch country {
        case .artsakh: return nil
        case .abkhazia: return nil
        case .northernCyprus: return nil
        case .somaliland: return nil
        case .transnistria: return nil

        case .afghanistan: return "🇦🇫"
        case .ålandIslands: return "🇦🇽"
        case .albania: return "🇦🇱"
        case .algeria: return "🇩🇿"
        case .americanSamoa: return "🇦🇸"
        case .andorra: return "🇦🇩"
        case .angola: return "🇦🇴"
        case .anguilla: return "🇦🇮"
        case .antiguaBarbuda: return "🇦🇬"
        case .argentina: return "🇦🇷"
        case .armenia: return "🇦🇲"
        case .aruba: return "🇦🇼"
        case .ascensionIsland: return "🇦🇨"
        case .australia: return "🇦🇺"
        case .austria: return "🇦🇹"
        case .azerbaijan: return "🇦🇿"

        case .bahamas: return "🇧🇸"
        case .bahrain: return "🇧🇭"
        case .bangladesh: return "🇧🇩"
        case .barbados: return "🇧🇧"
        case .belarus: return "🇧🇾"
        case .belgium: return "🇧🇪"
        case .belize: return "🇧🇿"
        case .benin: return "🇧🇯"
        case .bermuda: return "🇧🇲"
        case .bhutan: return "🇧🇹"
        case .bolivia: return "🇧🇴"
        case .bosniaHerzegovina: return "🇧🇦"
        case .botswana: return "🇧🇼"
        case .bouvetIsland: return "🇧🇻"
        case .brazil: return "🇧🇷"
        case .britishVirginIslands: return "🇻🇬"
        case .brunei: return "🇧🇳"
        case .bulgaria: return "🇧🇬"
        case .burkinaFaso: return "🇧🇫"
        case .burundi: return "🇧🇮"

        case .cambodia: return "🇰🇭"
        case .cameroon: return "🇨🇲"
        case .canada: return "🇨🇦"
        case .canaryIslands: return "🇮🇨"
        case .capeVerde: return "🇨🇻"
        case .caribbeanNetherlands: return "🇧🇶"
        case .caymanIslands: return "🇰🇾"
        case .centralAfricanRepublic: return "🇨🇫"
        case .ceutaMelilla: return "🇪🇦"
        case .chad: return "🇹🇩"
        case .chagosArchipelago: return nil
        case .chile: return "🇨🇱"
        case .chinaMainland: return "🇨🇳"
        case .christmasIsland: return "🇨🇽"
        case .clippertonIsland: return "🇨🇵"
        case .cocosIslands: return "🇨🇨"
        case .colombia: return "🇨🇴"
        case .comoros: return "🇰🇲"
        case .cookIslands: return "🇨🇰"
        case .costaRica: return "🇨🇷"
        case .croatia: return "🇭🇷"
        case .cuba: return "🇨🇺"
        case .curaçao: return "🇨🇼"
        case .cyprus: return "🇨🇾"
        case .czechia: return "🇨🇿"

        case .congoKinshasa: return "🇨🇩"
        case .diegoGarcia: return "🇩🇬"
        case .denmark: return "🇩🇰"
        case .djibouti: return "🇩🇯"
        case .dominica: return "🇩🇲"
        case .dominicanRepublic: return "🇩🇴"

        case .ecuador: return "🇪🇨"
        case .egypt: return "🇪🇬"
        case .elSalvador: return "🇸🇻"
        case .equatorialGuinea: return "🇬🇶"
        case .eritrea: return "🇪🇷"
        case .estonia: return "🇪🇪"
        case .eswatini: return "🇸🇿"
        case .ethiopia: return "🇪🇹"

        case .falklandIslands: return "🇫🇰"
        case .faroeIslands: return "🇫🇴"
        case .fiji: return "🇫🇯"
        case .finland: return "🇫🇮"
        case .france: return "🇫🇷"
        case .frenchGuiana: return nil
        case .frenchPolynesia: return "🇵🇫"
        case .frenchSouthernTerritories: return "🇹🇫"

        case .gabon: return "🇬🇦"
        case .gambia: return "🇬🇲"
        case .germany: return "🇩🇪"
        case .ghana: return "🇬🇭"
        case .gibraltar: return "🇬🇮"
        case .greece: return "🇬🇷"
        case .georgia: return "🇬🇪"
        case .greenland: return "🇬🇱"
        case .grenada: return "🇬🇩"
        case .guadeloupe: return "🇬🇵"
        case .guam: return "🇬🇺"
        case .guatemala: return "🇬🇹"
        case .guernsey: return "🇬🇬"
        case .guinea: return "🇬🇳"
        case .guineaBissau: return "🇬🇼"
        case .guyana: return "🇬🇾"

        case .haiti: return "🇭🇹"
        case .heardMcdonaldIslands: return "🇭🇲"
        case .honduras: return "🇭🇳"
        case .hongKong: return "🇭🇰"
        case .hungary: return "🇭🇺"

        case .iceland: return "🇮🇸"
        case .india: return "🇮🇳"
        case .indonesia: return "🇮🇩"
        case .iran: return "🇮🇷"
        case .iraq: return "🇮🇶"
        case .ireland: return "🇮🇪"
        case .israel: return "🇮🇱"
        case .isleOfMan: return "🇮🇲"
        case .italy: return "🇮🇹"
        case .côteDIvoire: return "🇨🇮"

        case .jamaica: return "🇯🇲"
        case .japan: return "🇯🇵"
        case .jersey: return "🇯🇪"
        case .jordan: return "🇯🇴"

        case .kazakhstan: return "🇰🇿"
        case .kenya: return "🇰🇪"
        case .kiribati: return "🇰🇮"
        case .kosovo: return "🇽🇰"
        case .kuwait: return "🇰🇼"
        case .kyrgyzstan: return "🇰🇬"

        case .laos: return "🇱🇦"
        case .latvia: return "🇱🇻"
        case .lebanon: return "🇱🇧"
        case .lesotho: return "🇱🇸"
        case .liberia: return "🇱🇷"
        case .libya: return "🇱🇾"
        case .liechtenstein: return "🇱🇮"
        case .lithuania: return "🇱🇹"
        case .luxembourg: return "🇱🇺"

        case .macao: return "🇲🇴"
        case .madagascar: return "🇲🇬"
        case .malawi: return "🇲🇼"
        case .malaysia: return "🇲🇾"
        case .maldives: return "🇲🇻"
        case .mali: return "🇲🇱"
        case .malta: return "🇲🇹"
        case .marshallIslands: return "🇲🇭"
        case .martinique: return "🇲🇶"
        case .mauritania: return "🇲🇷"
        case .mauritius: return "🇲🇺"
        case .mexico: return "🇲🇽"
        case .micronesia: return "🇫🇲"
        case .moldova: return "🇲🇩"
        case .monaco: return "🇲🇨"
        case .mongolia: return "🇲🇳"
        case .montenegro: return "🇲🇪"
        case .montserrat: return "🇲🇸"
        case .morocco: return "🇲🇦"
        case .mozambique: return "🇲🇿"
        case .myanmar: return "🇲🇲"

        case .namibia: return "🇳🇦"
        case .nauru: return "🇳🇷"
        case .nepal: return "🇳🇵"
        case .netherlands: return "🇳🇱"
        case .newCaledonia: return "🇳🇨"
        case .newZealand: return "🇳🇿"
        case .nicaragua: return "🇳🇮"
        case .niger: return "🇳🇪"
        case .nigeria: return "🇳🇬"
        case .niue: return "🇳🇺"
        case .norfolkIsland: return "🇳🇫"
        case .northKorea: return "🇰🇵"
        case .northMacedonia: return "🇲🇰"
        case .northernMarianaIslands: return "🇲🇵"
        case .norway: return "🇳🇴"

        case .oman: return "🇴🇲"

        case .pakistan: return "🇵🇰"
        case .palau: return "🇵🇼"
        case .palestine: return "🇵🇸" // TODO: fix?
        case .palestinianTerritories: return "🇵🇸" // TODO: fix?
        case .panama: return "🇵🇦"
        case .papuaNewGuinea: return "🇵🇬"
        case .paraguay: return "🇵🇾"
        case .peru: return "🇵🇪"
        case .philippines: return "🇵🇭"
        case .poland: return "🇵🇱"
        case .portugal: return "🇵🇹"
        case .puertoRico: return "🇵🇷"

        case .qatar: return "🇶🇦"

        case .congoBrazzaville: return "🇨🇬"
        case .réunion: return "🇷🇪"
        case .romania: return "🇷🇴"
        case .russia: return "🇷🇺"
        case .rwanda: return "🇷🇼"

        case .saintBarthélemy: return "🇧🇱"
        case .saintHelena: return "🇸🇭"
        case .saintKittsNevis: return "🇰🇳"
        case .saintLucia: return "🇱🇨"
        case .saintMartin: return "🇲🇫"
        case .saintPierreMiquelon: return "🇵🇲"
        case .saintVincentGrenadines: return "🇻🇨"
        case .samoa: return "🇼🇸"
        case .sanMarino: return "🇸🇲"
        case .sãoToméPríncipe: return "🇸🇹"
        case .saudiArabia: return "🇸🇦"
        case .scotland: return "🏴󠁧󠁢󠁳󠁣󠁴󠁿"
        case .senegal: return "🇸🇳"
        case .serbia: return "🇷🇸"
        case .seychelles: return "🇸🇨"
        case .sierraLeone: return "🇸🇱"
        case .singapore: return "🇸🇬"
        case .sintMaarten: return "🇸🇽"
        case .slovakia: return "🇸🇰"
        case .slovenia: return "🇸🇮"
        case .solomonIslands: return "🇸🇧"
        case .somalia: return "🇸🇴"
        case .southAfrica: return "🇿🇦"
        case .southGeorgiaSouthSandwichIslands: return "🇬🇸"
        case .southKorea: return "🇰🇷"
        case .southSudan: return "🇸🇸"
        case .spain: return "🇪🇸"
        case .sriLanka: return "🇱🇰"
        case .sudan: return "🇸🇩"
        case .suriname: return "🇸🇷"
        case .svalbardJanMayen: return "🇸🇯"
        case .sweden: return "🇸🇪"
        case .switzerland: return "🇨🇭"
        case .syria: return "🇸🇾"

        case .taiwan: return "🇹🇼"
        case .tajikistan: return "🇹🇯"
        case .tanzania: return "🇹🇿"
        case .thailand: return "🇹🇭"
        case .timorLeste: return "🇹🇱"
        case .togo: return "🇹🇬"
        case .tokelau: return "🇹🇰"
        case .tonga: return "🇹🇴"
        case .trinidadTobago: return "🇹🇹"
        case .tunisia: return "🇹🇳"
        case .turkey: return "🇹🇷"
        case .turkmenistan: return "🇹🇲"
        case .turksCaicosIslands: return "🇹🇨"
        case .tuvalu: return "🇹🇻"

        case .uganda: return "🇺🇬"
        case .ukraine: return "🇺🇦"
        case .unitedArabEmirates: return "🇦🇪"
        case .unitedKingdom: return "🇬🇧"
        case .unitedStates: return "🇺🇸"
        case .unitedStatesOutlyingIslands: return "🇺🇲"
        case .unitedStatesVirginIslands: return "🇻🇮"
        case .uruguay: return "🇺🇾"
        case .uzbekistan: return "🇺🇿"

        case .vanuatu: return "🇻🇺"
        case .vaticanCity: return "🇻🇦"
        case .venezuela: return "🇻🇪"
        case .vietnam: return "🇻🇳"

        case .wallisFutuna: return "🇼🇫"
        case .westernSahara: return "🇪🇭"

        case .yemen: return "🇾🇪"

        case .zambia: return "🇿🇲"
        case .zimbabwe: return "🇿🇼"
            
        default: return nil
        }
    }
}
