//
//  SubdivisionsBrunei.swift
//
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation

public enum SubdivisionsBrunei : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_Brunei
    case belait
    case brunei_muara
    case temburong
    case tutong
    
    public var country : Locale.Region {
        return Locale.Region.brunei
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.districts
    }
}
