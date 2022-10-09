//
//  SovereignStateSubdivisionType.swift
//  
//
//  Created by Evan Anderson on 6/16/22.
//

import Foundation

public enum SovereignStateSubdivisionType : CaseIterable {
    case administrative_areas
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
    case union_territories
    case voivodeships
        
    public func getSingularName() -> String {
        switch self {
        case .administrative_areas: return "Administrative Area"
        case .autonomous_cities: return "Autonomous City"
        case .autonomous_communities: return "Autonomous Community"
        case .autonomous_districts: return "Autonomous District"
        case .autonomous_islands: return "Autonomous Island"
        case .autonomous_municipalities: return "Autonomous Municipality"
        case .autonomous_regions: return "Autonomous Region"
        case .autonomous_republics: return "Autonomous Republic"
        case .autonomous_territorial_units: return "Autonomous Territorial Unit"
        case .cantons: return "Canton"
        case .chartered_cities: return "Charter City"
        case .cities: return "City"
        case .city_municipalities: return "City Municipality"
        case .communes: return "Commune"
        case .councils: return "Council"
        case .counties: return "County"
        case .departments: return "Department"
        case .dependencies: return "Dependency"
        case .districts: return "District"
        case .divisions: return "Division"
        case .federal_districts: return "Federal District"
        case .federal_entities: return "Federal Entity"
        case .federal_territories: return "Federal Territory"
        case .freely_associated_states: return "Freely Associated State"
        case .governorates: return "Governorate"
        case .incorporated_areas: return "Incorporated Area"
        case .independent_cities: return "Independent City"
        case .indigenous_province: return "Indigenous Province"
        case .metropolitan_cities: return "Metropolitan City"
        case .municipalities: return "Municipality"
        case .oblasts: return "Oblast"
        case .parishes: return "Parish"
        case .prefectures: return "Prefecture"
        case .provinces: return "Province"
        case .regions: return "Region"
        case .special_administrative_areas: return "Special Administrative Area"
        case .special_administrative_regions: return "Special Administrative Region"
        case .special_cities: return "Special City"
        case .special_municipalities: return "Special Municipality"
        case .special_self_governing_cities: return "Special self-governing City"
        case .special_self_governing_dependencies: return "Special self-governing Dependency"
        case .states: return "State"
        case .subdivisions: return "Subdivision"
        case .territories: return "Territory"
        case .union_territories: return "Union Territory"
        case .voivodeships: return "Voivodeship"
        }
    }
    public func getPluralName() -> String {
        switch self {
        case .administrative_areas: return "Administrative Area"
        case .autonomous_cities: return "Autonomous Cities"
        case .autonomous_communities: return "Autonomous Communities"
        case .autonomous_districts: return "Autonomous Districts"
        case .autonomous_islands: return "Autonomous Islands"
        case .autonomous_municipalities: return "Autonomous Municipalities"
        case .autonomous_regions: return "Autonomous Regions"
        case .autonomous_republics: return "Autonomous Republics"
        case .autonomous_territorial_units: return "Autonomous Territorial Units"
        case .cantons: return "Cantons"
        case .chartered_cities: return "Charter Cities"
        case .cities: return "Cities"
        case .city_municipalities: return "City Municipalities"
        case .communes: return "Communes"
        case .councils: return "Councils"
        case .counties: return "Counties"
        case .departments: return "Departments"
        case .dependencies: return "Dependencies"
        case .districts: return "Districts"
        case .divisions: return "Divisions"
        case .federal_districts: return "Federal Districts"
        case .federal_entities: return "Federal Entities"
        case .federal_territories: return "Federal Territories"
        case .freely_associated_states: return "Freely Associated States"
        case .governorates: return "Governorates"
        case .incorporated_areas: return "Incorporated Areas"
        case .independent_cities: return "Independent Cities"
        case .indigenous_province: return "Indigenous Provinces"
        case .metropolitan_cities: return "Metropolitan Cities"
        case .municipalities: return "Municipalities"
        case .oblasts: return "Oblasts"
        case .parishes: return "Parishes"
        case .prefectures: return "Prefectures"
        case .provinces: return "Provinces"
        case .regions: return "Regions"
        case .special_administrative_areas: return "Special Administrative Areas"
        case .special_administrative_regions: return "Special Administrative Regions"
        case .special_cities: return "Special Cities"
        case .special_municipalities: return "Special Municipalities"
        case .special_self_governing_cities: return "Special self-governing Cities"
        case .special_self_governing_dependencies: return "Special self-governing Dependencies"
        case .states: return "States"
        case .subdivisions: return "Subdivisions"
        case .territories: return "Territories"
        case .union_territories: return "Union Territories"
        case .voivodeships: return "Voivodeships"
        }
    }
}
