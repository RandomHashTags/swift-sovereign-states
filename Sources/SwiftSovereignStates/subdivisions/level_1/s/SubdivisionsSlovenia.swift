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
    
    public var country : Locale.Region {
        return Locale.Region.slovenia
    }
    
    public var type : SovereignStateSubdivisionType {
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
    
    public var wikipediaURLPrefix : String? {
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
            return type_suffix + "_of_"
        }
    }
    
    public var wikipediaURLSuffix : String? {
        return nil
    }
}
