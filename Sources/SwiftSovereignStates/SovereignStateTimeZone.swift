//
//  SovereignStateTimeZone.swift
//  
//
//  Created by Evan Anderson on 6/17/22.
//

import Foundation

public enum SovereignStateTimeZone : String {
    case abbreviation_coordinated_universal_time = "UTC"

    case acre_time = "America/Rio_Branco"
    case afghanistan_time = "Asia/Kabul"
    case amazon_time = "America/Manaus"

    case america_alaska_standard_time = "America/Anchorage"
    case america_central_standard_time = "America/Chicago"
    case america_eastern_standard_time = "America/New_York"
    case america_hawaii_standard_time = "Pacific/Honolulu"
    case america_mountain_standard_time = "America/Denver"
    case america_pacific_standard_time = "America/Los_Angeles"

    case arabia_time = "Asia/Riyadh"
    case argentina_time = "America/Argentina/Buenos_Aires"

    case australia_central_standard_time = "Australia/Adelaide"
    case australia_central_western_standard_time = "Australia/Eucla"
    case australia_eastern_standard_time = "Australia/Melbourne"
    case australia_western_standard_time = "Australia/Perth"

    case british_standard_time = "Europe/London"
    case brasilia_time = "America/Sao_Paulo"

    case atlantic_standard_time = "America/Halifax"
    case canada_newfoundland_standard_time = "America/St_Johns"

    case cape_verde_time = "Atlantic/Cape_Verde"

    case china_time = "Asia/Shanghai"
    case colombia_time = "America/Bogota"
    case ecuador_time = "America/Santo_Domingo"
    case galapagos_time = "Pacific/Galapagos"

    case europe_central_time = "Africa/Algiers"
    case europe_central_standard_time = "Europe/Stockholm"
    case europe_eastern_standard_time = "Europe/Helsinki"
    case europe_western_standard_time = "Europe/Lisbon"
    case azores_standard_time = "Atlantic/Azores"

    case fiji_time = "Pacific/Fiji"

    case greenland_eastern_standard_time = "America/Scoresbysund"
    case greenland_western_standard_time = "America/Nuuk"

    case india_time = "Asia/Kolkata"
    case iran_standard_time = "Asia/Tehran"
    case irish_standard_time = "Europe/Dublin"

    case japan_time = "Asia/Tokyo"

    case atlantic_time = "America/Blanc-Sablon"
    case central_standard_time = "America/Regina"
    case mountain_standard_time = "America/Hermosillo"
    case eastern_time = "America/Cancun"
    case eastern_european_standard_time = "Europe/Kaliningrad"

    case new_zealand_standard_time = "Pacific/Auckland"
    case new_zealand_chatham_island_standard_time = "Pacific/Chatham"

    case almaty_time = "Asia/Almaty"
    case aqtobe_time = "Asia/Aqtobe"
    case armenia_time = "Asia/Yerevan"
    case azerbaijan_time = "Asia/Baku"
    case bangladesh_time = "Asia/Dhaka"
    case bolivia_time = "America/La_Paz"
    case bougainville_time = "Pacific/Bougainville"
    case bhutan_time = "Asia/Thimphu"
    case brunei_time = "Asia/Brunei"
    case chile_time = "America/Punta_Arenas"
    case chile_standard_time = "America/Santiago"
    case choibalsan_time = "Asia/Choibalsan"
    case chuuk_time = "Pacific/Chuuk"
    case cook_island_time = "Pacific/Rarotonga"
    case falkland_islands_time = "Atlantic/Stanley"
    case georgia_time = "Asia/Tbilisi"
    case gilbert_time = "Pacific/Tarawa"
    case guam_time = "Pacific/Guam"
    case gulf_time = "Asia/Dubai"
    case guyana_time = "America/Guyana"
    case hovd_time = "Asia/Hovd"
    case indochina_time = "Asia/Bangkok"
    case indonesia_central_time = "Asia/Makassar"
    case indonesia_east_time = "Asia/Jayapura"
    case indonesia_west_time = "Asia/Jakarta"
    case israel_standard_time = "Asia/Jerusalem"
    case korea_time = "Asia/Seoul"
    case kosrae_time = "Pacific/Kosrae"
    case kyrgyzstan_time = "Asia/Bishkek"
    case line_time = "Pacific/Kiritimati"
    case malaysia_time = "Asia/Kuala_Lumpur"
    case maldives_times = "Indian/Maldives"
    case marshall_islands = "Pacific/Majuro"
    case mauritius_time = "Indian/Mauritius"
    case myanmar_time = "Asia/Yangon"
    case nauru_time = "Pacific/Nauru"
    case nepal_time = "Asia/Kathmandu"
    case niue_time = "Pacific/Niue"
    case norfolk_standard_time = "Pacific/Norfolk"
    case oral_time = "Asia/Oral"
    case pakistan_time = "Asia/Karachi"
    case palau_time = "Pacific/Palau"
    case papua_new_guinea_time = "Pacific/Port_Moresby"
    case paraguay_standard_time = "America/Asuncion"
    case peru_time = "America/Lima"
    case philippines_time = "Asia/Manila"
    case phoenix_time = "Pacific/Enderbury"
    case pohnpei_time = "Pacific/Pohnpei"
    case samoa_west_standard_time = "Pacific/Apia"
    case seychelles_time = "Indian/Mahe"
    case singapore_time = "Asia/Singapore"
    case soloman_island_time = "Pacific/Guadalcanal"
    case suriname_time = "America/Paramaribo"
    case tajikistan_time = "Asia/Dushanbe"
    case timor_time = "Asia/Dili"
    case tonga_time = "Pacific/Tongatapu"
    case turkey_time = "Europe/Istanbul"
    case tuvlau_time = "Pacific/Funafuti"
    case ulaanbaatar_time = "Asia/Ulaanbaatar"
    case uruguay_time = "America/Montevideo"
    case uzbekistan_time = "Asia/Samarkand"
    case vanuatu_time = "Pacific/Efate"
    case venezuela_time = "America/Caracas"

    case moscow_time = "Europe/Moscow"
    case russia_samara_standard_time = "Europe/Samara"
    case russia_yekaterunburg_standard_time = "Asia/Yekaterinburg"
    case russia_omsk_standard_time = "Asia/Omsk"
    case russia_kransnoyarsk_standard_time = "Asia/Krasnoyarsk"
    case russia_irkutsk_standard_time = "Asia/Irkutsk"
    case russia_yakutsk_standard_time = "Asia/Yakutsk"
    case russia_vladivostok_standard_time = "Asia/Vladivostok"
    case russia_magadan_standard_time = "Asia/Magadan"
    case russia_anadyr_standard_time = "Asia/Anadyr"

    case central_africa_time = "Africa/Maputo"
    case east_africa_time = "Africa/Nairobi"
    case west_africa_time = "Africa/Lagos"

    case south_africa_standard_time = "Africa/Johannesburg"

    case turkmenistan_time = "Asia/Ashgabat"
    
    public func getTimeZone() -> TimeZone? {
        return TimeZone(identifier: rawValue) ?? TimeZone(abbreviation: rawValue)
    }
    
    internal static func get(_ country: Locale.Region) -> [SovereignStateTimeZone] {
        switch country {
        case .afghanistan: return getAfghanistan()
        case .albania,
                .andorra,
                .austria,
                .belgium,
                .bosniaHerzegovina,
                .croatia,
                .czechia,
                .denmark,
                .france,
                .germany,
                .gibraltar,
                .hungary,
                .italy,
                .kosovo,
                .liechtenstein,
                .luxembourg,
                .malta,
                .monaco,
                .montenegro,
                .northMacedonia,
                .norway,
                .netherlands,
                .poland,
                .sanMarino,
                .serbia,
                .slovakia,
                .slovenia,
                .sweden,
                .switzerland,
                .vaticanCity
            :
            return getAlbania()
        case .algeria,
                .tunisia:
            return getAlgeria()
        case .angola,
                .benin,
                .cameroon,
                .centralAfricanRepublic,
                .chad,
                .gabon,
                .niger,
                .nigeria,
                .congoBrazzaville
            :
            return getAngola()
        case .anguilla,
                .antiguaBarbuda,
                .aruba,
                .barbados,
                .dominica,
                .dominicanRepublic,
                .guadeloupe,
                .grenada,
                .puertoRico,
                .trinidadTobago
            :
            return getAnguilla()
        case .argentina: return getArgentina()
        case .armenia: return getArmenia()
        case .australia: return getAustralia()
        case .azerbaijan: return getAzerbaijan()
        case .bahamas,
                .haiti:
            return getBahamas()
        case .bahrain,
                .iraq,
                .kuwait,
                .qatar,
                .saudiArabia,
                .yemen:
            return getBahrain()
        case .bangladesh: return getBangladesh()
        case .bermuda: return getBermuda()
        case .belarus: return getBelarus()
        case .bulgaria,
                .cyprus,
                .estonia,
                .finland,
                .greece,
                .jordan,
                .latvia,
                .lebanon,
                .lithuania,
                .moldova,
                .northernCyprus,
                .romania,
                .syria,
                .transnistria
            :
            return getBulgaria()
        case .belize,
                .costaRica,
                .elSalvador,
                .guatemala,
                .honduras,
                .nicaragua
            :
            return getBelize()
        case .bhutan: return getBhutan()
        case .bolivia: return getBolivia()
        case .botswana,
                .burundi,
                .malawi,
                .mozambique,
                .namibia,
                .rwanda,
                .southSudan,
                .sudan,
                .zambia,
                .zimbabwe
            :
            return getBotswana()
        case .brazil: return getBrazil()
        case .brunei: return getBrunei()
        case .burkinaFaso,
                .gambia,
                .ghana,
                .guinea,
                .guineaBissau,
                .iceland,
                .côteDIvoire,
                .liberia,
                .mali,
                .mauritania,
                .saintHelena,
                .sãoToméPríncipe,
                .senegal,
                .sierraLeone,
                .togo
            :
            return getUTC()
        case .cambodia,
                .laos,
                .thailand,
                .vietnam:
            return getCambodia()
        case .canada: return getCanada()
        case .capeVerde: return getCapeVerde()
        case .chile: return getChile()
        case .chinaMainland,
                .macao,
                .taiwan
            :
            return getChina()
        case .colombia: return getColombia()
        case .comoros,
                .djibouti,
                .eritrea,
                .ethiopia,
                .kenya,
                .madagascar,
                .somalia,
                .somaliland,
                .tanzania,
                .uganda
            :
            return getComoros()
        case .cookIslands: return getCookIslands()
        case .cuba: return getCuba()
        case .congoKinshasa: return getCongoDemocratic()
        case .ecuador: return getEcuador()
        case .egypt,
                .libya:
            return getEgypt()
        case .eswatini,
                .lesotho,
                .southAfrica:
            return getEswatini()
        case .falklandIslands: return getFalklandIslands()
        case .faroeIslands,
                .morocco,
                .westernSahara:
            return getFaroeIslands()
        case .fiji: return getFiji()
        case .georgia: return getGeorgia()
        case .greenland: return getGreenland()
        case .guam,
                .northernMarianaIslands:
            return getGuam()
        case .guyana: return getGuyana()
        case .india,
                .sriLanka:
            return getIndia()
        case .indonesia: return getIndonesia()
        case .iran: return getIran()
        case .ireland: return getIreland()
        case .israel: return getIsrael()
        case .caymanIslands,
                .jamaica,
                .panama:
            return getCaymanIslands()
        case .japan: return getJapan()
        case .kazakhstan: return getKazakhstan()
        case .kiribati: return getKiribati()
        case .kyrgyzstan: return getKyrgyzstan()
        case .malaysia: return getMalaysia()
        case .maldives: return getMaldives()
        case .marshallIslands: return getMarshallIslands()
        case .mauritius: return getMauritius()
        case .mexico: return getMexico()
        case .micronesia: return getMicronesia()
        case .mongolia: return getMongolia()
        case .myanmar: return getMyanmar()
        case .nauru: return getNauru()
        case .nepal: return getNepal()
        case .newZealand: return getNewZealand()
        case .niue: return getNiue()
        case .norfolkIsland: return getNorfolkIsland()
        case .northKorea,
                .southKorea:
            return getNorthKorea()
        case .oman,
                .unitedArabEmirates:
            return getOman()
        case .palau: return getPalau()
        case .papuaNewGuinea: return getPapuaNewGuinea()
        case .paraguay: return getParaguay()
        case .pakistan: return getPakistan()
        case .peru: return getPeru()
        case .philippines: return getPhilippines()
        case .portugal: return getPortugal()
        case .russia: return getRussia()
        case .samoa: return getSamoa()
        case .scotland,
                .unitedKingdom:
            return getScotland()
        case .seychelles: return getSeychelles()
        case .singapore: return getSingapore()
        case .solomonIslands: return getSolomonIslands()
        case .spain: return getSpain()
        case .suriname: return getSuriname()
        case .tajikistan: return getTajikistan()
        case .timorLeste: return getTimor()
        case .tonga: return getTonga()
        case .turkey: return getTurkey()
        case .turkmenistan: return getTurkmenistan()
        case .tuvalu: return getTuvalu()
        case .ukraine: return getUkraine()
        case .unitedStates: return getUnitedStates()
        case .uruguay: return getUruguay()
        case .uzbekistan: return getUzbekistan()
        case .vanuatu: return getVanuatu()
        case .venezuela: return getVenezuela()
        default: return []
        }
    }
    
    private static func get(_ timezones: SovereignStateTimeZone...) -> [SovereignStateTimeZone] {
        return timezones
    }
    private static func getUTC() -> [SovereignStateTimeZone] {
        return get(
            .abbreviation_coordinated_universal_time
        )
    }

    private static func getAfghanistan() -> [SovereignStateTimeZone] {
        return get(
                .afghanistan_time
        )
    }
    private static func getAlgeria() -> [SovereignStateTimeZone] {
        return get(
                .europe_central_time
        )
    }
    private static func getAngola() -> [SovereignStateTimeZone] {
        return get(
            .west_africa_time
        )
    }
    private static func getArgentina() -> [SovereignStateTimeZone] {
        return get(
            .argentina_time
        )
    }
    private static func getArmenia() -> [SovereignStateTimeZone] {
        return get(
            .armenia_time
        )
    }
    private static func getAustralia() -> [SovereignStateTimeZone] {
        return get(
            .australia_central_standard_time,
            .australia_central_western_standard_time,
            .australia_eastern_standard_time,
            .australia_western_standard_time
        )
    }
    private static func getAzerbaijan() -> [SovereignStateTimeZone] {
        return get(
            .azerbaijan_time
        )
    }
    private static func getAlbania() -> [SovereignStateTimeZone] {
        return get(
            .europe_central_standard_time
        )
    }
    private static func getBahamas() -> [SovereignStateTimeZone] {
        return get(
                .america_eastern_standard_time
        )
    }
    private static func getBahrain() -> [SovereignStateTimeZone] {
        return get(
            .arabia_time
        )
    }
    private static func getAnguilla() -> [SovereignStateTimeZone] {
        return get(
                .atlantic_time
        )
    }
    private static func getBelarus() -> [SovereignStateTimeZone] {
        return get(
                .moscow_time
        )
    }
    private static func getBangladesh() -> [SovereignStateTimeZone] {
        return get(
            .bangladesh_time
        )
    }
    private static func getBermuda() -> [SovereignStateTimeZone] {
        return get(
            .atlantic_standard_time
        )
    }
    private static func getBulgaria() -> [SovereignStateTimeZone] {
        return get(
            .europe_eastern_standard_time
        )
    }
    private static func getBelize() -> [SovereignStateTimeZone] {
        return get(
                .central_standard_time
        )
    }
    private static func getBhutan() -> [SovereignStateTimeZone] {
        return get(
            .bhutan_time
        )
    }
    private static func getBolivia() -> [SovereignStateTimeZone] {
        return get(
            .bolivia_time
        )
    }
    private static func getBotswana() -> [SovereignStateTimeZone] {
        return get(
            .central_africa_time
        )
    }
    private static func getBrazil() -> [SovereignStateTimeZone] {
        return get(
            .acre_time,
            .amazon_time,
            .brasilia_time
        )
    }
    private static func getBrunei() -> [SovereignStateTimeZone] {
        return get(
            .brunei_time
        )
    }
    private static func getCapeVerde() -> [SovereignStateTimeZone] {
        return get(
            .cape_verde_time
        )
    }
    private static func getCambodia() -> [SovereignStateTimeZone] {
        return get(
            .indochina_time
        )
    }
    private static func getCanada() -> [SovereignStateTimeZone] {
        return get(
                .atlantic_time,
                .central_standard_time,
                .mountain_standard_time,
                .america_central_standard_time,
                .america_mountain_standard_time,
                .america_pacific_standard_time,
                .america_eastern_standard_time,
                .atlantic_standard_time,
                .canada_newfoundland_standard_time
        )
    }
    private static func getChile() -> [SovereignStateTimeZone] {
        return get(
            .chile_time,
            .chile_standard_time
        )
    }
    private static func getChina() -> [SovereignStateTimeZone] {
        return get(
            .china_time
        )
    }
    private static func getCongoDemocratic() -> [SovereignStateTimeZone] {
        return get(
            .west_africa_time,
            .central_africa_time
        )
    }
    private static func getColombia() -> [SovereignStateTimeZone] {
        return get(
            .colombia_time
        )
    }
    private static func getCookIslands() -> [SovereignStateTimeZone] {
        return get(
            .cook_island_time
        )
    }
    private static func getCuba() -> [SovereignStateTimeZone] {
        return get(
                .america_central_standard_time
        )
    }
    private static func getComoros() -> [SovereignStateTimeZone] {
        return get(
            .east_africa_time
        )
    }
    private static func getEcuador() -> [SovereignStateTimeZone] {
        return get(
            .ecuador_time,
            .galapagos_time
        )
    }
    private static func getEgypt() -> [SovereignStateTimeZone] {
        return get(
                .eastern_european_standard_time
        )
    }
    private static func getEswatini() -> [SovereignStateTimeZone] {
        return get(
            .south_africa_standard_time
        )
    }
    private static func getFalklandIslands() -> [SovereignStateTimeZone] {
        return get(
            .falkland_islands_time
        )
    }
    private static func getFaroeIslands() -> [SovereignStateTimeZone] {
        return get(
            .europe_western_standard_time
        )
    }
    private static func getFiji() -> [SovereignStateTimeZone] {
        return get(
            .fiji_time
        )
    }
    private static func getGeorgia() -> [SovereignStateTimeZone] {
        return get(
                .moscow_time,
                .georgia_time
        )
    }
    private static func getGreenland() -> [SovereignStateTimeZone] {
        return get(
            .atlantic_standard_time,
            .greenland_eastern_standard_time,
            .greenland_western_standard_time
        )
    }
    private static func getGuam() -> [SovereignStateTimeZone] {
        return get(
            .guam_time
        )
    }
    private static func getGuyana() -> [SovereignStateTimeZone] {
        return get(
            .guyana_time
        )
    }
    private static func getIndia() -> [SovereignStateTimeZone] {
        return get(
            .india_time
        )
    }
    private static func getIndonesia() -> [SovereignStateTimeZone] {
        return get(
            .indonesia_west_time,
            .indonesia_central_time,
            .indonesia_east_time
        )
    }
    private static func getIran() -> [SovereignStateTimeZone] {
        return get(
            .iran_standard_time
        )
    }
    private static func getIreland() -> [SovereignStateTimeZone] {
        return get(
            .irish_standard_time
        )
    }
    private static func getIsrael() -> [SovereignStateTimeZone] {
        return get(
            .israel_standard_time
        )
    }
    private static func getCaymanIslands() -> [SovereignStateTimeZone] {
        return get(
                .eastern_time
        )
    }
    private static func getJapan() -> [SovereignStateTimeZone] {
        return get(
            .japan_time
        )
    }
    private static func getKazakhstan() -> [SovereignStateTimeZone] {
        return get(
            .almaty_time,
            .aqtobe_time,
            .oral_time
        )
    }
    private static func getKiribati() -> [SovereignStateTimeZone] {
        return get(
            .gilbert_time,
            .phoenix_time,
            .line_time
        )
    }
    private static func getKyrgyzstan() -> [SovereignStateTimeZone] {
        return get(
            .kyrgyzstan_time
        )
    }
    private static func getMalaysia() -> [SovereignStateTimeZone] {
        return get(
            .malaysia_time
        )
    }
    private static func getMaldives() -> [SovereignStateTimeZone] {
        return get(
            .maldives_times
        )
    }
    private static func getMarshallIslands() -> [SovereignStateTimeZone] {
        return get(
            .marshall_islands
        )
    }
    private static func getMauritius() -> [SovereignStateTimeZone] {
        return get(
            .mauritius_time
        )
    }
    private static func getMexico() -> [SovereignStateTimeZone] {
        return get(
                .mountain_standard_time,
                .eastern_time,
                .america_central_standard_time,
                .america_mountain_standard_time,
                .america_pacific_standard_time
        )
    }
    private static func getMicronesia() -> [SovereignStateTimeZone] {
        return get(
            .chuuk_time,
            .pohnpei_time,
            .kosrae_time
        )
    }
    private static func getMongolia() -> [SovereignStateTimeZone] {
        return get(
            .choibalsan_time,
                .hovd_time,
            .ulaanbaatar_time
        )
    }
    private static func getMyanmar() -> [SovereignStateTimeZone] {
        return get(
            .myanmar_time
        )
    }
    private static func getNauru() -> [SovereignStateTimeZone] {
        return get(
            .nauru_time
        )
    }
    private static func getNepal() -> [SovereignStateTimeZone] {
        return get(
            .nepal_time
        )
    }
    private static func getNewZealand() -> [SovereignStateTimeZone] {
        return get(
            .new_zealand_chatham_island_standard_time,
            .new_zealand_standard_time
        )
    }
    private static func getNiue() -> [SovereignStateTimeZone] {
        return get(
            .niue_time
        )
    }
    private static func getNorfolkIsland() -> [SovereignStateTimeZone] {
        return get(
            .norfolk_standard_time
        )
    }
    private static func getNorthKorea() -> [SovereignStateTimeZone] {
        return get(
            .korea_time
        )
    }
    private static func getOman() -> [SovereignStateTimeZone] {
        return get(
            .gulf_time
        )
    }
    private static func getPalau() -> [SovereignStateTimeZone] {
        return get(
            .palau_time
        )
    }
    private static func getPapuaNewGuinea() -> [SovereignStateTimeZone] {
        return get(
            .papua_new_guinea_time,
            .bougainville_time
        )
    }
    private static func getParaguay() -> [SovereignStateTimeZone] {
        return get(
            .paraguay_standard_time
        )
    }
    private static func getPakistan() -> [SovereignStateTimeZone] {
        return get(
            .pakistan_time
        )
    }
    private static func getPeru() -> [SovereignStateTimeZone] {
        return get(
            .peru_time
        )
    }
    private static func getPhilippines() -> [SovereignStateTimeZone] {
        return get(
            .philippines_time
        )
    }
    private static func getPortugal() -> [SovereignStateTimeZone] {
        return get(
            .azores_standard_time,
            .europe_western_standard_time
        )
    }
    private static func getRussia() -> [SovereignStateTimeZone] {
        return get(
                .eastern_european_standard_time,
                .moscow_time,
                .russia_samara_standard_time,
                .russia_yekaterunburg_standard_time,
                .russia_omsk_standard_time,
                .russia_kransnoyarsk_standard_time,
                .russia_irkutsk_standard_time,
                .russia_yakutsk_standard_time,
                .russia_vladivostok_standard_time,
                .russia_anadyr_standard_time
        )
    }
    private static func getSamoa() -> [SovereignStateTimeZone] {
        return get(
            .samoa_west_standard_time
        )
    }
    private static func getSeychelles() -> [SovereignStateTimeZone] {
        return get(
            .seychelles_time
        )
    }
    private static func getSingapore() -> [SovereignStateTimeZone] {
        return get(
            .singapore_time
        )
    }
    private static func getSolomonIslands() -> [SovereignStateTimeZone] {
        return get(
            .soloman_island_time
        )
    }
    private static func getSpain() -> [SovereignStateTimeZone] {
        return get(
            .europe_central_standard_time,
            .europe_western_standard_time
        )
    }
    private static func getSuriname() -> [SovereignStateTimeZone] {
        return get(
            .suriname_time
        )
    }
    private static func getTajikistan() -> [SovereignStateTimeZone] {
        return get(
            .tajikistan_time
        )
    }
    private static func getTimor() -> [SovereignStateTimeZone] {
        return get(
            .timor_time
        )
    }
    private static func getTonga() -> [SovereignStateTimeZone] {
        return get(
            .tonga_time
        )
    }
    private static func getTurkey() -> [SovereignStateTimeZone] {
        return get(
            .turkey_time
        )
    }
    private static func getTurkmenistan() -> [SovereignStateTimeZone] {
        return get(
            .turkmenistan_time
        )
    }
    private static func getTuvalu() -> [SovereignStateTimeZone] {
        return get(
            .tuvlau_time
        )
    }
    private static func getUkraine() -> [SovereignStateTimeZone] {
        return get(
            .europe_eastern_standard_time,
            .moscow_time
        )
    }
    private static func getScotland() -> [SovereignStateTimeZone] {
        return get(
            .british_standard_time
        )
    }
    private static func getUnitedStates() -> [SovereignStateTimeZone] {
        return get(
                .mountain_standard_time,
                .america_alaska_standard_time,
                .america_central_standard_time,
                .america_mountain_standard_time,
                .america_hawaii_standard_time,
                .america_pacific_standard_time,
                .america_eastern_standard_time
        )
    }
    private static func getUruguay() -> [SovereignStateTimeZone] {
        return get(
            .uruguay_time
        )
    }
    private static func getUzbekistan() -> [SovereignStateTimeZone] {
        return get(
            .uzbekistan_time
        )
    }
    private static func getVanuatu() -> [SovereignStateTimeZone] {
        return get(
            .vanuatu_time
        )
    }
    private static func getVenezuela() -> [SovereignStateTimeZone] {
        return get(
            .venezuela_time
        )
    }
}
