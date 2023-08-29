//
//  SovereignStateAliases.swift
//
//
//  Created by Evan Anderson on 8/28/23.
//

import Foundation

internal enum SovereignStateAliases {
    static func get(_ region: Locale.Region) -> Set<String>? {
        switch region {
        case .afghanistan: return ["Islamic Republic of Afghanistan"]
        case .bahamas: return ["The Bahamas", "Bahamas, the"]
        case .bolivia: return ["Bolivia (Plurinational State of)"]
        case .bosniaHerzegovina: return ["BiH", "B&H", "Bosnia–Herzegovina", "Bosnia-Herzegovina", "Bosnia"]
        case .capeVerde: return ["Cabo Verde"]
        case .chinaMainland: return ["People's Republic of China", "China, People's Republic of"]
        case .côteDIvoire: return ["Côte d'Ivoire", "Cote d'Ivoire", "Côte d’Ivoire"]
        case .curaçao: return ["Curacao"]
        case .czechia: return ["Czechia"]
        case .congoKinshasa: return ["Congo, Democratic Republic of", "Congo, Democratic Republic of the", "Congo-Kinshasa", "Democratic Republic of Congo", "DR Congo", "the DRC", "DROC", "Congo, the", "Congo", "Congo, Dem.", "Congo (Democratic Republic of the)"]
        case .eswatini: return ["Swaziland", "Eswatini (Swaziland)"]
        case .faroeIslands: return ["Faroe Islands (Denmark)"]
        case .gambia: return ["The Gambia", "Gambia, the"]
        case .greenland: return ["Greenland (Denmark)"]
        case .guineaBissau: return ["Guinea-Bissau"]
        case .hongKong: return ["Hong Kong SAR", "Hong Kong (China)"]
        case .iran: return ["Persia", "Iran, Islamic Republic of", "Iran (Islamic Republic of)"]
        case .isleOfMan: return ["Mann", "Man, Isle of"]
        case .luxembourg: return ["Luxemburg"]
        case .macao: return ["Macao", "Macau, SAR of China"]
        case .micronesia: return ["Micronesia, Federated States of", "Micronesia (Federated States of)", "F.S. Micronesia"]
        case .moldova: return ["Moldova, Republic of", "Moldova (Republic of)"]
        case .myanmar: return ["Burma"]
        case .northKorea: return ["Korea, North", "Korea, Democratic People's Republic of"]
        case .northMacedonia: return ["Macedonia"]
        case .northernCyprus: return ["North Cyprus"]
        case .palestine: return ["Palestine, State of"]
        case .philippines: return ["Philipines"]
        case .congoBrazzaville: return ["Congo, Republic of the", "Congo-Brazzaville", "Republic of Congo", "Congo", "Congo, the", "Congo Republic", "Congo, Rep."]
        case .saintBarthélemy: return ["St. Barthélemy", "Saint Barthelemy"]
        case .saintHelena: return ["Saint Helena, Ascension and Tristan da Cunha", "Saint Helena, Ascension, and Tristan da Cunha", "St. Helena, Ascension and Tristan da Cunha", "Saint Helena", "St. Helena"]
        case .saintKittsNevis: return ["St. Kitts and Nevis"]
        case .saintLucia: return ["St. Lucia"]
        case .saintMartin: return ["St. Martin"]
        case .saintPierreMiquelon: return ["St. Pierre and Miquelon"]
        case .saintVincentGrenadines: return ["St. Vincent and the Grenadines", "Saint Vincent", "St. Vincent"]
        case .sãoToméPríncipe: return ["Sao Tome", "Sao Tome and Principe"]
        case .solomonIslands: return ["Soloman Island"]
        case .southKorea: return ["Korea, South", "Korea (Republic of)", "Korea, Republic of"]
        case .taiwan: return ["Chinese Taipei", "Taiwan (Republic of China)"]
        case .tanzania: return ["Tanzania, United Republic of", "Tanzania (United Republic of)"]
        case .timorLeste: return ["Timor-Leste", "East Timor"]
        case .unitedArabEmirates: return ["UAE"]
        case .unitedStates: return ["United States of America"]
        case .unitedStatesVirginIslands: return ["U.S. Virgin Islands", "United States Virgin Islands", "US Virgin Islands"]
        case .vaticanCity: return ["Holy See"]
        case .venezuela: return ["Venezuela (Bolivarian Republic of)"]
        case .vietnam: return ["Viet Nam"]
        default: return nil
        }
    }
}
