//
//  SwiftSovereignStatesCache.swift
//  
//
//  Created by Evan Anderson on 7/11/22.
//

import Foundation

internal struct SwiftSovereignStatesCache<Value> {
    private let wrapped:NSCache<NSString, Entry> = NSCache<NSString, Entry>()
    
    subscript(key: String) -> Value? {
        get {
            return value(forKey: key as NSString)
        }
        set {
            guard let value:Value = newValue else {
                removeValue(forKey: key as NSString)
                return
            }
            insert(value, forKey: key as NSString)
        }
    }
    
    private func insert(_ value: Value, forKey key: NSString) {
        let entry:Entry = Entry(value: value)
        wrapped.setObject(entry, forKey: key)
    }
    private func value(forKey key: NSString) -> Value? {
        return wrapped.object(forKey: key)?.value
    }
    func removeValue(forKey key: NSString) {
        wrapped.removeObject(forKey: key)
    }
    func removeAll() {
        wrapped.removeAllObjects()
    }
}

private extension SwiftSovereignStatesCache {
    final class Entry {
        let value:Value
        
        init(value: Value) {
            self.value = value
        }
    }
}

public enum SwiftSovereignStateCacheType {
    case countries_valueOf
    case countries_mentioned
    case countries_valueOfCacheID
    case subdivisions_keywords
    case subdivisions_mentioned
    case subdivisions_valueOf
    case subdivisions_valueOfAll
    case subdivisions_valueOfCacheID
    case cities_keywords
    case cities_mentionedAll
    case cities_mentionedSubdivision
    case cities_valueOf
    case cities_valueOfAll
    case cities_valueOfCacheID
}

public enum SwiftSovereignStateCache {
    public static func removeAll(_ type: SwiftSovereignStateCacheType? = nil) {
        guard let type:SwiftSovereignStateCacheType = type else {
            SwiftSovereignStateCacheCountries.valueOf.removeAll()
            SwiftSovereignStateCacheCountries.mentioned.removeAll()
            SwiftSovereignStateCacheCountries.valueOfCacheID.removeAll()
            
            SwiftSovereignStateCacheSubdivisions.keywords.removeAll()
            SwiftSovereignStateCacheSubdivisions.mentioned.removeAll()
            SwiftSovereignStateCacheSubdivisions.valueOf.removeAll()
            SwiftSovereignStateCacheSubdivisions.valueOfAll.removeAll()
            SwiftSovereignStateCacheSubdivisions.valueOfCacheID.removeAll()
            
            SwiftSovereignStateCacheCities.keywords.removeAll()
            SwiftSovereignStateCacheCities.mentionedAll.removeAll()
            SwiftSovereignStateCacheCities.mentionedSubdivision.removeAll()
            SwiftSovereignStateCacheCities.valueOf.removeAll()
            SwiftSovereignStateCacheCities.valueOfAll.removeAll()
            SwiftSovereignStateCacheCities.valueOfCacheID.removeAll()
            return
        }
        switch type {
        case .countries_valueOf:
            SwiftSovereignStateCacheCountries.valueOf.removeAll()
            return
        case .countries_mentioned:
            SwiftSovereignStateCacheCountries.mentioned.removeAll()
            return
        case .countries_valueOfCacheID:
            SwiftSovereignStateCacheCountries.valueOfCacheID.removeAll()
            return
        case .subdivisions_keywords:
            SwiftSovereignStateCacheSubdivisions.keywords.removeAll()
            return
        case .subdivisions_mentioned:
            SwiftSovereignStateCacheSubdivisions.mentioned.removeAll()
            return
        case .subdivisions_valueOf:
            SwiftSovereignStateCacheSubdivisions.valueOf.removeAll()
            return
        case .subdivisions_valueOfAll:
            SwiftSovereignStateCacheSubdivisions.valueOfAll.removeAll()
            return
        case .subdivisions_valueOfCacheID:
            SwiftSovereignStateCacheSubdivisions.valueOfCacheID.removeAll()
            return
        case .cities_keywords:
            SwiftSovereignStateCacheCities.keywords.removeAll()
            return
        case .cities_mentionedAll:
            SwiftSovereignStateCacheCities.mentionedAll.removeAll()
            return
        case .cities_mentionedSubdivision:
            SwiftSovereignStateCacheCities.mentionedSubdivision.removeAll()
            return
        case .cities_valueOf:
            SwiftSovereignStateCacheCities.valueOf.removeAll()
            return
        case .cities_valueOfAll:
            SwiftSovereignStateCacheCities.valueOfAll.removeAll()
            return
        case .cities_valueOfCacheID:
            SwiftSovereignStateCacheCities.valueOfCacheID.removeAll()
            return
        }
    }
}
internal enum SwiftSovereignStateCacheCountries {
    static var valueOf:SwiftSovereignStatesCache<Country> = SwiftSovereignStatesCache<Country>()
    static var valueOfCacheID:SwiftSovereignStatesCache<Country?> = SwiftSovereignStatesCache<Country?>()
    static var mentioned:SwiftSovereignStatesCache<[Country]> = SwiftSovereignStatesCache<[Country]>()
}
internal enum SwiftSovereignStateCacheSubdivisions {
    static var keywords:SwiftSovereignStatesCache<[String]> = SwiftSovereignStatesCache<[String]>()
    
    static var mentioned:SwiftSovereignStatesCache<[any SovereignStateSubdivision]> = SwiftSovereignStatesCache<[any SovereignStateSubdivision]>()
    static var valueOf:SwiftSovereignStatesCache<Any?> = SwiftSovereignStatesCache<Any?>()
    static var valueOfAll:SwiftSovereignStatesCache<[any SovereignStateSubdivision]> = SwiftSovereignStatesCache<[any SovereignStateSubdivision]>()
    static var valueOfCacheID:SwiftSovereignStatesCache<any SovereignStateSubdivision> = SwiftSovereignStatesCache<any SovereignStateSubdivision>()
}
internal enum SwiftSovereignStateCacheCities {
    static var keywords:SwiftSovereignStatesCache<[String]> = SwiftSovereignStatesCache<[String]>()
    
    static var mentionedAll:SwiftSovereignStatesCache<[any SovereignStateCity]> = SwiftSovereignStatesCache<[any SovereignStateCity]>()
    static var mentionedSubdivision:SwiftSovereignStatesCache<[any SovereignStateCity]> = SwiftSovereignStatesCache<[any SovereignStateCity]>()
    static var valueOf:SwiftSovereignStatesCache<[any SovereignStateCity]> = SwiftSovereignStatesCache<[any SovereignStateCity]>()
    static var valueOfAll:SwiftSovereignStatesCache<[any SovereignStateCity]> = SwiftSovereignStatesCache<[any SovereignStateCity]>()
    static var valueOfCacheID:SwiftSovereignStatesCache<any SovereignStateCity> = SwiftSovereignStatesCache<any SovereignStateCity>()
}
