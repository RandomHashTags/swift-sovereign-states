//
//  SwiftSovereignStatesTests.swift
//  
//
//  Created by Evan Anderson on 9/19/22.
//

import XCTest
@testable import SwiftSovereignStates

final class SwiftSovereignStatesTests: XCTestCase {
    func testExample() async {
        do_measurement()
    }

    func test_all_cases() {
        XCTAssertEqual(Locale.Region.isoRegions.count, 286)
        var counts:[String:Int] = [:]
        for region in Locale.Region.allCases {
            if counts[region.identifier] == nil {
                counts[region.identifier] = 0
            }
            counts[region.identifier]! += 1
        }
        for region in Locale.Region.allCases {
            if counts[region.identifier] == 1 {
                counts.removeValue(forKey: region.identifier)
            }
        }
        XCTAssertEqual(Set(Locale.Region.allCases.map({ $0.identifier })).count, Locale.Region.allCases.count, "counts=\(counts)")
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
