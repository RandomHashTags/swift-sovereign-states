//
//  SovereignStateISOAlpha2.swift
//  
//
//  Created by Evan Anderson on 6/13/22.
//

import Foundation

internal enum SovereignStateISOAlpha2 {
    static func get(_ country: Country) -> String? {
        switch country {
        case .abkhazia: return nil
        case .artsakh: return nil
        case .kosovo: return nil
        case .northern_cyprus: return nil
        case .scotland: return nil
        case .somaliland: return nil
        case .transnistria: return nil

        case .afghanistan: return "AF"
        //case .ALAND_ISLANDS: "AX"
        case .albania: return "AL"
        case .algeria: return "DZ"
        case .american_samoa: return "AS"
        case .andorra: return "AD"
        case .angola: return "AO"
        case .anguilla: return "AI"
        case .antigua_and_barbuda: return "AG"
        case .argentina: return "AR"
        case .armenia: return "AM"
        case .aruba: return "AW"
        case .australia: return "AU"
        case .austria: return "AT"
        case .azerbaijan: return "AZ"

        case .bahamas: return "BS"
        case .bahrain: return "BH"
        case .bangladesh: return "BD"
        case .barbados: return "BB"
        case .belarus: return "BY"
        case .belgium: return "BE"
        case .belize: return "BZ"
        case .benin: return "BJ"
        case .bermuda: return "BM"
        case .bhutan: return "BT"
        case .bolivia: return "BO"
        case .bosnia_and_herzegovina: return "BA"
        case .botswana: return "BW"
        case .brazil: return "BR"
        case .british_virgin_islands: return "VG"
        case .brunei: return "BN"
        case .bulgaria: return "BG"
        case .burkina_faso: return "BF"
        case .burundi: return "BI"

        case .cambodia: return "KH"
        case .cameroon: return "CM"
        case .canada: return "CA"
        case .cape_verde: return "CV"
        case .cayman_islands: return "KY"
        case .central_african_republic: return "CF"
        case .chad: return "TD"
        case .chile: return "CL"
        case .china: return "CN"
        case .colombia: return "CO"
        case .comoros: return "KM"
        case .republic_of_the_congo: return "CG"
        case .democratic_republic_of_the_congo: return "CD"
        case .cook_islands: return "CK"
        case .costa_rica: return "CR"
        case .ivory_coast: return "CI"
        case .croatia: return "HR"
        case .cuba: return "CU"
        case .curacao: return "CW"
        case .cyprus: return "CY"
        case .czech_republic: return "CZ"

        case .denmark: return "DK"
        case .djibouti: return "DJ"
        case .dominica: return "DM"
        case .dominican_republic: return "DO"

        case .ecuador: return "EC"
        case .egypt: return "EG"
        case .el_salvador: return "SV"
        case .equatorial_guinea: return "GQ"
        case .eritrea: return "ER"
        case .estonia: return "EE"
        case .eswatini: return "SZ"
        case .ethiopia: return "ET"

        case .falkland_islands: return "FK"
        case .faroe_islands: return "FO"
        case .fiji: return "FJ"
        case .finland: return "FI"
        case .france: return "FR"
        case .french_polynesia: return "PF"

        case .gabon: return "GA"
        case .gambia: return "GM"
        case .georgia: return "GE"
        case .germany: return "DE"
        case .ghana: return "GH"
        case .gibraltar: return "GI"
        case .greece: return "GR"
        case .greenland: return "GL"
        case .grenada: return "GD"
        case .guadeloupe: return "GP"
        case .guam: return "GU"
        case .guatemala: return "GT"
        case .guernsey: return "GG"
        case .guinea: return "GN"
        case .guinea_bissau: return "GW"
        case .guyana: return "GY"

        case .haiti: return "HT"
        case .honduras: return "HN"
        case .hong_kong: return "HK"
        case .hungary: return "HU"

        case .iceland: return "IS"
        case .india: return "IN"
        case .indonesia: return "ID"
        case .iran: return "IR"
        case .iraq: return "IQ"
        case .ireland: return "IE"
        case .israel: return "IL"
        case .isle_of_man: return "IM"
        case .italy: return "IT"

        case .jamaica: return "JM"
        case .japan: return "JP"
        case .jersey: return "JE"
        case .jordan: return "JO"

        case .kazakhstan: return "KZ"
        case .kenya: return "KE"
        case .kiribati: return "KI"
        case .north_korea: return "KP"
        case .south_korea: return "KR"
        case .kuwait: return "KW"
        case .kyrgyzstan: return "KG"

        case .laos: return "LA"
        case .latvia: return "LV"
        case .lebanon: return "LB"
        case .lesotho: return "LS"
        case .liberia: return "LR"
        case .libya: return "LY"
        case .liechtenstein: return "LI"
        case .lithuania: return "LT"
        case .luxembourg: return "LU"

        case .macau: return "MO"
        case .madagascar: return "MG"
        case .malawi: return "MW"
        case .malaysia: return "MY"
        case .maldives: return "MV"
        case .mali: return "ML"
        case .malta: return "MT"
        case .marshall_islands: return "MH"
        //case .MARINIQUE: return "MQ"
        case .mauritania: return "MR"
        case .mauritius: return "MU"
        //case .MAYOTTE: return "YT"
        case .mexico: return "MX"
        case .micronesia: return "FM"
        case .moldova: return "MD"
        case .monaco: return "MC"
        case .mongolia: return "MN"
        case .montenegro: return "ME"
        case .montserrat: return "MS"
        case .morocco: return "MA"
        case .mozambique: return "MZ"
        case .myanmar: return "MM"

        case .namibia: return "NA"
        case .nauru: return "NR"
        case .nepal: return "NP"
        case .netherlands: return "NL"
        case .new_caledonia: return "NC"
        case .new_zealand: return "NZ"
        case .nicaragua: return "NI"
        case .niger: return "NE"
        case .nigeria: return "NG"
        case .niue: return "NU"
        case .norfolk_island: return "NF"
        case .north_macedonia: return "MK"
        case .northern_mariana_islands: return "MP"
        case .norway: return "NO"

        case .oman: return "OM"

        case .pakistan: return "PK"
        case .palau: return "PW"
        case .palestine: return "PS"
        case .panama: return "PA"
        case .papua_new_guinea: return "PG"
        case .paraguay: return "PY"
        case .peru: return "PE"
        case .philippines: return "PH"
        //case .PITCAIRN_ISLANDS: return "PN"
        case .poland: return "PL"
        case .portugal: return "PT"
        case .puerto_rico: return "PR"

        case .qatar: return "QA"

        //case .REUNION: return "RE"
        case .romania: return "RO"
        case .russia: return "RU"
        case .rwanda: return "RW"

        case .saint_barthelemy: return "BL"
        case .saint_helena_ascension_and_tristan_da_cunha: return "SH"
        case .saint_kitts_and_nevis: return "KN"
        case .saint_lucia: return "LC"
        case .saint_martin: return "MF"
        case .saint_pierre_and_miquelon: return "PM"
        case .saint_vincent_and_the_grenadines: return "VC"
        case .samoa: return "WS"
        case .san_marino: return "SM"
        case .sao_tome_and_principe: return "ST"
        case .saudi_arabia: return "SA"
        case .senegal: return "SN"
        case .serbia: return "RS"
        case .seychelles: return "SC"
        case .sierra_leone: return "SL"
        case .singapore: return "SG"
        //case .SINT_MAARTEN: return "SX"
        case .slovakia: return "SK"
        case .slovenia: return "SI"
        case .solomon_islands: return "SB"
        case .somalia: return "SO"
        case .south_africa: return "ZA"
        //case .SOUTH_GEORGIA_AND_THE_SOUTH_SANDWICH_ISLANDS: return "GS"
        case .south_sudan: return "SS"
        case .spain: return "ES"
        case .sri_lanka: return "LK"
        case .sudan: return "SD"
        case .suriname: return "SR"
        case .sweden: return "SE"
        case .switzerland: return "CH"
        case .syria: return "SY"

        case .taiwan: return "TW"
        case .tajikistan: return "TJ"
        case .tanzania: return "TZ"
        case .thailand: return "TH"
        case .timor_leste: return "TP"
        case .togo: return "TG"
        case .tokelau: return "TK"
        case .tonga: return "TO"
        case .trinidad_and_tobago: return "TT"
        case .tunisia: return "TN"
        case .turkey: return "TR"
        case .turkmenistan: return "TM"
        case .turks_and_caicos_islands: return "TC"
        case .tuvalu: return "TV"

        case .uganda: return "UG"
        case .ukraine: return "UA"
        case .united_arab_emirates: return "AE"
        case .united_kingdom: return "GB"
        //case .UNITED_STATES_MINOR_OUTLYING_ISLANDS: return "UM"
        case .united_states: return "US"
        case .united_states_virgin_islands: return "VI"
        case .uruguay: return "UY"
        case .uzbekistan: return "UZ"

        case .vanuatu: return "VU"
        case .vatican_city: return "VA"
        case .venezuela: return "VE"
        case .vietnam: return "VN"

        case .wallis_and_futuna: return "WF"
        case .western_sahara: return "EH"

        case .yemen: return "YE"

        case .zambia: return "ZM"
        case .zimbabwe: return "ZW"
        }
    }
    
    static func getAlias(_ country: Country) -> String? {
        switch country {
        case .greece: return "EL"
        case .united_kingdom: return "UK"
        default: return nil
        }
    }
    
    static func getParentGroup(_ country: Country) -> String? {
        switch country {
        case .austria,
                .belgium,
                .bulgaria,
                .croatia,
                .cyprus,
                .czech_republic,
                .denmark,
                .estonia,
                .finland,
                .france,
                .germany,
                .greece,
                .hungary,
                .italy,
                .latvia,
                .lithuania,
                .luxembourg,
                .malta,
                .netherlands,
                .poland,
                .portugal,
                .ireland,
                .romania,
                .slovakia,
                .slovenia,
                .spain,
                .sweden,
            
                .guadeloupe,
                .saint_martin:
                return "EU"
            default:
                return nil
        }
    }
}
