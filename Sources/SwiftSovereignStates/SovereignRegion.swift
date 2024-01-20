//
//  SovereignRegion.swift
//  
//
//  Created by Evan Anderson on 9/22/22.
//

import Foundation

public protocol SovereignRegion : Codable, Hashable, CaseIterable, LosslessStringConvertible, RawRepresentable where RawValue == String { // https://en.wikipedia.org/wiki/Category:Administrative_divisions_by_level_and_country
    /// The unique identifier of this SovereignRegion used for caching.
    var cache_id : String { get }
    /// Cached strings this SovereignRegion is commonly recognized by.
    var keywords : Set<String> { get }
    /// Additional keywords this SovereignRegion should be recognized by.
    var additional_keywords : Set<String>? { get }
    /// Whether this SovereignRegion is mentioned or not in the `string`.
    func isMentioned(in string: String, options: String.CompareOptions) -> Bool
    
    /// The common short name of this SovereignRegion.
    var name : String { get }
    
    /// The slug Wikipedia has for this SovereignRegion as it would appear in the url, but the underscores are spaces.
    var wikipedia_name : String? { get }
    /// The official names this SovereignRegion legally identifies as.
    var official_names : Set<String>? { get }
    /// The names of this SovereignRegion is also known by.
    var aliases : Set<String>? { get }
    
    /// This SovereignRegion's official government website URL.
    var government_website : String? { get }
    
    /// URL that represents this SovereignRegion's official flag.
    var flag_url : String? { get }
    /// This SovereignRegion's Wikipedia flag url suffix that identifies where it is located on their servers.
    var wikipedia_flag_url_svg_id : String? { get }
    var wikipedia_url : String { get }
    var wikipedia_url_prefix : String? { get }
    var wikipedia_url_suffix : String? { get }
    
    /// The official currencies used within this SovereignRegion.
    var currencies : [Currency] { get }
    /// All the time zones this SovereignRegion recognizes within its administrative borders.
    var time_zones : [SovereignStateTimeZone]? { get }
    /// All temperate zones this SovereignRegion contains within its administrative borders.
    var temperate_zones : [TemperateZone]? { get }
}

public extension SovereignRegion {
    var description : String { return cache_id }
    
    func encode(to encoder: Encoder) throws {
        var container:SingleValueEncodingContainer = encoder.singleValueContainer()
        try container.encode(cache_id)
    }
    
    /// Compares whether this SovereignRegion is equal to another SovereignRegion based on ``cache_id``.
    func isEqual(_ region: any SovereignRegion) -> Bool {
        return cache_id.elementsEqual(region.cache_id)
    }
    /// Compares whether this SovereignRegion is equal to another SovereignRegion based on ``cache_id``.
    func isEqual(_ region: (any SovereignRegion)?) -> Bool {
        guard let region:any SovereignRegion = region else { return false }
        return cache_id.elementsEqual(region.cache_id)
    }
    
    var keywords : Set<String> {
        var keywords:Set<String> = [name]
        if let wikipedia_name:String = wikipedia_name {
            keywords.insert(wikipedia_name)
        }
        if let official_names:Set<String> = official_names {
            keywords.formUnion(official_names)
        }
        if let aliases:Set<String> = aliases {
            keywords.formUnion(aliases)
        }
        if let additional:Set<String> = additional_keywords {
            keywords.formUnion(additional)
        }
        return keywords
    }
    var additional_keywords : Set<String>? {
        return nil
    }
    
    func isMentioned(in string: String, options: String.CompareOptions) -> Bool {
        return SovereignRegions.doesSatisfy(string: string, values: keywords, options: options)
    }
    
    var official_names : Set<String>? {
        return nil
    }
    
    var aliases : Set<String>? {
        return nil
    }
    
    var wikipedia_name : String? {
        return nil
    }
    
    var government_website : String? {
        return nil
    }
    
    var flag_url : String? {
        guard let id:String = wikipedia_flag_url_svg_id else { return nil }
        let idLowercase:String = id.lowercased()
        let values:[Substring] = id.split(separator: "/"), lastValue:String = SovereignRegions.urlEncoded(String(values[values.count-1]))
        let type:String, offset:Int
        if id.starts(with: "en") {
            type = "en"
            offset = 1
        } else {
            type = "commons"
            offset = 0
        }
        if idLowercase.hasSuffix(".png") || idLowercase.hasSuffix(".jpg") || idLowercase.hasSuffix(".gif") {
            return "https://upload.wikimedia.org/wikipedia/" + type + "/thumb/" + String(values[offset]) + "/" + String(values[offset + 1]) + "/" + lastValue + "/%quality%px-" + lastValue
        } else {
            return "https://upload.wikimedia.org/wikipedia/" + type + "/thumb/" + String(values[offset]) + "/" + String(values[offset + 1]) + "/" + lastValue + ".svg/%quality%px-" + lastValue + ".svg.png"
        }
    }
    
    var wikipedia_flag_url_svg_id : String? {
        return nil
    }
    
    var wikipedia_url : String {
        let name:String = (wikipedia_name ?? name).replacingOccurrences(of: " ", with: "_")
        return "https://en.wikipedia.org/wiki/" + (wikipedia_url_prefix ?? "") + SovereignRegions.urlEncoded(name) + (wikipedia_url_suffix ?? "")
    }
    var wikipedia_url_prefix : String? {
        return nil
    }
    var wikipedia_url_suffix : String? {
        return nil
    }
    
    var time_zones : [SovereignStateTimeZone]? {
        return nil
    }
    
    /// The formatted time of the first SovereignRegion's time zone, with a custom date and time style.
    func getTime(for date: Date = Date(), timeStyle: DateFormatter.Style, dateStyle: DateFormatter.Style, showAbbreviation: Bool) -> String? {
        guard let timezone:TimeZone = time_zones?.first?.getTimeZone() else { return nil }
        return SovereignRegions.formatTime(date: date, timeZone: timezone, timeStyle: timeStyle, dateStyle: dateStyle, showAbbreviation: showAbbreviation)
    }
    /// All formatted times of the SovereignRegion's time zones, with custom date and time styles.
    func getTimes(for date: Date = Date(), timeStyle: DateFormatter.Style, dateStyle: DateFormatter.Style, showAbbreviation: Bool) -> [String]? {
        guard let timezones:[TimeZone] = time_zones?.compactMap({ $0.getTimeZone() }) else { return nil }
        return timezones.map({ SovereignRegions.formatTime(date: date, timeZone: $0, timeStyle: timeStyle, dateStyle: dateStyle, showAbbreviation: showAbbreviation) })
    }
    
    var temperate_zones : [TemperateZone]? {
        return nil
    }
    /// The season this SovereignRegion is experiencing at a specific month and day.
    func getSeason(type: WeatherSeasonType = .astronomical, month: Int, day: Int) -> WeatherSeason? {
        return temperate_zones?.first?.getSeason(type: type, month: month, day: day)
    }
}

internal enum SovereignRegions {    
    fileprivate static func formatTime(date: Date, timeZone: TimeZone, timeStyle: DateFormatter.Style, dateStyle: DateFormatter.Style, showAbbreviation: Bool) -> String {
        let formatter:DateFormatter = DateFormatter()
        formatter.timeStyle = timeStyle
        formatter.dateStyle = dateStyle
        formatter.timeZone = timeZone
        formatter.calendar = Calendar.current
        let string:String = formatter.string(from: date)
        guard showAbbreviation, let abbreviation:String = timeZone.abbreviation() else { return string }
        return string + " " + abbreviation
    }
    fileprivate static func urlEncoded(_ string: String) -> String {
        return string.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? string
    }
    
    static func doesSatisfy(string: String, values: Set<String>, options: String.CompareOptions) -> Bool {
        let string:String = string.folding(options: options, locale: nil)
        let start_index:String.Index = string.startIndex, end_index:String.Index = string.endIndex
        let values:Set<String> = values.map_set({ $0.folding(options: options, locale: nil) })
        return doesSatisfy(string: string, start_index: start_index, end_index: end_index, values: values)
    }
    static func doesSatisfy(string: String, start_index: String.Index, end_index: String.Index, values: Set<String>) -> Bool {
        for value in values {
            let ranges:Set<Range<String.Index>> = string.all_ranges(of: value)
            for range in ranges {
                let prefix_index:String.Index? = string.index(range.lowerBound, offsetBy: -1, limitedBy: start_index)
                if (prefix_index == nil || !string[prefix_index!].isLetter) && (range.upperBound == end_index || !string[range.upperBound].isLetter) {
                    return true
                }
            }
        }
        return false
    }
}

extension String {
    func all_ranges(of substring: String) -> Set<Range<Index>> {
        var ranges:Set<Range<Index>> = []
        var last_range:Index? = nil
        while let range:Range<Index> = range(of: substring, range: (last_range ?? self.startIndex)..<self.endIndex) {
            ranges.insert(range)
            last_range = range.upperBound
        }
        return ranges
    }
}


public protocol SovereignRegionWrapper : SovereignRegion {
}
public extension SovereignRegionWrapper {
    static var allCases : [Self] {
        return []
    }
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.cache_id.elementsEqual(rhs.cache_id)
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(cache_id)
    }
    
    func encode(to encoder: Encoder) throws {
        var container:SingleValueEncodingContainer = encoder.singleValueContainer()
        try container.encode(cache_id)
    }
}
