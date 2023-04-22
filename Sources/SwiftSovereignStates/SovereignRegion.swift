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
    func isMentioned(in string: String, exact: Bool, ignoreCase: Bool) -> Bool
    
    /// The name of this SovereignRegion as it is commonly known as internationally.
    @available(*, deprecated)
    var short_name : String { get }
    /// Where the decimal point `(.)` should be located in the `short_name`.
    @available(*, deprecated)
    var short_name_decimal_separator_index : Int? { get }
    /// The real name of this SovereignRegion. Usually only used if this SovereignRegion's legal name contains accents, hyphens, commas, or other special characters.
    @available(*, deprecated)
    var real_name : String? { get }
    
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
    var description: String { return cache_id }
    
    func encode(to encoder: Encoder) throws {
        var container:SingleValueEncodingContainer = encoder.singleValueContainer()
        try container.encode(cache_id)
    }
    
    /// Compares whether this SovereignRegion is equal to another SovereignRegion based on ``cache_id``.
    func isEqual(_ region: (any SovereignRegion)?) -> Bool {
        guard let region:any SovereignRegion = region else { return false }
        return cache_id.elementsEqual(region.cache_id)
    }
    
    var keywords : Set<String> {
        let id:String = cache_id
        if let keywords:Set<String> = SwiftSovereignStateCacheSubdivisions.keywords[id] {
            return keywords
        }
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
        SwiftSovereignStateCacheSubdivisions.keywords[id] = keywords
        return keywords
    }
    var additional_keywords : Set<String>? {
        return nil
    }
    
    func isMentioned(in string: String, exact: Bool, ignoreCase: Bool) -> Bool {
        return exact ? SovereignRegions.doesEqual(string: string, values: keywords, option: ignoreCase ? .caseInsensitive : .literal) : SovereignRegions.doesSatisfy(string: string, values: keywords)
    }
    
    var official_names : Set<String>? {
        return nil
    }
    
    var aliases : Set<String>? {
        return nil
    }
    
    var name : String {
        return real_name ?? short_name
    }
    
    var short_name : String {
        let identifier:String = rawValue
        let decimalSeparatorIndex:Int? = identifier.starts(with: "st_") ? 0 : short_name_decimal_separator_index
        return SovereignRegions.toCorrectCapitalization(input: identifier, decimalSeparatorIndex: decimalSeparatorIndex)
    }
    var short_name_decimal_separator_index : Int? {
        return nil
    }
    
    var real_name : String? {
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
        let values:[String] = id.components(separatedBy: "/"), lastValue:String = SovereignRegions.urlEncoded(values[values.count-1])
        let type:String, offset:Int
        if id.starts(with: "en") {
            type = "en"
            offset = 1
        } else {
            type = "commons"
            offset = 0
        }
        if idLowercase.hasSuffix(".png") || idLowercase.hasSuffix(".jpg") || idLowercase.hasSuffix(".gif") {
            return "https://upload.wikimedia.org/wikipedia/" + type + "/thumb/" + values[offset] + "/" + values[offset + 1] + "/" + lastValue + "/%quality%px-" + lastValue
        } else {
            return "https://upload.wikimedia.org/wikipedia/" + type + "/thumb/" + values[offset] + "/" + values[offset + 1] + "/" + lastValue + ".svg/%quality%px-" + lastValue + ".svg.png"
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

internal extension Sequence {
    func filterAsync(_ transform: @escaping (Element) -> Bool) async -> [Element] {
        var values:[Element] = [Element]()
        await withTaskGroup(of: Element?.self, body: { group in
            for element in self {
                group.addTask {
                    return transform(element) ? element : nil
                }
            }
            for await value in group {
                if let value:Element = value {
                    values.append(value)
                }
            }
        })
        return values
    }
}
internal enum SovereignRegions {
    private static var excluded_words:Set<Substring> = ["and", "the", "da", "of", "del", "de", "la", "al", "on", "y", "du", "es", "el", "do", "ob", "na", "v", "pri", "du", "qui"]
    
    fileprivate static func toCorrectCapitalization(input: String, decimalSeparatorIndex: Int?) -> String { // TODO: add localization for all SovereignRegion names, preventing the use of this function for performance gains
        var values:[Substring] = input.split(separator: "_")
        if let decimalSeparatorIndex:Int = decimalSeparatorIndex {
            values[decimalSeparatorIndex] = values[decimalSeparatorIndex] + "."
        }
        return values.map({ value in
            guard !excluded_words.contains(value) else { return input.starts(with: value) ? capitalize(value) : value }
            return capitalize(value)
        }).joined(separator: " ")
    }
    private static func capitalize(_ string: Substring) -> Substring {
        return string.first!.uppercased() + string.suffix(string.count - 1)
    }
    
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
    
    static func doesEqual(string: String, values: Set<String>, option: String.CompareOptions) -> Bool {
        return values.first(where: { string.compare($0, options: option) == .orderedSame }) != nil
    }
    static func doesSatisfy(string: String, values: Set<String>) -> Bool {
        guard let value:String = values.first(where: { string.contains($0) }) else { return false }
        return string.range(of: prefixRegex + "(" + value + ")" + suffixRegex, options: [.regularExpression]) != nil
    }
    
    private static let prefixRegex:String = {
        let string:String = [
            " ",
            "-", "–",
            "\\(", "\\[",
            "/",
            "\"",
            "^"
        ].joined(separator: "|")
        return "(" + string + ")"
    }()
    private static let suffixRegex:String = {
        let string:String = [
            " ",
            "\\.", "\\?", "\\!",
            ",",
            ";", ":",
            "-", "–",
            "'", "\"",
            "\\)", "\\]",
            "/"
        ].joined(separator: "|")
        return "(" + string + ")"
    }()
}


public protocol SovereignRegionWrapper : SovereignRegion {
}
public extension SovereignRegionWrapper {
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
