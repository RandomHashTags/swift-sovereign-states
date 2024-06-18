//
//  SwiftSovereignStatesTests.swift
//  
//
//  Created by Evan Anderson on 9/19/22.
//

import XCTest
@testable import SwiftSovereignStates
import QuartzCore

final class SwiftSovereignStatesTests: XCTestCase {
    func testExample() async {
        //generate_all_english_localization_file()
        //generate_english_localization()
        //await generate_divisions()
        //return;
        
        /*let seconds:UInt64 = 1 * 1_000_000_000*/
        //try await validate_region_wikipedia_urls(regions: Locale.Region.allCases, seconds)
        //try await validate_region_wikipedia_urls(regions: SovereignStateSubdivisions.all, seconds)
        //try await validate_region_wikipedia_urls(regions: SovereignStateCities.all, seconds)
        
        do_measurement()
    }
    
    private func do_measurement() {
        let countries:String = "Japan; this string should find the mentioned countries: United States, (Canada) Russia! China? Taiwan; Kenya: Mexico, Luxembourg, Switzerland's, \"Egypt\", Poland, [Romania], the Bahamas, Sao Tome and Principe, and Zambia. New zealand, central african republic, el Salvador, latv.a, FINLAND, OMan, and Ire?and."
        
        let subdivisions:String = "Baja California; California!"
        let cities:String = "Rochester; this string should find the mentioned cities: Minneapolis, (Kasson) Owatonna! [Faribault] Dallas? Des Moines; Anaconda: Oakley, Naples, Edmore's, \"Winifred\", Lost River, Summit, Upham, St. Leo, and McLean. Will not find C?shing."
        
        let metrics:[XCTMetric] = [XCTClockMetric(), XCTMemoryMetric()]
        let iterations:XCTMeasureOptions = XCTMeasureOptions.default
        iterations.iterationCount = 100
        
        let options:String.CompareOptions = [.caseInsensitive, .diacriticInsensitive]
        
        switch 0 {
        case 0:
            measure(metrics: metrics, options: iterations) {
                let _:[Locale.Region] = Locale.Region.getAllMentioned(in: countries, options: options)
            }
            break
        case 6:
            break
            
        case 1000:
            /*measure(metrics: metrics, options: iterations) {
                let _ = cities.filter({ $0 == "-" })
            }*/
            break
        default:
            break
        }
    }
    
    func test_regions() {
        let targetCountries:[Locale.Region] = [
            Locale.Region.japan,
            Locale.Region.unitedStates,
            Locale.Region.canada,
            Locale.Region.russia,
            Locale.Region.chinaMainland,
            Locale.Region.taiwan,
            Locale.Region.kenya,
            Locale.Region.mexico,
            Locale.Region.luxembourg,
            Locale.Region.switzerland,
            Locale.Region.egypt,
            Locale.Region.poland,
            Locale.Region.romania,
            Locale.Region.bahamas,
            Locale.Region.sãoToméPríncipe,
            Locale.Region.zambia,
            
            Locale.Region.newZealand,
            Locale.Region.centralAfricanRepublic,
            Locale.Region.elSalvador,
            Locale.Region.finland,
            Locale.Region.oman
        ]
        let string:String = "Japan; this string should find the mentioned countries: United States, (Canada) Russia! China? Taiwan; Kenya: Mexico, Luxembourg, Switzerland's, \"Egypt\", Poland, [Romania], the Bahamas, Sao Tome and Principe, and Zambia. New zealand, central african republic, el Salvador, latv.a, FINLAND, OMan, and Ire?and."
        let mentioned:[Locale.Region] = Locale.Region.getAllMentioned(in: string, options: [.caseInsensitive, .diacriticInsensitive])
        let notFound:[Locale.Region] = targetCountries.filter({ !mentioned.contains($0) })
        if !notFound.isEmpty {
            print("SwiftSovereignStatesTests;testCountryMentions;missing \(notFound.count);=[" + notFound.map({ $0.name() }).joined(separator: ",") + "]")
        }
        let notMentioned:[Locale.Region] = mentioned.filter({ !targetCountries.contains($0)})
        if !notMentioned.isEmpty {
            print("SwiftSovereignStatesTests;testCountryMentions;shouldn't be=[" + notMentioned.map({ $0.name() }).joined(separator: ",") + "]")
        }
        XCTAssertEqual(mentioned.count, targetCountries.count, "mentioned=" + mentioned.map({ $0.name() }).description)
        
        XCTAssertEqual(Locale.Region.getAllMentionedISOAlpha3(in: "USA").count, 1)
        XCTAssertEqual(Locale.Region.getAllMentionedISOAlpha3(in: "usa").count, 0)
    }
}
extension SwiftSovereignStatesTests {
    private func validate_region_wikipedia_urls(regions: [any SovereignRegion], _ seconds: UInt64) async throws {
        for region in regions {
            await verifyWikipediaURL(region)
            try await Task.sleep(nanoseconds: seconds)
        }
    }
    private func verifyWikipediaURL(_ region: any SovereignRegion) async {
        let url:String = region.wikipediaURL
        let slug:String = String(url.split(separator: "/").last!)
        let valid:Bool = await getSummaryAndImageURL(slug: slug)
        XCTAssert(valid, "invalid Wikipedia URL for sovereign region with cache id \"" + region.cacheID + "\"; url=\"" + url + "\"; slug=\"" + slug + "\"")
    }
    private func getSummaryAndImageURL(slug: String) async -> Bool {
        let url:String = "https://en.wikipedia.org/api/rest_v1/page/summary/" + slug
        guard let json:WikipediaAPIResponse = await make_request(url: url) else { return false }
        return json.extract != nil
    }
    
    private struct WikipediaAPIResponse : Codable {
        let extract:String?
    }
}
extension SwiftSovereignStatesTests {
    func write(text: String, to fileNamed: String, folder: String = "SavedFiles", file_extension: String = "strings") {
        guard let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first,
              let writePath = NSURL(fileURLWithPath: path).appendingPathComponent(folder) else {
            return
        }
        try? FileManager.default.createDirectory(atPath: writePath.path, withIntermediateDirectories: true)
        let file = writePath.appendingPathComponent(fileNamed + "." + file_extension)
        try? text.write(to: file, atomically: false, encoding: String.Encoding.utf8)
    }
    func test_localization() {
        let supported_language_codes:[String] = ["en"]
        for language in supported_language_codes {
            var missing:[String] = [String]()
            for country in Locale.Region.allCases {
                let string:String = country.name()
                if string.elementsEqual("nil") {
                    missing.append(country.identifier)
                }
            }
            XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing \(missing.count) country names for " + missing.description)
            missing.removeAll()
            
            for currency in Currency.allCases {
                let string:String = currency.name()
                if string.elementsEqual("nil") {
                    missing.append(currency.rawValue)
                }
            }
            XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing \(missing.count) currency_names for " + missing.description)
            missing.removeAll()
            
            for type in SovereignStateSubdivisionType.allCases {
                let string:String = SwiftSovereignStateLocalization.get_release_subdivision_type_name_singular(type)
                if string.elementsEqual("nil") {
                    missing.append(type.rawValue)
                }
            }
            XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing \(missing.count) subdivision_types_name_singular for " + missing.description)
            missing.removeAll()
            for type in SovereignStateSubdivisionType.allCases {
                let string:String = SwiftSovereignStateLocalization.get_release_subdivision_type_name_plural(type)
                if string.elementsEqual("nil") {
                    missing.append(type.rawValue)
                }
            }
            XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing \(missing.count) subdivision_types_name_plural for " + missing.description)
            missing.removeAll()
        }
    }
}

extension SwiftSovereignStatesTests {
    private func make_request<T : Decodable>(url: String) async -> T? {
        guard let url:URL = URL(string: url),
              let data:Data = await make_request(request: URLRequest(url: url)) else {
            return nil
        }
        return try? JSONDecoder().decode(T.self, from: data)
    }
    private func make_request(request: URLRequest) async -> Data? {
        return try? await withCheckedThrowingContinuation({ continuation in
            let dataTask:URLSessionDataTask = URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data:Data = data, let _:URLResponse = response else {
                    let error:Error = error ?? URLError(.badServerResponse)
                    return continuation.resume(throwing: error)
                }
                continuation.resume(returning: data)
            }
            dataTask.resume()
        })
    }
}
