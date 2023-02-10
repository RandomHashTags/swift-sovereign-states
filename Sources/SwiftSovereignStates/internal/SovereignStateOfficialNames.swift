//
//  SovereignStateOfficialNames.swift
//  
//
//  Created by Evan Anderson on 6/30/22.
//

import Foundation

internal enum SovereignStateOfficialNames {
    static func get(_ country: Country) -> Set<String>? {
        switch country {
        case .abkhazia: return ["Republic of Abkhazia"]
        case .artsakh: return ["Republic of Artsakh"]
        case .cook_islands: return nil
        case .kosovo: return ["Republic of Kosovo"]
        case .niue: return nil
        case .northern_cyprus: return ["Turkish Republic of Northern Cyprus"]
        case .somaliland: return ["Republic of Somaliland"]
        case .taiwan: return ["Republic of China"]
        case .transnistria: return ["Pridnestrovian Moldavian Republic"]

        case .afghanistan: return ["Islamic Emirate of Afghanistan"]
        case .albania: return ["Republic of Albania"]
        case .algeria: return ["People's Democratic Republic of Algeria"]
        case .american_samoa: return nil
        case .andorra: return ["Principality of Andorra"]
        case .angola: return ["Republic of Angola"]
        case .anguilla: return nil
        case .antigua_and_barbuda: return nil
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
        case .bosnia_and_herzegovina: return nil
        case .botswana: return ["Republic of Botswana"]
        case .brazil: return ["Federative Republic of Brazil"]
        case .british_virgin_islands: return ["Virgin Islands"]
        case .brunei: return ["Brunei Darussalam"]
        case .bulgaria: return ["Republic of Bulgaria"]
        case .burkina_faso: return nil
        case .burundi: return ["Republic of Burundi"]

        case .cambodia: return ["Kingdom of Cambodia"]
        case .cameroon: return ["Republic of Cameroon"]
        case .canada: return nil
        case .cape_verde: return ["Republic of Cabo Verde"]
        case .cayman_islands: return nil
        case .central_african_republic: return nil
        case .chad: return ["Republic of Chad"]
        case .chile: return ["Republic of Chile"]
        case .china: return ["People's Republic of China"]
        case .colombia: return ["Republic of Colombia"]
        case .comoros: return ["Union of the Comoros"]
        case .democratic_republic_of_the_congo: return nil
        case .republic_of_the_congo: return nil
        case .costa_rica: return ["Republic of Costa Rica"]
        case .croatia: return ["Republic of Croatia"]
        case .cuba: return ["Republic of Cuba"]
        case .curacao: return ["Country of Curaçao"]
        case .cyprus: return ["Republic of Cyprus"]
        case .czech_republic: return nil

        case .denmark: return ["Kingdom of Denmark"]
        case .djibouti: return ["Republic of Djibouti"]
        case .dominica: return ["Commonwealth of Dominica"]
        case .dominican_republic: return nil

        case .timor_leste: return ["Democratic Republic of Timor-Leste"]
        case .ecuador: return ["Republic of Ecuador"]
        case .egypt: return ["Arab Republic of Egypt"]
        case .equatorial_guinea: return ["Republic of Equatorial Guinea"]
        case .el_salvador: return ["Republic of El Salvador"]
        case .eritrea: return ["State of Eritrea"]
        case .estonia: return ["Republic of Estonia"]
        case .eswatini: return ["Kingdom of Eswatini"]
        case .ethiopia: return ["Federal Democratic Republic of Ethiopia"]

        case .falkland_islands: return nil
        case .faroe_islands: return nil

        case .fiji: return ["Republic of Fiji"]
        case .finland: return ["Republic of Finland"]
        case .france: return ["French Republic"]
        case .french_polynesia: return nil

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
        case .guinea_bissau: return ["Republic of Guinea-Bissau"]
        case .guyana: return ["Co-operative Republic of Guyana"]

        case .haiti: return ["Republic of Haiti"]
        case .honduras: return ["Republic of Honduras"]
        case .hong_kong: return ["Hong Kong Special Administrative Region of the People's Republic of China"]
        case .hungary: return nil

        case .iceland: return nil
        case .india: return ["Republic of India"]
        case .indonesia: return ["Republic of Indonesia"]
        case .iran: return ["Islamic Republic of Iran"]
        case .iraq: return ["Republic of Iraq"]
        case .ireland: return nil
        case .israel: return ["State of Israel"]
        case .isle_of_man: return nil
        case .italy: return ["Italian Republic"]
        case .ivory_coast: return ["Republic of Côte d'Ivoire"]

        case .jamaica: return nil
        case .japan: return nil
        case .jersey: return ["Bailiwick of Jersey"]
        case .jordan: return  ["Hashemite Kingdom of Jordan"]

        case .kazakhstan: return ["Republic of Kazakhstan"]
        case .kenya: return ["Republic of Kenya"]
        case .kiribati: return ["Republic of Kiribati"]
        case .north_korea: return ["Democratic People's Republic of Korea"]
        case .south_korea: return ["Republic of Korea"]
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

        case .macau: return ["Macao Special Administrative Region of the People's Republic of China"]
        case .madagascar: return ["Republic of Madagascar"]
        case .malawi: return ["Republic of Malawi"]
        case .malaysia: return nil
        case .maldives: return ["Republic of Maldives"]
        case .mali: return ["Republic of Mali"]
        case .malta: return ["Republic of Malta"]
        case .marshall_islands: return ["Republic of the Marshall Islands"]
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
        case .new_caledonia: return nil
        case .new_zealand: return nil
        case .nicaragua: return ["Republic of Nicaragua"]
        case .niger: return ["Republic of the Niger"]
        case .nigeria: return ["Federal Republic of Nigeria"]
        case .norfolk_island: return nil
        case .north_macedonia: return ["Republic of North Macedonia"]
        case .northern_mariana_islands: return nil
        case .norway: return ["Kingdom of Norway"]

        case .oman: return ["Sultanate of Oman"]

        case .pakistan: return ["Islamic Republic of Pakistan"]
        case .palau: return ["Republic of Palau"]
        case .palestine: return ["State of Palestine"]
        case .panama: return ["Republic of Panama"]
        case .papua_new_guinea: return ["Independent State of Papua New Guinea"]
        case .paraguay: return ["Republic of Paraguay"]
        case .peru: return ["Republic of Peru"]
        case .philippines: return ["Republic of the Philippines"]
        case .poland: return ["Republic of Poland"]
        case .portugal: return ["Portuguese Republic"]
        case .puerto_rico: return nil

        case .qatar: return ["State of Qatar"]

        case .romania: return nil
        case .russia: return ["Russian Federation"]
        case .rwanda: return ["Republic of Rwanda"]

        case .saint_barthelemy: return ["Territorial Collectivity of Saint Barthélemy"]
        case .saint_helena_ascension_and_tristan_da_cunha: return nil
        case .saint_kitts_and_nevis: return ["Federation of Saint Christopher and Nevis"]
        case .saint_lucia: return nil
        case .saint_martin: return ["Collectivity of Saint Martin"]
        case .saint_pierre_and_miquelon: return ["Territorial Collectivity of Saint-Pierre and Miquelon"]
        case .saint_vincent_and_the_grenadines: return nil
        case .samoa: return ["Independent State of Samoa"]
        case .san_marino: return ["Republic of San Marino"]
        case .sao_tome_and_principe: return ["Democratic Republic of São Tomé and Príncipe"]
        case .saudi_arabia: return ["Kingdom of Saudi Arabia"]
        case .scotland: return nil
        case .senegal: return ["Republic of Senegal"]
        case .serbia: return ["Republic of Serbia"]
        case .seychelles: return ["Republic of Seychelles"]
        case .sierra_leone: return ["Republic of Sierra Leone"]
        case .singapore: return ["Republic of Singapore"]
        case .slovakia: return ["Slovak Republic"]
        case .slovenia: return ["Republic of Slovenia"]
        case .solomon_islands: return nil
        case .somalia: return ["Federal Republic of Somalia"]
        case .south_africa: return ["Republic of South Africa"]
        case .south_sudan: return ["Republic of South Sudan"]
        case .spain: return ["Kingdom of Spain"]
        case .sri_lanka: return ["Sri Lanka"]
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
        case .trinidad_and_tobago: return ["Republic of Trinidad and Tobago"]
        case .tunisia: return ["Republic of Tunisia"]
        case .turkey: return ["Republic of Turkey"]
        case .turkmenistan: return nil
        case .turks_and_caicos_islands: return nil
        case .tuvalu: return nil

        case .uganda: return ["Republic of Uganda"]
        case .ukraine: return nil
        case .united_arab_emirates: return nil
        case .united_kingdom: return ["United Kingdom of Great Britian and Northern Ireland"]
        case .united_states: return ["United States of America"]
        case .united_states_virgin_islands: return ["Virgin Islands of the United States"]
        case .uruguay: return ["Oriental Republic of Uruguay"]
        case .uzbekistan: return ["Uzbekistan"]

        case .vanuatu: return ["Republic of Vanuatu"]
        case .vatican_city: return ["Vatican City State"]
        case .venezuela: return ["Bolivarian Republic of Venezuela"]

        case .vietnam: return ["Socialist Republic of Vietnam"]

        case .wallis_and_futuna: return ["Territory of the Wallis and Futuna Islands"]
        case .western_sahara: return nil

        case .yemen: return ["Republic of Yemen"]

        case .zambia: return ["Republic of Zambia"]
        case .zimbabwe: return ["Republic of Zimbabwe"]
        }
    }
}
