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
    
    public var type : Locale.Region.SubdivisionType {
        return Locale.Region.SubdivisionType.region
    }
}
