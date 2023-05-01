//
//  CitiesUnitedStatesNewHampshire.swift
//  
//
//  Created by Evan Anderson on 9/25/22.
//

import Foundation

public enum CitiesUnitedStatesNewHampshire : String, SovereignStateCity { // https://en.wikipedia.org/wiki/List_of_municipalities_in_New_Hampshire
    case acworth
    case albany
    case alexandria
    case allenstown
    case alstead
    case alton
    case amherst
    case andover
    case antrim
    case ashland
    case atkinson
    case auburn
    
    case barnstead
    case barrington
    case bartlett
    case bath
    case bedford
    case belmont
    case bennington
    case benton
    case berlin
    case bethlehem
    case boscawen
    case bow
    case bradford
    case brentwood
    case bridgewater
    case bristol
    case brookfield
    case brookline
    
    case campton
    case canaan
    case candia
    case canterbury
    case carroll
    case center_harbor
    case charlestown
    case chatham
    case chester
    case chesterfield
    case chichester
    case claremont
    case clarksville
    case colebrook
    case columbia
    case concord
    case conway
    case cornish
    case croydon
    
    case dalton
    case danbury
    case danville
    case deerfield
    case deering
    case derry
    case dorchester
    case dover
    case dublin
    case dummer
    case dunbarton
    case durham
    
    case east_kingston
    case easton
    case eaton
    case effingham
    case ellsworth
    case enfield
    case epping
    case epsom
    case errol
    case exeter
    
    case farmington
    case fitzwilliam
    case francestown
    case franconia
    case franklin
    case freedom
    case fremont
    
    case gilford
    case gilmanton
    case gilsum
    case goffstown
    case gorham
    case goshen
    case grafton
    case grantham
    case greenfield
    case greenland
    case greenville
    case groton
    
    case hampstead
    case hampton
    case hampton_falls
    case hancock
    case hanover
    case harrisville
    case hart_s_location
    case haverhill
    case hebron
    case henniker
    case hill
    case hillsborough
    case hinsdale
    case holderness
    case hollis
    case hooksett
    case hopkinton
    case hudson
    
    case jackson
    case jaffrey
    case jefferson
    
    case keene
    case kensington
    case kingston
    case laconia
    case lancaster
    case landaff
    case langdon
    case lebanon
    case lee
    case lempster
    case lincoln
    case lisbon
    case litchfield
    case littleton
    case londonderry
    case loudon
    case lyman
    case lyme
    case lyndeborough
    
    case madbury
    case madison
    case manchester
    case marlborough
    case marlow
    case mason
    case meredith
    case merrimack
    case middleton
    case milan
    case milford
    case milton
    case monroe
    case mont_vernon
    case moultonborough
    
    case nashua
    case nelson
    case new_boston
    case new_castle
    case new_durham
    case new_hampton
    case new_ipswich
    case new_london
    case newbury
    case newfields
    case newington
    case newmarket
    case newport
    case newton
    case north_hampton
    case northfield
    case northumberland
    case northwood
    case nottingham
    
    case orange
    case orford
    case ossipee
    
    case pelham
    case pembroke
    case peterborough
    case piermont
    case pittsburg
    case pittsfield
    case plainfield
    case plaistow
    case plymouth
    case portsmouth
    
    case randolph
    case raymond
    case richmond
    case rindge
    case rochester
    case rollinsford
    case roxbury
    case rumney
    case rye
    
    case salem
    case salisbury
    case sanbornton
    case sandown
    case sandwich
    case seabrook
    case sharon
    case shelburne
    case somersworth
    case south_hampton
    case springfield
    case stark
    case stewartstown
    case stoddard
    case strafford
    case stratford
    case stratham
    case sugar_hill
    case sullivan
    case sunapee
    case surry
    case sutton
    case swanzey
    
    case tamworth
    case temple
    case thornton
    case tilton
    case troy
    case tuftonboro
    
    case unity
    
    case wakefield
    case walpole
    case warner
    case warren
    case washington
    case waterville_valley
    case weare
    case webster
    case wentworth
    case westmoreland
    case whitefield
    case wilmot
    case wilton
    case winchester
    case windham
    case windsor
    case wolfeboro
    case woodstock
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.new_hampshire
    }
}
