//
//  SubdivisionsBurundi.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public enum SubdivisionsBurundi : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Burundi
    case bubanza
    case bujumbura_mairie
    case bujumbura_rural
    case bururi
    case cankuzo
    case cibitoke
    case gitega
    case karuzi
    case kayanza
    case kirundo
    case makamba
    case muramvya
    case muyinga
    case mwaro
    case ngozi
    case rumonge
    case rutana
    case ruyigi
    
    public func getCountry() -> Country {
        return Country.burundi
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
}
