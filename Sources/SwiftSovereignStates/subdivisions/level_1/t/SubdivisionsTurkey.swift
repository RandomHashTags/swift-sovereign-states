//
//  SubdivisionsTurkey.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public enum SubdivisionsTurkey : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Turkey
    case adana
    case adiyaman
    case afyonkarahisar
    case agri
    case aksaray
    case amasya
    case ankara
    case antalya
    case ardahan
    case artvin
    case aydin
    case balikesir
    case bartin
    case batman
    case bayburt
    case bilecik
    case bingol
    case bitlis
    case bolu
    case burdur
    case bursa
    case canakkale
    case cankiri
    case corum
    case denizli
    case diyarbakir
    case duzce
    case edirne
    case elazig
    case erzincan
    case erzurum
    case eskisehir
    case gaziantep
    case giresun
    case gumushane
    case hakkari
    case hatay
    case igdir
    case isparta
    case istanbul
    case i̇zmir
    case kahramanmaras
    case karabuk
    case karaman
    case kars
    case kastamonu
    case kayseri
    case kilis
    case kirikkale
    case kirklareli
    case kirsehir
    case kocaeli
    case konya
    case kutahya
    case malatya
    case manisa
    case mardin
    case mersin
    case mugla
    case mus
    case nevsehir
    case nigde
    case ordu
    case osmaniye
    case rize
    case sakarya
    case samsun
    case sanliurfa
    case siirt
    case sinop
    case sirnak
    case sivas
    case tekirdag
    case tokat
    case trabzon
    case tunceli
    case usak
    case van
    case yalova
    case yozgat
    case zonguldak
    
    public func getCountry() -> Country {
        return Country.turkey
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public func getRealName() -> String? {
        switch self {
        case .adiyaman: return "Adıyaman"
        case .agri: return "Ağrı"
        case .aydin: return "Aydın"
        case .balikesir: return "Balıkesir"
        case .bartin: return "Bartın"
        case .bingol: return "Bingöl"
        case .canakkale: return "Çanakkale"
        case .cankiri: return "Çankırı"
        case .corum: return "Çorum"
        case .diyarbakir: return "Diyarbakır"
        case .duzce: return "Düzce"
        case .elazig: return "Elâzığ"
        case .eskisehir: return "Eskişehir"
        case .gumushane: return "Gümüşhane"
        case .hakkari: return "Hakkâri"
        case .igdir: return "Iğdır"
        case .kahramanmaras: return "Kahramanmaraş"
        case .karabuk: return "Karabük"
        case .kirikkale: return "Kırıkkale"
        case .kirklareli: return "Kırklareli"
        case .kirsehir: return "Kırşehir"
        case .kutahya: return "Kütahya"
        case .mugla: return "Muğla"
        case .mus: return "Muş"
        case .nevsehir: return "Nevşehir"
        case .nigde: return "Niğde"
        case .sanliurfa: return "Şanlıurfa"
        case .sirnak: return "Şırnak"
        case .tekirdag: return "Tekirdağ"
        case .usak: return "Uşak"
        default: return nil
        }
    }
}
