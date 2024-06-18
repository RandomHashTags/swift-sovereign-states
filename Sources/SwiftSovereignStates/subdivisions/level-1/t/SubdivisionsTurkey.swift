//
//  SubdivisionsTurkey.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public enum SubdivisionsTurkey : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Turkey
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
    case izmir
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
    
    public var country : Locale.Region {
        return Locale.Region.turkey
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
}
