//
//  SwiftSovereignStates.swift
//  
//
//  Created by Evan Anderson on 9/19/22.
//

import Foundation

@attached(member, names: arbitrary)
public macro SubdivisionCases() = #externalMacro(module: "SwiftSovereignStatesMacros", type: "SubdivisionCases")

#if !(os(macOS) || os(iOS) || os(tvOS) || os(watchOS) || os(visionOS) )

// MARK: Locale.Region
public extension Locale {
    struct Region : Hashable, Codable, Sendable, ExpressibleByStringLiteral, CustomDebugStringConvertible {
        public let identifier:String

        public init(_ identifier: String) {
            self.identifier = identifier
        }

        //public let isISORegion:Bool
        //public let subRegions:[Locale.Region]
    }
}


// MARK: Locale.Region Declarations
private extension Locale.Region {
    static func get(_ identifier: String) -> Locale.Region {
        return Locale.Region(identifier)
    }
}
public extension Locale.Region {
    static let world = get("001")
    static let asia = get("142")
    static let europe = get("150")
    static let africa = get("002")
    static let americas = get("019")
    static let oceania = get("009")
    static let centralAsia = get("143")
    static let easternEurope = get("151")
    static let northernEurope = get("154")
    static let westernEurope = get("155")
    static let northernAfrica = get("015")
    static let centralAmerica = get("013")
    static let outlyingOceania = get("QO")
    static let southAmerica = get("005")
    static let easternAfrica = get("014")
    static let middleAfrica = get("017")
    static let southernAfrica = get("018")
    static let northernAmerica = get("021")
    static let polynesia = get("061")
    static let caribbean = get("029")
    static let easternAsia = get("030")
    static let southernAsia = get("034")
    static let southeastAsia = get("035")
    static let southernEurope = get("039")
    static let australasia = get("053")
    static let melanesia = get("054")
    static let micronesianRegion = get("057")
    static let westernAsia = get("145")
    static let westernAfrica = get("011")
    static let argentina = get("AR")
    static let americanSamoa = get("AS")
    static let austria = get("AT")
    static let australia = get("AU")
    static let aruba = get("AW")
    static let ålandIslands = get("AX")
    static let azerbaijan = get("AZ")
    static let bosniaHerzegovina = get("BA")
    static let barbados = get("BB")
    static let bangladesh = get("BD")
    static let belgium = get("BE")
    static let burkinaFaso = get("BF")
    static let bulgaria = get("BG")
    static let bahrain = get("BH")
    static let burundi = get("BI")
    static let benin = get("BJ")
    static let saintBarthélemy = get("BL")
    static let bermuda = get("BM")
    static let brunei = get("BN")
    static let bolivia = get("BO")
    static let caribbeanNetherlands = get("BQ")
    static let brazil = get("BR")
    static let bahamas = get("BS")
    static let bhutan = get("BT")
    static let bouvetIsland = get("BV")
    static let botswana = get("BW")
    static let belarus = get("BY")
    static let belize = get("BZ")
    static let canada = get("CA")
    static let cocosIslands = get("CC")
    static let congoKinshasa = get("CD")
    static let centralAfricanRepublic = get("CF")
    static let congoBrazzaville = get("CG")
    static let switzerland = get("CH")
    static let côteDIvoire = get("CI")
    static let cookIslands = get("CK")
    static let chile = get("CL")
    static let cameroon = get("CM")
    static let chinaMainland = get("CN")
    static let colombia = get("CO")
    static let clippertonIsland = get("CP")
    static let sark = get("CQ")
    static let costaRica = get("CR")
    static let cuba = get("CU")
    static let capeVerde = get("CV")
    static let curaçao = get("CW")
    static let christmasIsland = get("CX")
    static let cyprus = get("CY")
    static let czechia = get("CZ")
    static let germany = get("DE")
    static let diegoGarcia = get("DG")
    static let djibouti = get("DJ")
    static let denmark = get("DK")
    static let dominica = get("DM")
    static let dominicanRepublic = get("DO")
    static let algeria = get("DZ")
    static let ceutaMelilla = get("EA")
    static let ecuador = get("EC")
    static let estonia = get("EE")
    static let egypt = get("EG")
    static let westernSahara = get("EH")
    static let eritrea = get("ER")
    static let spain = get("ES")
    static let ethiopia = get("ET")
    static let finland = get("FI")
    static let fiji = get("FJ")
    static let falklandIslands = get("FK")
    static let micronesia = get("FM")
    static let faroeIslands = get("FO")
    static let france = get("FR")
    static let gabon = get("GA")
    static let unitedKingdom = get("GB")
    static let grenada = get("GD")
    static let georgia = get("GE")
    static let frenchGuiana = get("GF")
    static let guernsey = get("GG")
    static let ghana = get("GH")
    static let gibraltar = get("GI")
    static let greenland = get("GL")
    static let gambia = get("GM")
    static let guinea = get("GN")
    static let guadeloupe = get("GP")
    static let equatorialGuinea = get("GQ")
    static let greece = get("GR")
    static let southGeorgiasouthSandwichIslands = get("GS")
    static let guatemala = get("GT")
    static let guam = get("GU")
    static let guineaBissau = get("GW")
    static let guyana = get("GY")
    static let hongKong = get("HK")
    static let heardMcDonaldIslands = get("HM")
    static let honduras = get("HN")
    static let croatia = get("HR")
    static let haiti = get("HT")
    static let hungary = get("HU")
    static let canaryIslands = get("IC")
    static let indonesia = get("ID")
    static let ireland = get("IE")
    static let israel = get("IL")
    static let india = get("IN")
    static let chagosArchipelago = get("IO")
    static let iraq = get("IQ")
    static let iran = get("IR")
    static let iceland = get("IS")
    static let italy = get("IT")
    static let jersey = get("JE")
    static let jamaica = get("JM")
    static let jordan = get("JO")
    static let japan = get("JP")
    static let kenya = get("KE")
    static let kyrgyzstan = get("KG")
    static let cambodia = get("KH")
    static let kiribati = get("KI")
    static let comoros = get("KM")
    static let saintKittsNevis = get("KN")
    //static let northKorea = get("KP")
    static let southKorea = get("KR")
    static let kuwait = get("KW")
    static let caymanIslands = get("KY")
    static let kazakhstan = get("KZ")
    static let laos = get("LA")
    static let lebanon = get("LB")
    static let saintLucia = get("LC")
    static let liechtenstein = get("LI")
    static let sriLanka = get("LK")
    static let liberia = get("LR")
    static let lesotho = get("LS")
    static let lithuania = get("LT")
    static let luxembourg = get("LU")
    static let latvia = get("LV")
    static let libya = get("LY")
    static let morocco = get("MA")
    static let monaco = get("MC")
    static let moldova = get("MD")
    static let montenegro = get("ME")
    static let saintMartin = get("MF")
    static let madagascar = get("MG")
    static let marshallIslands = get("MH")
    static let northMacedonia = get("MK")
    static let mali = get("ML")
    static let myanmar = get("MM")
    static let mongolia = get("MN")
    static let macao = get("MO")
    static let northernMarianaIslands = get("MP")
    static let martinique = get("MQ")
    static let mauritania = get("MR")
    static let montserrat = get("MS")
    static let malta = get("MT")
    static let mauritius = get("MU")
    static let maldives = get("MV")
    static let malawi = get("MW")
    static let mexico = get("MX")
    static let malaysia = get("MY")
    static let mozambique = get("MZ")
    static let namibia = get("NA")
    static let newCaledonia = get("NC")
    static let niger = get("NE")
    static let norfolkIsland = get("NF")
    static let nigeria = get("NG")
    static let nicaragua = get("NI")
    static let netherlands = get("NL")
    static let norway = get("NO")
    static let nepal = get("NP")
    static let nauru = get("NR")
    static let niue = get("NU")
    static let newZealand = get("NZ")
    static let oman = get("OM")
    static let panama = get("PA")
    static let peru = get("PE")
    static let frenchPolynesia = get("PF")
    static let papuaNewGuinea = get("PG")
    static let philippines = get("PH")
    static let pakistan = get("PK")
    static let poland = get("PL")
    static let saintPierreMiquelon = get("PM")
    static let pitcairnIslands = get("PN")
    static let puertoRico = get("PR")
    static let palestinianTerritories = get("PS")
    static let portugal = get("PT")
    static let palau = get("PW")
    static let paraguay = get("PY")
    static let qatar = get("QA")
    static let réunion = get("RE")
    static let romania = get("RO")
    static let serbia = get("RS")
    static let russia = get("RU")
    static let rwanda = get("RW")
    static let saudiArabia = get("SA")
    static let solomonIslands = get("SB")
    static let seychelles = get("SC")
    //static let sudan = get("SD")
    static let sweden = get("SE")
    static let singapore = get("SG")
    static let saintHelena = get("SH")
    static let slovenia = get("SI")
    static let svalbardJanMayen = get("SJ")
    static let slovakia = get("SK")
    static let sierraLeone = get("SL")
    static let sanMarino = get("SM")
    static let senegal = get("SN")
    static let somalia = get("SO")
    static let suriname = get("SR")
    static let southSudan = get("SS")
    static let sãoToméPríncipe = get("ST")
    static let elSalvador = get("SV")
    static let sintMaarten = get("SX")
    //static let syria = get("SY")
    static let eswatini = get("SZ")
    static let tristandaCunha = get("TA")
    static let turksCaicosIslands = get("TC")
    static let chad = get("TD")
    static let frenchSouthernTerritories = get("TF")
    static let togo = get("TG")
    static let thailand = get("TH")
    static let tajikistan = get("TJ")
    static let tokelau = get("TK")
    static let timorLeste = get("TL")
    static let turkmenistan = get("TM")
    static let tunisia = get("TN")
    static let tonga = get("TO")
    static let turkey = get("TR")
    static let trinidadTobago = get("TT")
    static let tuvalu = get("TV")
    static let taiwan = get("TW")
    static let tanzania = get("TZ")
    static let ukraine = get("UA")
    static let uganda = get("UG")
    static let unitedStatesOutlyingIslands = get("UM")
    static let unitedStates = get("US")
    static let uruguay = get("UY")
    static let uzbekistan = get("UZ")
    static let vaticanCity = get("VA")
    static let saintVincentGrenadines = get("VC")
    static let venezuela = get("VE")
    static let britishVirginIslands = get("VG")
    static let unitedStatesVirginIslands = get("VI")
    static let vietnam = get("VN")
    static let vanuatu = get("VU")
    static let wallisFutuna = get("WF")
    static let samoa = get("WS")
    static let kosovo = get("XK")
    static let yemen = get("YE")
    static let mayotte = get("YT")
    static let southAfrica = get("ZA")
    static let zambia = get("ZM")
    static let zimbabwe = get("ZW")
    static let ascensionIsland = get("AC")
    static let andorra = get("AD")
    static let unitedArabEmirates = get("AE")
    static let afghanistan = get("AF")
    static let antiguaBarbuda = get("AG")
    static let anguilla = get("AI")
    static let albania = get("AL")
    static let armenia = get("AM")
    static let angola = get("AO")
    static let antarctica = get("AQ")
}

// MARK: Locale.Region Containing Region
public extension Locale.Region {
    /// Returns the region within which the region is contained, e.g. for `US`, returns `Northern America`
    var containingRegion : Locale.Region? {
        switch identifier {
            case "BF", "BJ", "CI", "CV", "GH", "GM", "GN", "GW", "LR", "ML", "MR", "NE", "NG", "SH", "SL", "SN", "TG": return Locale.Region.westernAfrica
            case "AR", "BO", "BR", "BV", "CL", "CO", "EC", "FK", "GF", "GS", "GY", "PE", "PY", "SR", "UY", "VE": return Locale.Region.southAmerica
            case "AZ", "BH", "CY", "GE", "IL", "IQ", "JO", "KW", "LB", "OM", "PS", "QA", "SA", "SY", "TR", "YE", "AE", "AM": return Locale.Region.westernAsia
            case "BG", "BY", "CZ", "HU", "MD", "PL", "RO", "RU", "SK", "UA": return Locale.Region.easternEurope
            case "AT", "BE", "CH", "DE", "FR", "LI", "LU", "MC", "NL": return Locale.Region.westernEurope
            case "CD", "CF", "CG", "CM", "GA", "GQ", "ST", "TD", "AO": return Locale.Region.middleAfrica
            case "AW", "BB", "BL", "BQ", "BS", "CU", "CW", "DM", "DO", "GD", "GP", "HT", "JM", "KN", "KY", "LC", "MF", "MQ", "MS", "PR", "SX", "TC", "TT", "VC", "VG", "VI", "AG", "AI": return Locale.Region.caribbean
            case "BA", "ES", "GI", "GR", "HR", "IT", "ME", "MK", "MT", "PT", "RS", "SI", "SM", "VA", "XK", "AD", "AL": return Locale.Region.southernEurope
            case "BN", "ID", "KH", "LA", "MM", "MY", "PH", "SG", "TH", "TL", "VN": return Locale.Region.southeastAsia
            case "QO", "061", "053", "054", "057": return Locale.Region.oceania
            case "BD", "BT", "IN", "IR", "LK", "MV", "NP", "PK", "AF": return Locale.Region.southernAsia
            case "FJ", "NC", "PG", "SB", "VU": return Locale.Region.melanesia
            case "BZ", "CR", "GT", "HN", "MX", "NI", "PA", "SV": return Locale.Region.centralAmerica
            case "AU", "CC", "CX", "HM", "NF", "NZ": return Locale.Region.australasia
            case "142", "150", "002", "019", "009": return Locale.Region.world
            case "BM", "CA", "GL", "PM", "US": return Locale.Region.northernAmerica
            case "151", "154", "155", "039": return Locale.Region.europe
            case "KG", "KZ", "TJ", "TM", "UZ": return Locale.Region.centralAsia
            case "143", "030", "034", "035", "145": return Locale.Region.asia
            case "CP", "DG", "TA", "AC", "AQ": return Locale.Region.outlyingOceania
            case "BW", "LS", "NA", "SZ", "ZA": return Locale.Region.southernAfrica
            case "AX", "CQ", "DK", "EE", "FI", "FO", "GB", "GG", "IE", "IM", "IS", "JE", "LT", "LV", "NO", "SE", "SJ": return Locale.Region.northernEurope
            case "BI", "DJ", "ER", "ET", "IO", "KE", "KM", "MG", "MU", "MW", "MZ", "RE", "RW", "SC", "SO", "SS", "TF", "TZ", "UG", "YT", "ZM", "ZW": return Locale.Region.easternAfrica
            case "013", "005", "021", "029": return Locale.Region.americas
            case "AS", "CK", "NU", "PF", "PN", "TK", "TO", "TV", "WF", "WS": return Locale.Region.polynesia
            case "015", "014", "017", "018", "011": return Locale.Region.africa
            case "FM", "GU", "KI", "MH", "MP", "NR", "PW", "UM": return Locale.Region.micronesianRegion
            case "CN", "HK", "JP", "KP", "KR", "MN", "MO", "TW": return Locale.Region.easternAsia
            case "DZ", "EA", "EG", "EH", "IC", "LY", "MA", "SD", "TN": return Locale.Region.northernAfrica
            default: return nil
        }
    }
}

// MARK: Locale.Region Continent
public extension Locale.Region {
    /// Returns the continent of the region. Returns `nil` if the continent cannot be determined, such as when the region isn't an ISO region
    var continent : Locale.Region? {
        switch identifier {
            case "QO", "061", "053", "054", "057", "AS", "AU", "CC", "CK", "CP", "CX", "DG", "FJ", "FM", "GU", "HM", "KI", "MH", "MP", "NC", "NF", "NR", "NU", "NZ", "PF", "PG", "PN", "PW", "SB", "TA", "TK", "TO", "TV", "UM", "VU", "WF", "WS", "AC", "AQ": return Locale.Region.oceania
            case "BM", "CA", "GL", "PM", "US": return Locale.Region.northernAmerica
            case "AR", "BO", "BR", "BV", "CL", "CO", "EC", "FK", "GF", "GS", "GY", "PE", "PY", "SR", "UY", "VE": return Locale.Region.southAmerica
            case "013", "005", "021", "029", "AW", "BB", "BL", "BQ", "BS", "BZ", "CR", "CU", "CW", "DM", "DO", "GD", "GP", "GT", "HN", "HT", "JM", "KN", "KY", "LC", "MF", "MQ", "MS", "MX", "NI", "PA", "PR", "SV", "SX", "TC", "TT", "VC", "VG", "VI", "AG", "AI": return Locale.Region.world
            case "143", "030", "034", "035", "145", "AZ", "BD", "BH", "BN", "BT", "CN", "CY", "GE", "HK", "ID", "IL", "IN", "IQ", "IR", "JO", "JP", "KG", "KH", "KP", "KR", "KW", "KZ", "LA", "LB", "LK", "MM", "MN", "MO", "MV", "MY", "NP", "OM", "PH", "PK", "PS", "QA", "SA", "SG", "SY", "TH", "TJ", "TL", "TM", "TR", "TW", "UZ", "VN", "YE", "AE", "AF", "AM": return Locale.Region.asia
            case "151", "154", "155", "039", "AT", "AX", "BA", "BE", "BG", "BY", "CH", "CQ", "CZ", "DE", "DK", "EE", "ES", "FI", "FO", "FR", "GB", "GG", "GI", "GR", "HR", "HU", "IE", "IM", "IS", "IT", "JE", "LI", "LT", "LU", "LV", "MC", "MD", "ME", "MK", "MT", "NL", "NO", "PL", "PT", "RO", "RS", "RU", "SE", "SI", "SJ", "SK", "SM", "UA", "VA", "XK", "AD", "AL": return Locale.Region.europe
            case "015", "014", "017", "018", "011", "BF", "BI", "BJ", "BW", "CD", "CF", "CG", "CI", "CM", "CV", "DJ", "DZ", "EA", "EG", "EH", "ER", "ET", "GA", "GH", "GM", "GN", "GQ", "GW", "IC", "IO", "KE", "KM", "LR", "LS", "LY", "MA", "MG", "ML", "MR", "MU", "MW", "MZ", "NA", "NE", "NG", "RE", "RW", "SC", "SD", "SH", "SL", "SN", "SO", "SS", "ST", "SZ", "TD", "TF", "TG", "TN", "TZ", "UG", "YT", "ZA", "ZM", "ZW", "AO": return Locale.Region.africa
            default: return nil
        }
    }
}

#endif

// MARK: Locale.Region.Subdivision
public extension Locale.Region {
    protocol SubdivisionProtocol : Hashable {
        var region : Locale.Region { get }
        var identifier : String { get }
        var type : Locale.Region.SubdivisionType { get }

        init(_ identifier: String)
    }
    enum Subdivision {
    }
}
public extension Locale.Region.SubdivisionProtocol {
    static func get(_ identifier: String) -> Self {
        return Self(identifier)
    }
}
public extension Locale.Region.SubdivisionProtocol {
    static func == (left: Self, right: Self) -> Bool {
        return left.identifier == right.identifier
    }
    func hash(into hasher: inout Hasher) {
        hasher.combine(identifier)
    }
}

// MARK: Locale.Region.SubdivisionType
public extension Locale.Region {
    enum SubdivisionType {
        case administrativeArea
        case atoll
        case autonomousCity
        case autonomousCommunity
        case autonomousDistrict
        case autonomousIsland
        case autonomousMunicipality
        case autonomousRegion
        case autonomousRepublic
        case autonomousTerritorialUnit
        case borough
        case canton
        case censusDesignatedPlace
        case capitalCity
        case capitalDistrict
        case charteredCity
        case charterTownship
        case city
        case cityMunicipality
        case commune
        case consolidatedCityCounty
        case council
        case country
        case county
        case department
        case dependency
        case district
        case division
        case federalDistrict
        case federalEntity
        case federalMemberState
        case federalTerritory
        case freelyAssociatedState
        case governorate
        case incorporatedArea
        case independentCity
        case indigenousProvince
        case metropolitanCity
        case metroTownship
        case municipality
        case neighborhood
        case oblast
        case parish
        case prefecture
        case province
        case region
        case regionalCountyMunicipality
        case selfAdministeredDivision
        case selfAdministeredZone
        case specialAdministrativeArea
        case specialAdministrativeCity
        case specialAdministrativeRegion
        case specialCity
        case specialMunicipality
        case specialSelfGoverningCity
        case specialSelfGoverningDependency
        case specialSelfGoverningProvince
        case state
        case subdistrict
        case subdivision
        case territory
        case town
        case township
        case unionTerritory
        case village
        case voivodeship
    }
}
