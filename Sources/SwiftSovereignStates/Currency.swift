//
//  Currency.swift
//  
//
//  Created by Evan Anderson on 6/12/22.
//

import Foundation

public enum Currency : String, CaseIterable, LosslessStringConvertible {
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
    
    public var description: String { rawValue }
    
    public init?(_ description: String) {
        guard let currency:Currency = Currency.init(rawValue: description) else { return nil }
        self = currency
    }
    
    public var is_official : Bool {
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
    
    public var decimal_points : Int {
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
        return SwiftSovereignStateLocalization.get_currency_name(self)
    }
}
