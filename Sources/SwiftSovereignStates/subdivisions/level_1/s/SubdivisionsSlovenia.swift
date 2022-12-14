//
//  SubdivisionsSlovenia.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public enum SubdivisionsSlovenia : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Municipalities_of_Slovenia
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
    
    public func getRealName() -> String? {
        switch self {
        case .ajdovscina: return "Ajdov????ina"
        case .apace: return "Apa??e"
        case .braslovce: return "Braslov??e"
        case .brezice: return "Bre??ice"
        case .crensovci: return "??ren??ovci"
        case .crna_na_koroskem: return "??rna na Koro??kem"
        case .crnomelj: return "??rnomelj"
        case .divaca: return "Diva??a"
        case .dobrova_polhov_gradec: return "Dobrova???Polhov Gradec"
        case .domzale: return "Dom??ale"
        case .gorenja_vas_poljane: return "Gorenja Vas???Poljane"
        case .gorisnica: return "Gori??nica"
        case .hoce_slivnica: return "Ho??e-Slivnica"
        case .hodos: return "Hodo??"
        case .hrpelje_kozina: return "Hrpelje-Kozina"
        case .ivancna_gorica: return "Ivan??na Gorica"
        case .jursinci: return "Jur??inci"
        case .kanal_ob_soci: return "Kanal ob So??i"
        case .kidricevo: return "Kidri??evo"
        case .kocevje: return "Ko??evje"
        case .krizevci: return "Kri??evci"
        case .lasko: return "La??ko"
        case .log_dragomer: return "Log-Dragomer"
        case .loska_dolina: return "Lo??ka Dolina"
        case .loski_potok: return "Lo??ki Potok"
        case .luce: return "Lu??e"
        case .majsperk: return "Maj??perk"
        case .menges: return "Menge??"
        case .mezica: return "Me??ica"
        case .miklavz_na_dravskem_polju: return "Miklav?? na Dravskem Polju"
        case .miren_kostanjevica: return "Miren-Kostanjevica"
        case .mirna_pec: return "Mirna Pe??"
        case .mokronog_trebelno: return "Mokronog-Trebelno"
        case .moravce: return "Morav??e"
        case .ormoz: return "Ormo??"
        case .podcetrtek: return "Pod??etrtek"
        case .poljcane: return "Polj??ane"
        case .race_fram: return "Ra??e-Fram"
        case .radece: return "Rade??e"
        case .ravne_na_koroskem: return "Ravne na Koro??kem"
        case .razkrizje: return "Razkri??je"
        case .recica_ob_savinji: return "Re??ica ob Savinji"
        case .rence_vogrsko: return "Ren??e???Vogrsko"
        case .rogaska_slatina: return "Roga??ka Slatina"
        case .rogasovci: return "Roga??ovci"
        case .ruse: return "Ru??e"
        case .salovci: return "??alovci"
        case .semic: return "Semi??"
        case .sempeter_vrtojba: return "??empeter-Vrtojba"
        case .sencur: return "??en??ur"
        case .sentilj: return "??entilj"
        case .sentjernej: return "??entjernej"
        case .sentjur: return "??entjur"
        case .sentrupert: return "??entrupert"
        case .sezana: return "Se??ana"
        case .skocjan: return "??kocjan"
        case .skofja_loka: return "??kofja Loka"
        case .skofljica: return "??kofljica"
        case .smarje_pri_jelsah: return "??marje pri Jel??ah"
        case .smarjeske_toplice: return "??marje??ke Toplice"
        case .smartno_ob_paki: return "??martno ob Paki"
        case .smartno_pri_litiji: return "??martno pri Litiji"
        case .sodrazica: return "Sodra??ica"
        case .solcava: return "Sol??ava"
        case .sostanj: return "??o??tanj"
        case .sredisce_ob_dravi: return "Sredi????e ob Dravi"
        case .starse: return "Star??e"
        case .store: return "??tore"
        case .straza: return "Stra??a"
        case .sveti_andraz_v_slovenskih_goricah: return "Sveti Andra?? v Slovenskih Goricah"
        case .sveti_jurij_ob_scavnici: return "Sveti Jurij ob ????avnici"
        case .sveti_tomaz: return "Sveti Toma??"
        case .tisina: return "Ti??ina"
        case .trzic: return "Tr??i??"
        case .turnisce: return "Turni????e"
        case .velike_lasce: return "Velike La????e"
        case .verzej: return "Ver??ej"
        case .zalec: return "??alec"
        case .zavrc: return "Zavr??"
        case .zelezniki: return "??elezniki"
        case .zetale: return "??etale"
        case .ziri: return "??iri"
        case .zirovnica: return "??irovnica"
        case .zrece: return "Zre??e"
        case .zuzemberk: return "??u??emberk"
            
        case .krsko: return "Kr??ko"
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
