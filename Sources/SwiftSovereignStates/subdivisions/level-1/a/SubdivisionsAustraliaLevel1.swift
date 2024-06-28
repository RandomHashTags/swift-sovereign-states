//
//  SubdivisionsAustraliaLevel1.swift
//  
//
//  Created by Evan Anderson on 6/21/22.
//

import Foundation

public typealias SubdivisionsAustraliaLevel1 = Locale.Region.Subdivision.Level1.Australia

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.australia, allSameType: false, type: Locale.Region.SubdivisionType.state)
    struct Australia : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .australian_capital_territory,
                    //.jervis_bay_territory,
                    .northern_territory,
                
                    //.ashmore_and_cartier_islands,
                    //.australian_antarctic_territory,
                    .christmas_island,
                    .cocos_keeling_islands,
                    //.coral_sea_islands,
                    .heard_island_and_mcdonald_islands,
                    .norfolk_island:
                return Locale.Region.SubdivisionType.federalTerritory
            default:
                return Locale.Region.SubdivisionType.state
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsAustraliaLevel1 { // https://en.wikipedia.org/wiki/States_and_territories_of_Australia | https://en.wikipedia.org/wiki/ISO_3166-2:AU
    static let new_south_wales = get("NSW")
    static let queensland = get("QLD")
    static let south_australia = get("SA")
    static let tasmania = get("TAS")
    static let victoria = get("VIC")
    static let western_australia = get("WA")
    
    static let australian_capital_territory = get("ACT")
    //static let jervis_bay_territory
    static let northern_territory = get("NT")
    
    //static let ashmore_and_cartier_islands
    //static let australian_antarctic_territory
    static let christmas_island = get(Locale.Region.christmasIsland.identifier)
    static let cocos_keeling_islands = get(Locale.Region.cocosIslands.identifier)
    //static let coral_sea_islands
    static let heard_island_and_mcdonald_islands = get(Locale.Region.heardMcdonaldIslands.identifier)
    static let norfolk_island = get(Locale.Region.norfolkIsland.identifier)
}

// MARK: Neighbors
public extension SubdivisionsAustraliaLevel1 {
    var neighbors : [any Locale.Region.Subdivision.Level1Protocol] {
        switch self {
        case .new_south_wales:
            return [SubdivisionsAustraliaLevel1.queensland, SubdivisionsAustraliaLevel1.south_australia, SubdivisionsAustraliaLevel1.victoria, SubdivisionsAustraliaLevel1.australian_capital_territory/*, SubdivisionsAustraliaLevel1.jervis_bay_territory, SubdivisionsAustraliaLevel1.coral_sea_islands*/]
        case .queensland:
            return [SubdivisionsAustraliaLevel1.northern_territory, SubdivisionsAustraliaLevel1.south_australia, SubdivisionsAustraliaLevel1.new_south_wales/*, SubdivisionsAustraliaLevel1.coral_sea_islands*/]
        case .south_australia:
            return [SubdivisionsAustraliaLevel1.western_australia, SubdivisionsAustraliaLevel1.northern_territory, SubdivisionsAustraliaLevel1.queensland, SubdivisionsAustraliaLevel1.new_south_wales, SubdivisionsAustraliaLevel1.victoria]
        case .tasmania:
            return [SubdivisionsAustraliaLevel1.victoria]
        case .victoria:
            return [SubdivisionsAustraliaLevel1.south_australia, SubdivisionsAustraliaLevel1.new_south_wales, SubdivisionsAustraliaLevel1.tasmania]
        case .western_australia:
            return [/*SubdivisionsAustraliaLevel1.ashmore_and_cartier_islands,*/ SubdivisionsAustraliaLevel1.northern_territory, SubdivisionsAustraliaLevel1.south_australia]
            
        case .australian_capital_territory:
            return [SubdivisionsAustraliaLevel1.new_south_wales]
        /*case .jervis_bay_territory:
            return [SubdivisionsAustraliaLevel1.new_south_wales]*/
        case .northern_territory:
            return [SubdivisionsAustraliaLevel1.western_australia, SubdivisionsAustraliaLevel1.south_australia, SubdivisionsAustraliaLevel1.queensland]
            
        /*case .ashmore_and_cartier_islands:
            return [SubdivisionsAustraliaLevel1.western_australia]
        case .australian_antarctic_territory:
            return [SubdivisionsAustraliaLevel1.heard_island_and_mcdonald_islands]*/
        case .christmas_island:
            return [SubdivisionsAustraliaLevel1.cocos_keeling_islands]
        case .cocos_keeling_islands:
            return [SubdivisionsAustraliaLevel1.christmas_island]
        //case .coral_sea_islands:
        //    return [SubdivisionsAustraliaLevel1.queensland, SubdivisionsAustraliaLevel1.new_south_wales, SubdivisionsAustraliaLevel1.norfolk_island]
        case .heard_island_and_mcdonald_islands:
            return [/*SubdivisionsAustraliaLevel1.australian_antarctic_territory*/]
        case .norfolk_island:
            return [/*SubdivisionsAustraliaLevel1.coral_sea_islands*/]
        default:
            return []
        }
    }
}