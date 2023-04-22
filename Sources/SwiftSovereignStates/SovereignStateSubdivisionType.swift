//
//  SovereignStateSubdivisionType.swift
//  
//
//  Created by Evan Anderson on 6/16/22.
//

import Foundation

public enum SovereignStateSubdivisionType : String, CaseIterable {
    case administrative_areas
    case atolls
    case autonomous_cities
    case autonomous_communities
    case autonomous_districts
    case autonomous_islands
    case autonomous_municipalities
    case autonomous_regions
    case autonomous_republics
    case autonomous_territorial_units
    case cantons
    case chartered_cities
    case cities
    case city_municipalities
    case communes
    case councils
    case counties
    case departments
    case dependencies
    case districts
    case divisions
    case federal_districts
    case federal_entities
    case federal_member_states
    case federal_territories
    case freely_associated_states
    case governorates
    case incorporated_areas
    case independent_cities
    case indigenous_province
    case metropolitan_cities
    case municipalities
    case oblasts
    case parishes
    case prefectures
    case provinces
    case regions
    case special_administrative_areas
    case special_administrative_regions
    case special_cities
    case special_municipalities
    case special_self_governing_cities
    case special_self_governing_dependencies
    case states
    case subdivisions
    case territories
    case towns
    case union_territories
    case voivodeships
        
    public var name_singular : String {
        return SwiftSovereignStateLocalization.get_release_subdivision_type_name_singular(self)
    }
    public var name_plural : String {
        return SwiftSovereignStateLocalization.get_release_subdivision_type_name_plural(self)
    }
}
