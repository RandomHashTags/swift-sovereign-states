//
//  Currency.swift
//  
//
//  Created by Evan Anderson on 6/12/22.
//

import Foundation

public enum Currency : String, CaseIterable, Sendable {
    case AED = "United Arab Emirates Dirham"
    case AFN = "Afghan Afghani"
    case ALL = "Albanian Lek"
    case AMD = "Armenian Dram"
    case ANG = "Netherlands Antillean Guilder"
    case AOA = "Angolan Kwanza"
    case ARS = "Argentine Peso"
    case AUD = "Australian Dollar"
    case AWG = "Aruban Florin"
    case AZN = "Azerbaijani Manat"
    
    case BAM = "Bosnia and Herzegovina Convertible Mark"
    case BBD = "Barbados Dollar"
    case BDT = "Bangladeshi Taka"
    case BGN = "Bulgarian Lev"
    case BHD = "Bahraini Dinar"
    case BIF = "Burundian Franc"
    case BMD = "Bermudian Dollar"
    case BND = "Brunei Dollar"
    case BOB = "Boliviano"
    case BOV = "Bolician Mvdol"
    case BRL = "Brazilian Real"
    case BSD = "Bahamian Dollar"
    case BTN = "Bhutanese Ngultrum"
    case BWP = "Botswana Pula"
    case BYN = "Belarusian Ruble"
    case BZD = "Belize Dollar"
    
    case CAD = "Canadian Dollar"
    case CDF = "Congolese Franc"
    case CHE = "WIR Euro"
    case CHF = "Swiss Franc"
    case CHW = "WIR Franc"
    case CLF = "Unidad de Fomento"
    case CLP = "Chilean Peso"
    case CNY = "Chinese Yuan"
    case COP = "Colombian Peso"
    case COU = "Unidad de Valor Real"
    case CRC = "Costa Rican Colon"
    case CUC = "Cuban Convertible Peso"
    case CUP = "Cuban Peso"
    case CVE = "Cape Verdean Escudo"
    case CZK = "Czech Koruna"
    
    case DJF = "Djiboutian Franc"
    case DKK = "Danish Krone"
    case DOP = "Dominican Peso"
    case DZD = "Algerian Dinar"
    
    case EGP = "Egyptian Pound"
    case ENR = "Eritrean Nakfa1"
    case ERN = "Eritrean Nakfa2"
    case ETB = "Ethiopian Birr"
    case EUR = "Euro"
    
    case FJD = "Fiji Dollar"
    case FKP = "Falkland Islands Pound"
    
    case GBP = "Pound Sterling"
    case GEL = "Georgian Lari"
    case GHS = "Ghanaian Cedi"
    case GIP = "Gibraltar Pound"
    case GMD = "Gambian Dalasi"
    case GNF = "Guinean Franc"
    case GTQ = "Guatemalan Quetzal"
    case GYD = "Guyanese Dollar"
    
    case HKD = "Hong Kong Dollar"
    case HNL = "Honduran Lempira"
    case HRK = "Croatian Kuna"
    case HTG = "Haitian Gourde"
    case HUF = "Hungarian Forint"
    
    case IDR = "Ondonesian Rupiah"
    case ILS = "Israeli New Shekel"
    case INR = "Indian Rupee"
    case IQD = "Iraqi Dinar"
    case IRR = "Iranian Rial"
    case ISK = "Icelandic Króna"
    
    case JMD = "Jamaican Dollar"
    case JOD = "Jordanian Dinar"
    case JPY = "Japanese Yen"
    
    case KES = "Kenyan Shilling"
    case KGS = "Kyrgyzstani Som"
    case KHR = "Cambodian Riel"
    case KMF = "Comoro Franc"
    case KPW = "North Korean Won"
    case KRW = "South Korean Won"
    case KWD = "Kuwaiti Dinar"
    case KYD = "Cayman Islands Dollar"
    case KZT = "Kazakhstani Tenge"
    
    case LAK = "Lao Kip"
    case LBP = "Lebanese Pound"
    case LKR = "Sri Lankan Rupee"
    case LRD = "Liberian Dollar"
    case LSL = "Lesotho Loti"
    case LYD = "Libyan Dinar"
    
    case MAD = "Moroccan Dirham"
    case MDL = "Moldovan Leu"
    case MGA = "Malagasy Ariary"
    case MKD = "Macedonian Denar"
    case MMK = "Myanmar Kyat"
    case MNT = "Mongolian Tögrög"
    case MOP = "Macanese Pataca"
    case MRU = "Mauritania Ouguiya"
    case MUR = "Mauritian Rupee"
    case MVR = "Maldivian Rufiyaa"
    case MWK = "Malawian Kwacha"
    case MXN = "Mexican Peso"
    case MXV = "Mexican Unidad de Inversion"
    case MYR = "Malaysian Ringgit"
    case MZN = "Mozambican Metical"
    
    case NAD = "Namibian Dollar"
    case NGN = "Nigerian Naira"
    case NIO = "Nicaraguan Córdoba"
    case NOK = "Norwegian Krone"
    case NPR = "Nepalese Rupee"
    case NZD = "New Zealand Dollar"
    
    case OMR = "Omani Rial"
    
    case PAB = "Panamanian Balboa"
    case PEN = "Peruvian Sol"
    case PGK = "Papua New Guinean kina"
    case PHP = "Philippine Peso"
    case PKR = "Pakistani Rupee"
    case PLN = "Plish Złoty"
    case PYG = "Paraguayan Guaraní"
    
    case QAR = "Qatari Riyal"
    
    case RON = "Romanian Leu"
    case RSD = "Serbian Dinar"
    case RUB = "Russian Ruble"
    case RWF = "Rwandan Franc"
    
    case SAR = "Saudi Riyal"
    case SBD = "Solomon Islands Dollar"
    case SCR = "Seychelles Rupee"
    case SDG = "Sudanese Pound"
    case SEK = "Swedish Krona"
    case SGD = "Singapore Dollar"
    case SHP = "Saint Helena Pound"
    case SLL = "Sierra Leonean Leone"
    case SOS = "Somali Shilling"
    case SRD = "Surinamese Dollar"
    case SSP = "South Sudanese Pound"
    case STN = "São Tomé and Príncipe Dobra"
    case SVC = "Salvadoran Colón"
    case SYP = "Syrian Pound"
    case SZL = "Swazi Lilangeni"
    
    case THB = "Thai Baht"
    case TJS = "Tajikistani Somoni"
    case TMT = "Turkmenistan Manat"
    case TND = "Tunisian Dinar"
    case TOP = "Tongan Pa'anga"
    case TRY = "Turkish Lira"
    case TTD = "Trinidad and Tobago Dollar"
    case TWD = "New Taiwan Dollar"
    case TZS = "Tanzanian Shilling"
    
    case UAH = "Ukrainian Hryvnia"
    case UGX = "Ugandan Shilling"
    case USD = "United States Dollar"
    case USN = "United States Dollar (next day)"
    case UYI = "Uruguay Peso en Unidades Indexadas"
    case UYU = "Uruguayan Peso"
    case UYW = "Unidad Previsional"
    case UZS = "Uzbekistan Som"
    
    case VED = "Venezuelan Bolívar Digital"
    case VES = "Venezuelan Bolívar Soverano"
    case VND = "Vietnamese đồng"
    case VUV = "vanuatu Vatu"
    
    case WST = "Somoan Tala"
    
    case XAF = "CFA Franc BEAC"
    case XAG = "Silver"
    case XAU = "Gold"
    case XBA = "European Composite Unit"
    case XBB = "European Monetary Unit"
    case XBC = "European Unit of Account 9"
    case XBD = "European Unit of Account 17"
    case XCD = "East Caribbean Dollar"
    case XDR = "Special drawing rights"
    case XOF = "CFA Franc CVEAO"
    case XPD = "Palladium"
    case XPF = "CFP Franc"
    case XPT = "Platinum"
    case XSU = "SUCRE"
    case XTS = "Code reserved for testing"
    case XUA = "ABD Unit of Account"
    case XXX = "No currency"
    
    case YER = "Yemeni Rial"
    
    case ZAR = "South African Rand"
    case ZMW = "Zambian Kwacha"
    case ZWL = "Zimbabwean Dollar"
    
    case BDS = "Barbados Dollar2"
    case CKD = "Cook Islands Dollar"
    case CNH = "Chinese Yan (offshore)1"
    case CNT = "Chinese Yan (offshore)2"
    case FOK = "Faroese Króna"
    case GGP = "Guernesey Pound2"
    case IMP = "Island of Man Pound"
    case JEP = "Jersey Pound"
    case KID = "Kiribati Dollar"
    case NIS = "Israeli New shekel"
    case NTD = "New Taiwan Dollar2"
    case PRB = "Transnistrian Ruble"
    case RMB = "Chinese Yuan2"
    case SLS = "Somaliland Shilling"
    case TVD = "Tuvalu Dollar"
    case ZWB = "Zimbabwean bonds"
    
    public static func valueOf(_ string: String) -> Currency? {
        return Currency.allCases.first(where: { string.elementsEqual($0.rawValue) || string.elementsEqual("\($0)") })
    }
    
    public func isOfficial() -> Bool {
        switch self {
        case .BDS,
                .CKD,
                .CNH,
                .CNT,
                .FOK,
                .GGP,
                .IMP,
                .JEP,
                .KID,
                .NIS,
                .NTD,
                .PRB,
                .RMB,
                .SLS,
                .TVD,
                .ZWB
            :
            return false
        default:
            return true
        }
    }
    
    public func getDecimalPoints() -> Int {
        switch self {
        case .BHD,
                .IQD,
                .KWD,
                .TND
            :
            return 3
        case .BIF,
                .CLP,
                .GNF,
                .ISK,
                .JPY,
                .KMF,
                .KRW,
                .PYG,
                .RON,
                .UGX,
                .VND,
                .VUV,
                .XOF,
                .XPF
            :
            return 0
        case .XAF,
                .XAG,
                .XAU,
                .XBA,
                .XBB,
                .XBC,
                .XBD,
                .XDR,
                .XPD,
                .XPT,
                .XSU,
                .XTS,
                .XUA,
                .XXX
            :
            return -1
        case .CLF,
                .UYW
            :
            return 4
        default:
            return 2
        }
    }
}
