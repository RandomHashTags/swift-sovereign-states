//
//  SubdivisionsMorocco.swift
//  
//
//  Created by Evan Anderson on 2/13/23.
//

import Foundation

public enum SubdivisionsMorocco : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Morocco
    case beni_mellal_khenifra
    case casablanca_settat
    case dakhla_oued_ed_dahab
    case draa_tafilalet
    case fes_meknes
    case guelmim_oued_noun
    case laayoune_sakia_el_hamra
    case marrakech_safi
    case oriental
    case rabat_sale_kenitra
    case souss_massa
    case tanger_tetouan_al_hoceima
    
    public var country : Country {
        return Country.morocco
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public var real_name : String? {
        switch self {
        case .beni_mellal_khenifra: return "Béni Mellal-Khénifra"
        case .casablanca_settat: return "Casablanca-Settat"
        case .dakhla_oued_ed_dahab: return "Dakhla-Oued Ed-Dahab"
        case .draa_tafilalet: return "Drâa-Tafilalet"
        case .fes_meknes: return "Fès-Meknès"
        case .guelmim_oued_noun: return "Guelmim-Oued Noun"
        case .laayoune_sakia_el_hamra: return "Laâyoune-Sakia El Hamra"
        case .marrakech_safi: return "Marrakech-Safi"
        case .rabat_sale_kenitra: return "Rabat-Salé-Kénitra"
        case .souss_massa: return "Souss-Massa"
        case .tanger_tetouan_al_hoceima: return "Tanger-Tétouan-Al Hoceïma"
        default: return nil
        }
    }
    
    public var wikipedia_url_suffix : String? {
        switch self {
        case .oriental:
            return "_(Morocco)"
        default:
            return nil
        }
    }
    
    public var wikipedia_flag_url_svg_id : String? {
        switch self {
        case .beni_mellal_khenifra: return nil
        case .casablanca_settat: return nil
        case .dakhla_oued_ed_dahab: return nil
        case .draa_tafilalet: return nil
        case .fes_meknes: return nil
        case .guelmim_oued_noun: return nil
        case .laayoune_sakia_el_hamra: return nil
        case .marrakech_safi: return "2/2e/Flag_of_Marrakech-Safi_Region"
        case .oriental: return nil
        case .rabat_sale_kenitra: return nil
        case .souss_massa: return nil
        case .tanger_tetouan_al_hoceima: return nil
        }
    }
}
