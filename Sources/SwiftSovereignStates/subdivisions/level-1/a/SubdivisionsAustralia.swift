//
//  SubdivisionsAustralia.swift
//  
//
//  Created by Evan Anderson on 6/21/22.
//

import Foundation

public enum SubdivisionsAustralia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/States_and_territories_of_Australia
    case new_south_wales
    case queensland
    case south_australia
    case tasmania
    case victoria
    case western_australia
    
    case australian_capital_territory
    case jervis_bay_territory
    case northern_territory
    
    case ashmore_and_cartier_islands
    case australian_antarctic_territory
    case christmas_island
    case cocos_keeling_islands
    case coral_sea_islands
    case heard_island_and_mcdonald_islands
    case norfolk_island
    
    public var country : Locale.Region {
        return Locale.Region.australia
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .australian_capital_territory,
                .jervis_bay_territory,
                .northern_territory,
            
                .ashmore_and_cartier_islands,
                .australian_antarctic_territory,
                .christmas_island,
                .cocos_keeling_islands,
                .coral_sea_islands,
                .heard_island_and_mcdonald_islands,
                .norfolk_island:
            return .federal_territories
        default:
            return SovereignStateSubdivisionType.states
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .victoria:
            return "_(Australia)"
        default:
            return nil
        }
    }
    
    public var isoAlpha2 : String? {
        switch self {
        case .new_south_wales: return "NSW"
        case .queensland: return "QLD"
        case .south_australia: return "SA"
        case .tasmania: return "TAS"
        case .victoria: return "VIC"
        case .western_australia: return "WA"
        default: return nil
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .new_south_wales: return "0/00/Flag_of_New_South_Wales"
        case .queensland: return "0/04/Flag_of_Queensland"
        case .south_australia: return "f/fd/Flag_of_South_Australia"
        case .tasmania: return "4/46/Flag_of_Tasmania"
        case .victoria: return "0/08/Flag_of_Victoria_%28Australia%29"
        case .western_australia: return "a/a5/Flag_of_Western_Australia"

        case .australian_capital_territory: return "8/8c/Flag_of_the_Australian_Capital_Territory"
        case .jervis_bay_territory: return nil
        case .northern_territory: return "b/b7/Flag_of_the_Northern_Territory"

        case .ashmore_and_cartier_islands: return nil
        case .australian_antarctic_territory: return nil
        case .christmas_island: return "6/67/Flag_of_Christmas_Island"
        case .cocos_keeling_islands: return "7/74/Flag_of_the_Cocos_%28Keeling%29_Islands"
        case .coral_sea_islands: return nil
        case .heard_island_and_mcdonald_islands: return nil
        case .norfolk_island: return "4/48/Flag_of_Norfolk_Island"
        }
    }
    
    public var neighbors : [any SovereignStateSubdivision] {
        switch self {
        case .new_south_wales:
            return [SubdivisionsAustralia.queensland, SubdivisionsAustralia.south_australia, SubdivisionsAustralia.victoria, SubdivisionsAustralia.australian_capital_territory, SubdivisionsAustralia.jervis_bay_territory, SubdivisionsAustralia.coral_sea_islands]
        case .queensland:
            return [SubdivisionsAustralia.northern_territory, SubdivisionsAustralia.south_australia, SubdivisionsAustralia.new_south_wales, SubdivisionsAustralia.coral_sea_islands]
        case .south_australia:
            return [SubdivisionsAustralia.western_australia, SubdivisionsAustralia.northern_territory, SubdivisionsAustralia.queensland, SubdivisionsAustralia.new_south_wales, SubdivisionsAustralia.victoria]
        case .tasmania:
            return [SubdivisionsAustralia.victoria]
        case .victoria:
            return [SubdivisionsAustralia.south_australia, SubdivisionsAustralia.new_south_wales, SubdivisionsAustralia.tasmania]
        case .western_australia:
            return [SubdivisionsAustralia.ashmore_and_cartier_islands, SubdivisionsAustralia.northern_territory, SubdivisionsAustralia.south_australia]
            
        case .australian_capital_territory:
            return [SubdivisionsAustralia.new_south_wales]
        case .jervis_bay_territory:
            return [SubdivisionsAustralia.new_south_wales]
        case .northern_territory:
            return [SubdivisionsAustralia.western_australia, SubdivisionsAustralia.south_australia, SubdivisionsAustralia.queensland]
            
        case .ashmore_and_cartier_islands:
            return [SubdivisionsAustralia.western_australia]
        case .australian_antarctic_territory:
            return [SubdivisionsAustralia.heard_island_and_mcdonald_islands]
        case .christmas_island:
            return [SubdivisionsAustralia.cocos_keeling_islands]
        case .cocos_keeling_islands:
            return [SubdivisionsAustralia.christmas_island]
        case .coral_sea_islands:
            return [SubdivisionsAustralia.queensland, SubdivisionsAustralia.new_south_wales, SubdivisionsAustralia.norfolk_island]
        case .heard_island_and_mcdonald_islands:
            return [SubdivisionsAustralia.australian_antarctic_territory]
        case .norfolk_island:
            return [SubdivisionsAustralia.coral_sea_islands]
        }
    }
}
