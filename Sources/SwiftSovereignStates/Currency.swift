//
//  Currency.swift
//  
//
//  Created by Evan Anderson on 6/12/22.
//

import Foundation

public enum Currency : String, CaseIterable {
    case AED
    case AFN
    case ALL
    case AMD
    case ANG
    case AOA
    case ARS
    case AUD
    case AWG
    case AZN
    
    case BAM
    case BBD
    case BDT
    case BGN
    case BHD
    case BIF
    case BMD
    case BND
    case BOB
    case BOV
    case BRL
    case BSD
    case BTN
    case BWP
    case BYN
    case BZD
    
    case CAD
    case CDF
    case CHE
    case CHF
    case CHW
    case CLF
    case CLP
    case CNY
    case COP
    case COU
    case CRC
    case CUC
    case CUP
    case CVE
    case CZK
    
    case DJF
    case DKK
    case DOP
    case DZD
    
    case EGP
    case ENR
    case ERN
    case ETB
    case EUR
    
    case FJD
    case FKP
    
    case GBP
    case GEL
    case GHS
    case GIP
    case GMD
    case GNF
    case GTQ
    case GYD
    
    case HKD
    case HNL
    case HRK
    case HTG
    case HUF
    
    case IDR
    case ILS
    case INR
    case IQD
    case IRR
    case ISK
    
    case JMD
    case JOD
    case JPY
    
    case KES
    case KGS
    case KHR
    case KMF
    case KPW
    case KRW
    case KWD
    case KYD
    case KZT
    
    case LAK
    case LBP
    case LKR
    case LRD
    case LSL
    case LYD
    
    case MAD
    case MDL
    case MGA
    case MKD
    case MMK
    case MNT
    case MOP
    case MRU
    case MUR
    case MVR
    case MWK
    case MXN
    case MXV
    case MYR
    case MZN
    
    case NAD
    case NGN
    case NIO
    case NOK
    case NPR
    case NZD
    
    case OMR
    
    case PAB
    case PEN
    case PGK
    case PHP
    case PKR
    case PLN
    case PYG
    
    case QAR
    
    case RON
    case RSD
    case RUB
    case RWF
    
    case SAR
    case SBD
    case SCR
    case SDG
    case SEK
    case SGD
    case SHP
    case SLL
    case SOS
    case SRD
    case SSP
    case STN
    case SVC
    case SYP
    case SZL
    
    case THB
    case TJS
    case TMT
    case TND
    case TOP
    case TRY
    case TTD
    case TWD
    case TZS
    
    case UAH
    case UGX
    case USD
    case USN
    case UYI
    case UYU
    case UYW
    case UZS
    
    case VED
    case VES
    case VND
    case VUV
    
    case WST
    
    case XAF
    case XAG
    case XAU
    case XBA
    case XBB
    case XBC
    case XBD
    case XCD
    case XDR
    case XOF
    case XPD
    case XPF
    case XPT
    case XSU
    case XTS
    case XUA
    case XXX
    
    case YER
    
    case ZAR
    case ZMW
    case ZWL
    
    case BDS
    case CKD
    case CNH
    case CNT
    case FOK
    case GGP
    case IMP
    case JEP
    case KID
    case NIS
    case NTD
    case PRB
    case RMB
    case SLS
    case TVD
    case ZWB
    
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
    
    public var name : String {
        switch self {
        case .AED: return "United Arab Emirates Dirham"
        case .AFN: return "Afghan Afghani"
        case .ALL: return "Albanian Lek"
        case .AMD: return "Armenian Dram"
        case .ANG: return "Netherlands Antillean Guilder"
        case .AOA: return "Angolan Kwanza"
        case .ARS: return "Argentine Peso"
        case .AUD: return "Australian Dollar"
        case .AWG: return "Aruban Florin"
        case .AZN: return "Azerbaijani Manat"
        
        case .BAM: return "Bosnia and Herzegovina Convertible Mark"
        case .BBD: return "Barbados Dollar"
        case .BDT: return "Bangladeshi Taka"
        case .BGN: return "Bulgarian Lev"
        case .BHD: return "Bahraini Dinar"
        case .BIF: return "Burundian Franc"
        case .BMD: return "Bermudian Dollar"
        case .BND: return "Brunei Dollar"
        case .BOB: return "Boliviano"
        case .BOV: return "Bolician Mvdol"
        case .BRL: return "Brazilian Real"
        case .BSD: return "Bahamian Dollar"
        case .BTN: return "Bhutanese Ngultrum"
        case .BWP: return "Botswana Pula"
        case .BYN: return "Belarusian Ruble"
        case .BZD: return "Belize Dollar"
        
        case .CAD: return "Canadian Dollar"
        case .CDF: return "Congolese Franc"
        case .CHE: return "WIR Euro"
        case .CHF: return "Swiss Franc"
        case .CHW: return "WIR Franc"
        case .CLF: return "Unidad de Fomento"
        case .CLP: return "Chilean Peso"
        case .CNY: return "Chinese Yuan"
        case .COP: return "Colombian Peso"
        case .COU: return "Unidad de Valor Real"
        case .CRC: return "Costa Rican Colon"
        case .CUC: return "Cuban Convertible Peso"
        case .CUP: return "Cuban Peso"
        case .CVE: return "Cape Verdean Escudo"
        case .CZK: return "Czech Koruna"
                
        case .DJF: return "Djiboutian Franc"
        case .DKK: return "Danish Krone"
        case .DOP: return "Dominican Peso"
        case .DZD: return "Algerian Dinar"
        
        case .EGP: return "Egyptian Pound"
        case .ENR: return "Eritrean Nakfa1"
        case .ERN: return "Eritrean Nakfa2"
        case .ETB: return "Ethiopian Birr"
        case .EUR: return "Euro"
        
        case .FJD: return "Fiji Dollar"
        case .FKP: return "Falkland Islands Pound"
        
        case .GBP: return "Pound Sterling"
        case .GEL: return "Georgian Lari"
        case .GHS: return "Ghanaian Cedi"
        case .GIP: return "Gibraltar Pound"
        case .GMD: return "Gambian Dalasi"
        case .GNF: return "Guinean Franc"
        case .GTQ: return "Guatemalan Quetzal"
        case .GYD: return "Guyanese Dollar"
        
        case .HKD: return "Hong Kong Dollar"
        case .HNL: return "Honduran Lempira"
        case .HRK: return "Croatian Kuna"
        case .HTG: return "Haitian Gourde"
        case .HUF: return "Hungarian Forint"
        
        case .IDR: return "Ondonesian Rupiah"
        case .ILS: return "Israeli New Shekel"
        case .INR: return "Indian Rupee"
        case .IQD: return "Iraqi Dinar"
        case .IRR: return "Iranian Rial"
        case .ISK: return "Icelandic Króna"
        
        case .JMD: return "Jamaican Dollar"
        case .JOD: return "Jordanian Dinar"
        case .JPY: return "Japanese Yen"
        
        case .KES: return "Kenyan Shilling"
        case .KGS: return "Kyrgyzstani Som"
        case .KHR: return "Cambodian Riel"
        case .KMF: return "Comoro Franc"
        case .KPW: return "North Korean Won"
        case .KRW: return "South Korean Won"
        case .KWD: return "Kuwaiti Dinar"
        case .KYD: return "Cayman Islands Dollar"
        case .KZT: return "Kazakhstani Tenge"
        
        case .LAK: return "Lao Kip"
        case .LBP: return "Lebanese Pound"
        case .LKR: return "Sri Lankan Rupee"
        case .LRD: return "Liberian Dollar"
        case .LSL: return "Lesotho Loti"
        case .LYD: return "Libyan Dinar"
        
        case .MAD: return "Moroccan Dirham"
        case .MDL: return "Moldovan Leu"
        case .MGA: return "Malagasy Ariary"
        case .MKD: return "Macedonian Denar"
        case .MMK: return "Myanmar Kyat"
        case .MNT: return "Mongolian Tögrög"
        case .MOP: return "Macanese Pataca"
        case .MRU: return "Mauritania Ouguiya"
        case .MUR: return "Mauritian Rupee"
        case .MVR: return "Maldivian Rufiyaa"
        case .MWK: return "Malawian Kwacha"
        case .MXN: return "Mexican Peso"
        case .MXV: return "Mexican Unidad de Inversion"
        case .MYR: return "Malaysian Ringgit"
        case .MZN: return "Mozambican Metical"
        
        case .NAD: return "Namibian Dollar"
        case .NGN: return "Nigerian Naira"
        case .NIO: return "Nicaraguan Córdoba"
        case .NOK: return "Norwegian Krone"
        case .NPR: return "Nepalese Rupee"
        case .NZD: return "New Zealand Dollar"
        
        case .OMR: return "Omani Rial"
        
        case .PAB: return "Panamanian Balboa"
        case .PEN: return "Peruvian Sol"
        case .PGK: return "Papua New Guinean kina"
        case .PHP: return "Philippine Peso"
        case .PKR: return "Pakistani Rupee"
        case .PLN: return "Plish Złoty"
        case .PYG: return "Paraguayan Guaraní"
        
        case .QAR: return "Qatari Riyal"
        
        case .RON: return "Romanian Leu"
        case .RSD: return "Serbian Dinar"
        case .RUB: return "Russian Ruble"
        case .RWF: return "Rwandan Franc"
        
        case .SAR: return "Saudi Riyal"
        case .SBD: return "Solomon Islands Dollar"
        case .SCR: return "Seychelles Rupee"
        case .SDG: return "Sudanese Pound"
        case .SEK: return "Swedish Krona"
        case .SGD: return "Singapore Dollar"
        case .SHP: return "Saint Helena Pound"
        case .SLL: return "Sierra Leonean Leone"
        case .SOS: return "Somali Shilling"
        case .SRD: return "Surinamese Dollar"
        case .SSP: return "South Sudanese Pound"
        case .STN: return "São Tomé and Príncipe Dobra"
        case .SVC: return "Salvadoran Colón"
        case .SYP: return "Syrian Pound"
        case .SZL: return "Swazi Lilangeni"
        
        case .THB: return "Thai Baht"
        case .TJS: return "Tajikistani Somoni"
        case .TMT: return "Turkmenistan Manat"
        case .TND: return "Tunisian Dinar"
        case .TOP: return "Tongan Pa'anga"
        case .TRY: return "Turkish Lira"
        case .TTD: return "Trinidad and Tobago Dollar"
        case .TWD: return "New Taiwan Dollar"
        case .TZS: return "Tanzanian Shilling"
        
        case .UAH: return "Ukrainian Hryvnia"
        case .UGX: return "Ugandan Shilling"
        case .USD: return "United States Dollar"
        case .USN: return "United States Dollar (next day)"
        case .UYI: return "Uruguay Peso en Unidades Indexadas"
        case .UYU: return "Uruguayan Peso"
        case .UYW: return "Unidad Previsional"
        case .UZS: return "Uzbekistan Som"
        
        case .VED: return "Venezuelan Bolívar Digital"
        case .VES: return "Venezuelan Bolívar Soverano"
        case .VND: return "Vietnamese đồng"
        case .VUV: return "Vanuatu Vatu"
        
        case .WST: return "Somoan Tala"
        
        case .XAF: return "CFA Franc BEAC"
        case .XAG: return "Silver"
        case .XAU: return "Gold"
        case .XBA: return "European Composite Unit"
        case .XBB: return "European Monetary Unit"
        case .XBC: return "European Unit of Account 9"
        case .XBD: return "European Unit of Account 17"
        case .XCD: return "East Caribbean Dollar"
        case .XDR: return "Special drawing rights"
        case .XOF: return "CFA Franc CVEAO"
        case .XPD: return "Palladium"
        case .XPF: return "CFP Franc"
        case .XPT: return "Platinum"
        case .XSU: return "SUCRE"
        case .XTS: return "Code reserved for testing"
        case .XUA: return "ABD Unit of Account"
        case .XXX: return "No currency"
        
        case .YER: return "Yemeni Rial"
        
        case .ZAR: return "South African Rand"
        case .ZMW: return "Zambian Kwacha"
        case .ZWL: return "Zimbabwean Dollar"
        
        case .BDS: return "Barbados Dollar2"
        case .CKD: return "Cook Islands Dollar"
        case .CNH: return "Chinese Yan (offshore)1"
        case .CNT: return "Chinese Yan (offshore)2"
        case .FOK: return "Faroese Króna"
        case .GGP: return "Guernesey Pound2"
        case .IMP: return "Island of Man Pound"
        case .JEP: return "Jersey Pound"
        case .KID: return "Kiribati Dollar"
        case .NIS: return "Israeli New shekel"
        case .NTD: return "New Taiwan Dollar2"
        case .PRB: return "Transnistrian Ruble"
        case .RMB: return "Chinese Yuan2"
        case .SLS: return "Somaliland Shilling"
        case .TVD: return "Tuvalu Dollar"
        case .ZWB: return "Zimbabwean bonds"
        }
    }
}
