//
//  SovereignStateOfficialNames.swift
//  
//
//  Created by Evan Anderson on 6/30/22.
//

import Foundation

internal enum SovereignStateOfficialNames {
    static func get(_ country: Locale.Region) -> Set<String>? {
        switch country {
        case .abkhazia: return ["Republic of Abkhazia"]
        case .artsakh: return ["Republic of Artsakh"]
        case .cookIslands: return nil
        case .kosovo: return ["Republic of Kosovo"]
        case .niue: return nil
        case .northernCyprus: return ["Turkish Republic of Northern Cyprus"]
        case .somaliland: return ["Republic of Somaliland"]
        case .taiwan: return ["Republic of China"]
        case .transnistria: return ["Pridnestrovian Moldavian Republic"]

        case .afghanistan: return ["Islamic Emirate of Afghanistan"]
        case .albania: return ["Republic of Albania"]
        case .algeria: return ["People's Democratic Republic of Algeria"]
        case .americanSamoa: return nil
        case .andorra: return ["Principality of Andorra"]
        case .angola: return ["Republic of Angola"]
        case .anguilla: return nil
        case .antiguaBarbuda: return nil
        case .argentina: return ["Argentine Republic"]
        case .armenia: return ["Republic of Armenia"]
        case .aruba: return nil
        case .australia: return ["Commonwealth of Australia"]
        case .austria: return ["Republic of Austria"]
        case .azerbaijan: return ["Azerbaijan Republic", "Republic of Azerbaijan"]

        case .bahamas: return ["Commonwealth of The Bahamas"]
        case .bahrain: return ["Kingdom of Bahrain"]
        case .bangladesh: return ["People's Republic of Bangladesh"]
        case .barbados: return nil
        case .belarus: return ["Republic of Belarus"]
        case .belgium: return ["Kingdom of Belgium"]
        case .belize: return nil
        case .benin: return ["Republic of Benin"]
        case .bermuda: return nil
        case .bhutan: return ["Kingdom of Bhutan"]
        case .bolivia: return ["Plurinational State of Bolivia"]
        case .bosniaHerzegovina: return nil
        case .botswana: return ["Republic of Botswana"]
        case .brazil: return ["Federative Republic of Brazil"]
        case .britishVirginIslands: return ["Virgin Islands"]
        case .brunei: return ["Brunei Darussalam"]
        case .bulgaria: return ["Republic of Bulgaria"]
        case .burkinaFaso: return nil
        case .burundi: return ["Republic of Burundi"]

        case .cambodia: return ["Kingdom of Cambodia"]
        case .cameroon: return ["Republic of Cameroon"]
        case .canada: return nil
        case .capeVerde: return ["Republic of Cabo Verde"]
        case .caymanIslands: return nil
        case .centralAfricanRepublic: return nil
        case .chad: return ["Republic of Chad"]
        case .chile: return ["Republic of Chile"]
        case .chinaMainland: return ["People's Republic of China"]
        case .colombia: return ["Republic of Colombia"]
        case .comoros: return ["Union of the Comoros"]
        case .congoKinshasa: return nil
        case .congoBrazzaville: return nil
        case .costaRica: return ["Republic of Costa Rica"]
        case .croatia: return ["Republic of Croatia"]
        case .cuba: return ["Republic of Cuba"]
        case .curaçao: return ["Country of Curaçao"]
        case .cyprus: return ["Republic of Cyprus"]
        case .czechia: return nil

        case .denmark: return ["Kingdom of Denmark"]
        case .djibouti: return ["Republic of Djibouti"]
        case .dominica: return ["Commonwealth of Dominica"]
        case .dominicanRepublic: return nil

        case .timorLeste: return ["Democratic Republic of Timor-Leste"]
        case .ecuador: return ["Republic of Ecuador"]
        case .egypt: return ["Arab Republic of Egypt"]
        case .equatorialGuinea: return ["Republic of Equatorial Guinea"]
        case .elSalvador: return ["Republic of El Salvador"]
        case .eritrea: return ["State of Eritrea"]
        case .estonia: return ["Republic of Estonia"]
        case .eswatini: return ["Kingdom of Eswatini"]
        case .ethiopia: return ["Federal Democratic Republic of Ethiopia"]

        case .falklandIslands: return nil
        case .faroeIslands: return nil

        case .fiji: return ["Republic of Fiji"]
        case .finland: return ["Republic of Finland"]
        case .france: return ["French Republic"]
        case .frenchPolynesia: return nil

        case .gabon: return ["Gabonese Republic"]
        case .gambia: return ["Republic of The Gambia"]
        case .georgia: return ["Republic of Georgia"]
        case .germany: return ["Federal Republic of Germany"]
        case .ghana: return ["Republic of Ghana"]
        case .gibraltar: return nil
        case .greece: return ["Hellenic Republic"]
        case .greenland: return nil
        case .grenada: return nil
        case .guam: return nil
        case .guadeloupe: return nil

        case .guatemala: return ["Republic of Guatemala"]
        case .guernsey: return ["Bailiwick of Guernsey"]
        case .guinea: return ["Republic of Guinea"]
        case .guineaBissau: return ["Republic of Guinea-Bissau"]
        case .guyana: return ["Co-operative Republic of Guyana"]

        case .haiti: return ["Republic of Haiti"]
        case .honduras: return ["Republic of Honduras"]
        case .hongKong: return ["Hong Kong Special Administrative Region of the People's Republic of China"]
        case .hungary: return nil

        case .iceland: return nil
        case .india: return ["Republic of India"]
        case .indonesia: return ["Republic of Indonesia"]
        case .iran: return ["Islamic Republic of Iran"]
        case .iraq: return ["Republic of Iraq"]
        case .ireland: return nil
        case .israel: return ["State of Israel"]
        case .isleofMan: return nil
        case .italy: return ["Italian Republic"]
        case .côteDIvoire: return ["Republic of Côte d'Ivoire"]

        case .jamaica: return nil
        case .japan: return nil
        case .jersey: return ["Bailiwick of Jersey"]
        case .jordan: return  ["Hashemite Kingdom of Jordan"]

        case .kazakhstan: return ["Republic of Kazakhstan"]
        case .kenya: return ["Republic of Kenya"]
        case .kiribati: return ["Republic of Kiribati"]
        case .northKorea: return ["Democratic People's Republic of Korea"]
        case .southKorea: return ["Republic of Korea"]
        case .kuwait: return ["State of Kuwait"]
        case .kyrgyzstan: return ["Kyrgyz Republic"]

        case .laos: return ["Lao People's Democratic Republic"]
        case .latvia: return ["Republic of Latvia"]
        case .lebanon: return ["Republic of Lebanon"]
        case .lesotho: return ["Kingdom of Lesotho"]
        case .liberia: return ["Republic of Liberia"]
        case .libya: return ["State of Libya"]
        case .liechtenstein: return ["Principality of Liechtenstein"]
        case .lithuania: return ["Republic of Lithuania"]
        case .luxembourg: return ["Grand Duchy of Luxembourg"]

        case .macao: return ["Macao Special Administrative Region of the People's Republic of China"]
        case .madagascar: return ["Republic of Madagascar"]
        case .malawi: return ["Republic of Malawi"]
        case .malaysia: return nil
        case .maldives: return ["Republic of Maldives"]
        case .mali: return ["Republic of Mali"]
        case .malta: return ["Republic of Malta"]
        case .marshallIslands: return ["Republic of the Marshall Islands"]
        case .mauritania: return ["Islamic Republic of Mauritania"]
        case .mauritius: return ["Republic of Mauritius"]
        case .mexico: return ["United Mexican States"]
        case .micronesia: return ["Federated States of Micronesia"]
        case .moldova: return ["Republic of Moldova"]
        case .monaco: return ["Principality of Monaco"]
        case .mongolia: return nil
        case .montenegro: return nil
        case .montserrat: return nil
        case .morocco: return ["Kingdom of Morocco"]
        case .mozambique: return ["Republic of Mozambique"]
        case .myanmar: return ["Republic of the Union of Myanmar"]

        case .namibia: return ["Republic of Namibia"]
        case .nauru: return ["Republic of Nauru"]
        case .nepal: return ["Federal Democratic Republic of Nepal"]
        case .netherlands: return nil
        case .newCaledonia: return nil
        case .newZealand: return nil
        case .nicaragua: return ["Republic of Nicaragua"]
        case .niger: return ["Republic of the Niger"]
        case .nigeria: return ["Federal Republic of Nigeria"]
        case .norfolkIsland: return nil
        case .northMacedonia: return ["Republic of North Macedonia"]
        case .northernMarianaIslands: return nil
        case .norway: return ["Kingdom of Norway"]

        case .oman: return ["Sultanate of Oman"]

        case .pakistan: return ["Islamic Republic of Pakistan"]
        case .palau: return ["Republic of Palau"]
        case .palestine: return ["State of Palestine"]
        case .panama: return ["Republic of Panama"]
        case .papuaNewGuinea: return ["Independent State of Papua New Guinea"]
        case .paraguay: return ["Republic of Paraguay"]
        case .peru: return ["Republic of Peru"]
        case .philippines: return ["Republic of the Philippines"]
        case .poland: return ["Republic of Poland"]
        case .portugal: return ["Portuguese Republic"]
        case .puertoRico: return nil

        case .qatar: return ["State of Qatar"]

        case .romania: return nil
        case .russia: return ["Russian Federation"]
        case .rwanda: return ["Republic of Rwanda"]

        case .saintBarthélemy: return ["Territorial Collectivity of Saint Barthélemy"]
        case .saintHelena: return nil
        case .saintKittsNevis: return ["Federation of Saint Christopher and Nevis"]
        case .saintLucia: return nil
        case .saintMartin: return ["Collectivity of Saint Martin"]
        case .saintPierreMiquelon: return ["Territorial Collectivity of Saint-Pierre and Miquelon"]
        case .saintVincentGrenadines: return nil
        case .samoa: return ["Independent State of Samoa"]
        case .sanMarino: return ["Republic of San Marino"]
        case .sãoToméPríncipe: return ["Democratic Republic of São Tomé and Príncipe"]
        case .saudiArabia: return ["Kingdom of Saudi Arabia"]
        case .scotland: return nil
        case .senegal: return ["Republic of Senegal"]
        case .serbia: return ["Republic of Serbia"]
        case .seychelles: return ["Republic of Seychelles"]
        case .sierraLeone: return ["Republic of Sierra Leone"]
        case .singapore: return ["Republic of Singapore"]
        case .slovakia: return ["Slovak Republic"]
        case .slovenia: return ["Republic of Slovenia"]
        case .solomonIslands: return nil
        case .somalia: return ["Federal Republic of Somalia"]
        case .southAfrica: return ["Republic of South Africa"]
        case .southSudan: return ["Republic of South Sudan"]
        case .spain: return ["Kingdom of Spain"]
        case .sriLanka: return ["Sri Lanka"]
        case .sudan: return ["Republic of the Sudan"]
        case .suriname: return ["Republic of Suriname"]
        case .sweden: return ["Kingdom of Sweden"]
        case .switzerland: return ["Swiss Confederation"]
        case .syria: return ["Syrian Arab Republic"]

        case .tajikistan: return ["Republic of Tajikistan"]
        case .tanzania: return ["United Republic of Tanzania"]
        case .thailand: return ["Kingdom of Thailand"]
        case .togo: return ["Togolese Republic"]
        case .tokelau: return nil
        case .tonga: return ["Kingdom of Tonga"]
        case .trinidadTobago: return ["Republic of Trinidad and Tobago"]
        case .tunisia: return ["Republic of Tunisia"]
        case .turkey: return ["Republic of Turkey"]
        case .turkmenistan: return nil
        case .turksCaicosIslands: return nil
        case .tuvalu: return nil

        case .uganda: return ["Republic of Uganda"]
        case .ukraine: return nil
        case .unitedArabEmirates: return nil
        case .unitedKingdom: return ["United Kingdom of Great Britian and Northern Ireland"]
        case .unitedStates: return ["United States of America"]
        case .unitedStatesVirginIslands: return ["Virgin Islands of the United States"]
        case .uruguay: return ["Oriental Republic of Uruguay"]
        case .uzbekistan: return ["Uzbekistan"]

        case .vanuatu: return ["Republic of Vanuatu"]
        case .vaticanCity: return ["Vatican City State"]
        case .venezuela: return ["Bolivarian Republic of Venezuela"]

        case .vietnam: return ["Socialist Republic of Vietnam"]

        case .wallisFutuna: return ["Territory of the Wallis and Futuna Islands"]
        case .westernSahara: return nil

        case .yemen: return ["Republic of Yemen"]

        case .zambia: return ["Republic of Zambia"]
        case .zimbabwe: return ["Republic of Zimbabwe"]
            
        default: return nil
        }
    }
}
