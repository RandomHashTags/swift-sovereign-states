//
//  CountiesUnitedStatesSouthCarolina.swift
//  
//
//  Created by Evan Anderson on 2/27/23.
//

import Foundation

public enum CountiesUnitedStatesSouthCarolina : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_South_Carolina
    case abbeville
    case aiken
    case allendale
    case anderson
    case bamberg
    case barnwell
    case beaufort
    case berkeley
    case calhoun
    case charleston
    case cherokee
    case chester
    case chesterfield
    case clarendon
    case colleton
    case darlington
    case dillon
    case dorchester
    case edgefield
    case fairfield
    case florence
    case georgetown
    case greenville
    case greenwood
    case hampton
    case horry
    case jasper
    case kershaw
    case lancaster
    case laurens
    case lee
    case lexington
    case marion
    case marlboro
    case mccormick
    case newberry
    case oconee
    case orangeburg
    case pickens
    case richland
    case saluda
    case spartanburg
    case sumter
    case union
    case williamsburg
    case york
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.south_carolina
    }
    
    public var fips_code : Int {
        switch self {
        case .abbeville: return 001
        case .aiken: return 003
        case .allendale: return 005
        case .anderson: return 007
        case .bamberg: return 009
        case .barnwell: return 011
        case .beaufort: return 013
        case .berkeley: return 015
        case .calhoun: return 017
        case .charleston: return 019
        case .cherokee: return 021
        case .chester: return 023
        case .chesterfield: return 025
        case .clarendon: return 027
        case .colleton: return 029
        case .darlington: return 031
        case .dillon: return 033
        case .dorchester: return 035
        case .edgefield: return 037
        case .fairfield: return 039
        case .florence: return 041
        case .georgetown: return 043
        case .greenville: return 045
        case .greenwood: return 047
        case .hampton: return 049
        case .horry: return 051
        case .jasper: return 053
        case .kershaw: return 055
        case .lancaster: return 057
        case .laurens: return 059
        case .lee: return 061
        case .lexington: return 063
        case .marion: return 067
        case .marlboro: return 069
        case .mccormick: return 065
        case .newberry: return 071
        case .oconee: return 073
        case .orangeburg: return 075
        case .pickens: return 077
        case .richland: return 079
        case .saluda: return 081
        case .spartanburg: return 083
        case .sumter: return 085
        case .union: return 087
        case .williamsburg: return 089
        case .york: return 091
        }
    }
}
