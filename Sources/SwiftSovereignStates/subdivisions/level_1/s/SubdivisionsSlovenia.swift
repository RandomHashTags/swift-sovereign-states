//
//  SubdivisionsSlovenia.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public enum SubdivisionsSlovenia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Municipalities_of_Slovenia
    case ajdovscina
    case ankaran
    case apace
    case beltinci
    case benedikt
    case bistrica_ob_sotli
    case bled
    case bloke
    case bohinj
    case borovnica
    case bovec
    case braslovce
    case brda
    case brezice
    case brezovica
    case cankova
    case cerklje_na_gorenjskem
    case cerknica
    case cerkno
    case cerkvenjak
    case cirkulane
    case crensovci
    case crna_na_koroskem
    case crnomelj
    case destrnik
    case divaca
    case dobje
    case dobrepolje
    case dobrna
    case dobrova_polhov_gradec
    case dobrovnik
    case dol_pri_ljubljani
    case dolenjske_toplice
    case domzale
    case dornava
    case dravograd
    case duplek
    case gorenja_vas_poljane
    case gorisnica
    case gorje
    case gornja_radgona
    case gornji_grad
    case gornji_petrovci
    case grad
    case grosuplje
    case hajdina
    case hoce_slivnica
    case hodos
    case horjul
    case hrastnik
    case hrpelje_kozina
    case idrija
    case ig
    case ilirska_bistrica
    case ivancna_gorica
    case izola
    case jesenice
    case jezersko
    case jursinci
    case kamnik
    case kanal_ob_soci
    case kidricevo
    case kobarid
    case kobilje
    case kocevje
    case komen
    case komenda
    case kostanjevica_na_krki
    case kostel
    case kozje
    case kranjska_gora
    case krizevci
    case kungota
    case kuzma
    case lasko
    case lenart
    case lendava
    case litija
    case ljubno
    case ljutomer
    case log_dragomer
    case logatec
    case loska_dolina
    case loski_potok
    case lovrenc_na_pohorju
    case luce
    case lukovica
    case majsperk
    case makole
    case markovci
    case medvode
    case menges
    case metlika
    case mezica
    case miklavz_na_dravskem_polju
    case miren_kostanjevica
    case mirna
    case mirna_pec
    case mislinja
    case mokronog_trebelno
    case moravce
    case moravske_toplice
    case mozirje
    case muta
    case naklo
    case nazarje
    case odranci
    case oplotnica
    case ormoz
    case osilnica
    case pesnica
    case piran
    case pivka
    case podcetrtek
    case podlehnik
    case podvelka
    case poljcane
    case polzela
    case postojna
    case prebold
    case preddvor
    case prevalje
    case puconci
    case race_fram
    case radece
    case radenci
    case radlje_ob_dravi
    case radovljica
    case ravne_na_koroskem
    case razkrizje
    case recica_ob_savinji
    case rence_vogrsko
    case ribnica
    case ribnica_na_pohorju
    case rogaska_slatina
    case rogasovci
    case rogatec
    case ruse
    case salovci
    case selnica_ob_dravi
    case semic
    case sempeter_vrtojba
    case sencur
    case sentilj
    case sentjernej
    case sentjur
    case sentrupert
    case sevnica
    case sezana
    case skocjan
    case skofja_loka
    case skofljica
    case slovenska_bistrica
    case slovenske_konjice
    case smarje_pri_jelsah
    case smarjeske_toplice
    case smartno_ob_paki
    case smartno_pri_litiji
    case sodrazica
    case solcava
    case sostanj
    case sredisce_ob_dravi
    case starse
    case store
    case straza
    case sveta_ana
    case sveta_trojica_v_slovenskih_goricah
    case sveti_andraz_v_slovenskih_goricah
    case sveti_jurij_ob_scavnici
    case sveti_jurij_v_slovenskih_goricah
    case sveti_tomaz
    case tabor
    case tisina
    case tolmin
    case trbovlje
    case trebnje
    case trnovska_vas
    case trzic
    case trzin
    case turnisce
    case velika_polana
    case velike_lasce
    case verzej
    case videm
    case vipava
    case vitanje
    case vodice
    case vojnik
    case vransko
    case vrhnika
    case vuzenica
    case zagorje_ob_savi
    case zalec
    case zavrc
    case zelezniki
    case zetale
    case ziri
    case zirovnica
    case zrece
    case zuzemberk
    
    // city municipalities
    case celje
    case koper
    case kranj
    case krsko
    case ljubljana
    case maribor
    case murska_sobota
    case nova_gorica
    case novo_mesto
    case ptuj
    case slovenj_gradec
    case velenje
    
    public func getCountry() -> Country {
        return Country.slovenia
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        switch self {
        case .celje,
                .koper,
                .kranj,
                .krsko,
                .ljubljana,
                .maribor,
                .murska_sobota,
                .nova_gorica,
                .novo_mesto,
                .ptuj,
                .slovenj_gradec,
                .velenje:
            return SovereignStateSubdivisionType.city_municipalities
        default:
            return SovereignStateSubdivisionType.municipalities
        }
    }
    
    public var real_name : String? {
        switch self {
        case .ajdovscina: return "Ajdovščina"
        case .apace: return "Apače"
        case .braslovce: return "Braslovče"
        case .brezice: return "Brežice"
        case .crensovci: return "Črenšovci"
        case .crna_na_koroskem: return "Črna na Koroškem"
        case .crnomelj: return "Črnomelj"
        case .divaca: return "Divača"
        case .dobrova_polhov_gradec: return "Dobrova–Polhov Gradec"
        case .domzale: return "Domžale"
        case .gorenja_vas_poljane: return "Gorenja Vas–Poljane"
        case .gorisnica: return "Gorišnica"
        case .hoce_slivnica: return "Hoče-Slivnica"
        case .hodos: return "Hodoš"
        case .hrpelje_kozina: return "Hrpelje-Kozina"
        case .ivancna_gorica: return "Ivančna Gorica"
        case .jursinci: return "Juršinci"
        case .kanal_ob_soci: return "Kanal ob Soči"
        case .kidricevo: return "Kidričevo"
        case .kocevje: return "Kočevje"
        case .krizevci: return "Križevci"
        case .lasko: return "Laško"
        case .log_dragomer: return "Log-Dragomer"
        case .loska_dolina: return "Loška Dolina"
        case .loski_potok: return "Loški Potok"
        case .luce: return "Luče"
        case .majsperk: return "Majšperk"
        case .menges: return "Mengeš"
        case .mezica: return "Mežica"
        case .miklavz_na_dravskem_polju: return "Miklavž na Dravskem Polju"
        case .miren_kostanjevica: return "Miren-Kostanjevica"
        case .mirna_pec: return "Mirna Peč"
        case .mokronog_trebelno: return "Mokronog-Trebelno"
        case .moravce: return "Moravče"
        case .ormoz: return "Ormož"
        case .podcetrtek: return "Podčetrtek"
        case .poljcane: return "Poljčane"
        case .race_fram: return "Rače-Fram"
        case .radece: return "Radeče"
        case .ravne_na_koroskem: return "Ravne na Koroškem"
        case .razkrizje: return "Razkrižje"
        case .recica_ob_savinji: return "Rečica ob Savinji"
        case .rence_vogrsko: return "Renče–Vogrsko"
        case .rogaska_slatina: return "Rogaška Slatina"
        case .rogasovci: return "Rogašovci"
        case .ruse: return "Ruše"
        case .salovci: return "Šalovci"
        case .semic: return "Semič"
        case .sempeter_vrtojba: return "Šempeter-Vrtojba"
        case .sencur: return "Šenčur"
        case .sentilj: return "Šentilj"
        case .sentjernej: return "Šentjernej"
        case .sentjur: return "Šentjur"
        case .sentrupert: return "Šentrupert"
        case .sezana: return "Sežana"
        case .skocjan: return "Škocjan"
        case .skofja_loka: return "Škofja Loka"
        case .skofljica: return "Škofljica"
        case .smarje_pri_jelsah: return "Šmarje pri Jelšah"
        case .smarjeske_toplice: return "Šmarješke Toplice"
        case .smartno_ob_paki: return "Šmartno ob Paki"
        case .smartno_pri_litiji: return "Šmartno pri Litiji"
        case .sodrazica: return "Sodražica"
        case .solcava: return "Solčava"
        case .sostanj: return "Šoštanj"
        case .sredisce_ob_dravi: return "Središče ob Dravi"
        case .starse: return "Starše"
        case .store: return "Štore"
        case .straza: return "Straža"
        case .sveti_andraz_v_slovenskih_goricah: return "Sveti Andraž v Slovenskih Goricah"
        case .sveti_jurij_ob_scavnici: return "Sveti Jurij ob Ščavnici"
        case .sveti_tomaz: return "Sveti Tomaž"
        case .tisina: return "Tišina"
        case .trzic: return "Tržič"
        case .turnisce: return "Turnišče"
        case .velike_lasce: return "Velike Lašče"
        case .verzej: return "Veržej"
        case .zalec: return "Žalec"
        case .zavrc: return "Zavrč"
        case .zelezniki: return "Železniki"
        case .zetale: return "Žetale"
        case .ziri: return "Žiri"
        case .zirovnica: return "Žirovnica"
        case .zrece: return "Zreče"
        case .zuzemberk: return "Žužemberk"
            
        case .krsko: return "Krško"
        default: return nil
        }
    }
    
    public func getWikipediaURLPrefix() -> String? {
        switch self {
        case .celje,
                .koper,
                .kranj,
                .krsko,
                .ljubljana,
                .maribor,
                .murska_sobota,
                .nova_gorica,
                .novo_mesto,
                .ptuj,
                .slovenj_gradec,
                .velenje:
            return nil
        default:
            return getTypeSuffix() + "_of_"
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        return nil
    }
}
