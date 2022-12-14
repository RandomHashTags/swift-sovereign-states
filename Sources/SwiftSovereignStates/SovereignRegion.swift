//
//  SovereignRegion.swift
//  
//
//  Created by Evan Anderson on 9/22/22.
//

import Foundation

public protocol SovereignRegion : Codable, Hashable, LosslessStringConvertible { // https://en.wikipedia.org/wiki/Category:Administrative_divisions_by_level_and_country
    /// The unique identifier of the SovereignRegion, in relation to other administrative regions of the same type.
    func getIdentifier() -> String
    /// The unique identifier of this SovereignRegion used for caching.
    func getCacheID() -> String
    /// Cached strings this SovereignRegion is commonly recognized by.
    func getKeywords() -> [String]
    /// Additional keywords this SovereignRegion should be recognized by.
    func getAdditionalKeywords() -> [String]?
    /// Whether this SovereignRegion is mentioned or not in the `string`.
    func isMentioned(in string: String, exact: Bool, ignoreCase: Bool) -> Bool
    
    /// The name of this SovereignRegion as it is comonly known as internationally.
    func getShortName() -> String
    /// Where the decimal point `(.)` should be located in the ``getShortName()-7cmmc``.
    func getShortNameDecimalSeparatorIndex() -> Int?
    /// The real name of this SovereignRegion. Usually only used if this SovereignRegion's legal name contains accents, hyphens, commas, or other special characters.
    func getRealName() -> String?
    func getConditionalName() -> String?
    /// The official names this SovereignRegion legally identifies as.
    func getOfficialNames() -> [String]?
    /// The names of this SovereignRegion is also known by.
    func getAliases() -> [String]?
    
    /// This SovereignRegion's official government website URL.
    func getGovernmentWebsite() -> String?
    
    func getFlagURL() -> String?
    func getFlagURLWikipediaSVGID() -> String?
    func getWikipediaURL() -> String
    func getWikipediaURLPrefix() -> String?
    func getWikipediaURLSuffix() -> String?
    
    /// The official currencies used within this SovereignRegion.
    func getCurrencies() -> [Currency]
    /// All the time zones this SovereignRegion recognizes within its administrative borders.
    func getTimeZones() -> [SovereignStateTimeZone]?
    /// All temperate zones this SovereignRegion contains within its administrative borders.
    func getTemperateZones() -> [TemperateZone]?
}

public extension SovereignRegion where Self : RawRepresentable, RawValue == String {
    func getIdentifier() -> String {
        return rawValue
    }
    
    func encode(to encoder: Encoder) throws {
        var container:SingleValueEncodingContainer = encoder.singleValueContainer()
        try container.encode(getCacheID())
    }
}
public extension SovereignRegion where Self : LosslessStringConvertible {
    var description: String { return getCacheID() }
}

public extension SovereignRegion {
    /// Compares whether this SovereignRegion is equal to another SovereignRegion based on ``getCacheID()``.
    func isEqual(_ sovereignRegion: (any SovereignRegion)?) -> Bool {
        guard let sovereignRegion:any SovereignRegion = sovereignRegion else { return false }
        return getCacheID().elementsEqual(sovereignRegion.getCacheID())
    }
    
    func getKeywords() -> [String] {
        let id:String = getCacheID()
        if let keywords:[String] = SwiftSovereignStateCacheSubdivisions.keywords[id] {
            return keywords
        }
        var keywords:[String] = [getRealName() ?? getShortName()]
        if let conditionalName:String = getConditionalName() {
            keywords.append(conditionalName)
        }
        if let officialNames:[String] = getOfficialNames() {
            keywords.append(contentsOf: officialNames)
        }
        if let aliases:[String] = getAliases() {
            keywords.append(contentsOf: aliases)
        }
        if let additional:[String] = getAdditionalKeywords() {
            keywords.append(contentsOf: additional)
        }
        SwiftSovereignStateCacheSubdivisions.keywords[id] = keywords
        return keywords
    }
    func getAdditionalKeywords() -> [String]? {
        return nil
    }
    
    func isMentioned(in string: String, exact: Bool, ignoreCase: Bool) -> Bool {
        let values:[String] = ignoreCase ? getKeywords().map({ $0.lowercased() }) : getKeywords()
        let string:String = ignoreCase ? string.lowercased() : string
        return exact ? SovereignRegions.doesEqual(string: string, values: values) : SovereignRegions.doesSatisfy(string: string, values: values)
    }
    
    func getOfficialNames() -> [String]? {
        return nil
    }
    
    func getAliases() -> [String]? {
        return nil
    }
    
    func getShortName() -> String {
        let identifier:String = getIdentifier()
        let decimalSeparatorIndex:Int? = identifier.starts(with: "st_") ? 0 : getShortNameDecimalSeparatorIndex()
        return SovereignRegions.toCorrectCapitalization(input: identifier, decimalSeparatorIndex: decimalSeparatorIndex)
    }
    func getShortNameDecimalSeparatorIndex() -> Int? {
        return nil
    }
    
    func getRealName() -> String? {
        return nil
    }
    func getConditionalName() -> String? {
        return nil
    }
    
    func getGovernmentWebsite() -> String? {
        return nil
    }
    
    func getFlagURL() -> String? {
        guard let id:String = getFlagURLWikipediaSVGID() else { return nil }
        let idLowercase:String = id.lowercased()
        let values:[String] = id.components(separatedBy: "/"), lastValue:String = SovereignRegions.urlEncoded(values[values.count-1])
        let isEN:Bool = id.starts(with: "en"), type:String = isEN ? "en" : "commons", offset:Int = isEN ? 1 : 0
        let hasExtension:Bool = idLowercase.hasSuffix(".png") || idLowercase.hasSuffix(".jpg") || idLowercase.hasSuffix(".gif")
        return "https://upload.wikimedia.org/wikipedia/" + type + "/thumb/" + values[offset] + "/" + values[offset + 1] + "/" + lastValue + (hasExtension ? "" : ".svg") + "/%quality%px-" + lastValue + (hasExtension ? "" : ".svg.png")
    }
    func getFlagURLWikipediaSVGID() -> String? {
        return nil
    }
    
    func getWikipediaURL() -> String {
        let name:String = (getConditionalName() ?? getRealName() ?? getShortName()).replacingOccurrences(of: " ", with: "_")
        let prefix:String = getWikipediaURLPrefix() ?? ""
        let suffix:String = getWikipediaURLSuffix() ?? ""
        return "https://en.wikipedia.org/wiki/" + prefix + SovereignRegions.urlEncoded(name) + suffix
    }
    func getWikipediaURLPrefix() -> String? {
        return nil
    }
    func getWikipediaURLSuffix() -> String? {
        return nil
    }
    
    func getTimeZones() -> [SovereignStateTimeZone]? {
        return nil
    }
    
    /// The formatted time of the first SovereignRegion's time zone, with a custom date and time style.
    func getTime(for date: Date = Date(), timeStyle: DateFormatter.Style, dateStyle: DateFormatter.Style, showAbbreviation: Bool) -> String? {
        guard let timezone:TimeZone = getTimeZones()?.first?.getTimeZone() else { return nil }
        return SovereignRegions.formatTime(date: date, timeZone: timezone, timeStyle: timeStyle, dateStyle: dateStyle, showAbbreviation: showAbbreviation)
    }
    /// All formatted times of the SovereignRegion's time zones, with custom date and time styles.
    func getTimes(for date: Date = Date(), timeStyle: DateFormatter.Style, dateStyle: DateFormatter.Style, showAbbreviation: Bool) -> [String]? {
        guard let timezones:[TimeZone] = getTimeZones()?.compactMap({ $0.getTimeZone() }) else { return nil }
        return timezones.map({ SovereignRegions.formatTime(date: date, timeZone: $0, timeStyle: timeStyle, dateStyle: dateStyle, showAbbreviation: showAbbreviation) })
    }
    
    func getTemperateZones() -> [TemperateZone]? {
        return nil
    }
    /// The season this SovereignRegion is experiencing at a specific month and day.
    func getSeason(type: WeatherSeasonType = .astronomical, month: Int, day: Int) -> WeatherSeason? {
        return getTemperateZones()?.first?.getSeason(type: type, month: month, day: day)
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
    private static var excludedWords:[String] = ["and", "the", "da", "of", "del", "de", "la", "al", "on", "y", "du", "es", "el", "do", "ob", "na", "v", "pri"]
    
    fileprivate static func toCorrectCapitalization(input: String, decimalSeparatorIndex: Int?) -> String {
        var values:[String] = input.components(separatedBy: "_")
        if let decimalSeparatorIndex:Int = decimalSeparatorIndex {
            values[decimalSeparatorIndex] = values[decimalSeparatorIndex] + "."
        }
        return values.map({
            let value:String = $0
            guard !excludedWords.contains(value) else { return input.starts(with: value) ? capitalize(value) : value }
            return capitalize(value)
        }).joined(separator: " ")
    }
    private static func capitalize(_ string: String) -> String {
        return string.first!.uppercased() + string.suffix(string.count-1)
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
    
    static func doesEqual(string: String, values: [String]) -> Bool {
        return values.first(where: { string.elementsEqual($0) }) != nil
    }
    static func doesSatisfy(string: String, values: [String]) -> Bool {
        guard values.first(where: { string.contains($0) }) != nil else { return false }
        return doesContain(string: string, regex: prefixRegex + "(" + values.joined(separator: "|") + ")" + suffixRegex)
    }
    
    private static let prefixRegex:String = {
        let string:String = [
            " ",
            "-", "???",
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
            "-", "???",
            "'", "\"",
            "\\)", "\\]",
            "/"
        ].joined(separator: "|")
        return "(" + string + ")"
    }()
    private static func doesContain(string: String, regex: String) -> Bool {
        return string.range(of: regex, options: .regularExpression) != nil
    }
}


public protocol SovereignRegionWrapper : SovereignRegion {
}
public extension SovereignRegionWrapper {
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.getCacheID().elementsEqual(rhs.getCacheID())
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(getCacheID())
    }
    
    func encode(to encoder: Encoder) throws {
        var container:SingleValueEncodingContainer = encoder.singleValueContainer()
        try container.encode(getCacheID())
    }
}
