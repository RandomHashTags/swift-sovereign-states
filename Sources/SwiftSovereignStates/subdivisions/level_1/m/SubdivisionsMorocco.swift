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
    
    public var country : Locale.Region {
        return Locale.Region.morocco
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .oriental:
            return "_(Morocco)"
        default:
            return nil
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
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
