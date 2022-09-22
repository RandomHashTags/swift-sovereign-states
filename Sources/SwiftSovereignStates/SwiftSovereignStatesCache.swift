//
//  SwiftSovereignStatesCache.swift
//  
//
//  Created by Evan Anderson on 7/11/22.
//

import Foundation

internal struct SwiftSovereignStatesCache<Key: Hashable, Value> {
    private let wrapped:NSCache<WrappedKey, Entry> = NSCache<WrappedKey, Entry>()
    
    subscript(key: Key) -> Value? {
        get {
            return value(forKey: key)
        }
        set {
            guard let value:Value = newValue else {
                removeValue(forKey: key)
                return
            }
            insert(value, forKey: key)
        }
    }
    
    func getOrInsert(_ key: Key, _ handler: @escaping () -> Value) -> Value {
        if let existingValue:Value = value(forKey: key) {
            return existingValue
        }
        let insertedValue:Value = handler()
        insert(insertedValue, forKey: key)
        return insertedValue
    }
    func getOrInsertOptional(_ key: Key, _ handler: @escaping () -> Value?) -> Value? {
        if let existingValue:Value = value(forKey: key) {
            return existingValue
        }
        guard let insertedValue:Value = handler() else { return nil }
        insert(insertedValue, forKey: key)
        return insertedValue
    }
    func insertIfAbsent(_ val: Value, forKey key: Key) {
        guard value(forKey: key) == nil else { return }
        insert(val, forKey: key)
    }
    private func insert(_ value: Value, forKey key: Key) {
        let entry:Entry = Entry(value: value)
        wrapped.setObject(entry, forKey: WrappedKey(key))
    }
    private func value(forKey key: Key) -> Value? {
        guard let entry:Entry = wrapped.object(forKey: WrappedKey(key)) else { return nil }
        return entry.value
    }
    func removeValue(forKey key: Key) {
        wrapped.removeObject(forKey: WrappedKey(key))
    }
    func removeAll() {
        wrapped.removeAllObjects()
    }
}

private extension SwiftSovereignStatesCache {
    final class WrappedKey : NSObject {
        let key:Key
        
        init(_ key: Key) {
            self.key = key
        }
        
        override var hash: Int {
            return key.hashValue
        }
        
        override func isEqual(_ object: Any?) -> Bool {
            guard let value:WrappedKey = object as? WrappedKey else { return false }
            return value.key == key
        }
    }
    
    final class Entry {
        let value:Value
        
        init(value: Value) {
            self.value = value
        }
    }
}

public enum SwiftSovereignStateCacheType {
    case sovereign_state_actualShortNames
    case countries_valueOf
    case countries_mentioned
    case subdivisions_wrapped
    case subdivisions_keywords
    case subdivisions_mentioned
    case subdivisions_valueOf
    case subdivisions_valueOfAll
}

public enum SwiftSovereignStateCache {
    public static func removeAll(_ type: SwiftSovereignStateCacheType? = nil) {
        guard let type:SwiftSovereignStateCacheType = type else {
            actualShortNames.removeAll()
            
            SwiftSovereignStateCacheCountries.valueOf.removeAll()
            SwiftSovereignStateCacheCountries.mentioned.removeAll()
            
            SwiftSovereignStateCacheSubdivision.wrapped.removeAll()
            SwiftSovereignStateCacheSubdivision.keywords.removeAll()
            SwiftSovereignStateCacheSubdivision.mentioned.removeAll()
            SwiftSovereignStateCacheSubdivision.valueOf.removeAll()
            SwiftSovereignStateCacheSubdivision.valueOfAll.removeAll()
            return
        }
        switch type {
        case .sovereign_state_actualShortNames:
            actualShortNames.removeAll()
            return
        case .countries_valueOf:
            SwiftSovereignStateCacheCountries.valueOf.removeAll()
            return
        case .countries_mentioned:
            SwiftSovereignStateCacheCountries.mentioned.removeAll()
            return
        case .subdivisions_wrapped:
            SwiftSovereignStateCacheSubdivision.wrapped.removeAll()
            return
        case .subdivisions_keywords:
            SwiftSovereignStateCacheSubdivision.keywords.removeAll()
            return
        case .subdivisions_mentioned:
            SwiftSovereignStateCacheSubdivision.mentioned.removeAll()
            return
        case .subdivisions_valueOf:
            SwiftSovereignStateCacheSubdivision.valueOf.removeAll()
            return
        case .subdivisions_valueOfAll:
            SwiftSovereignStateCacheSubdivision.valueOfAll.removeAll()
            return
        }
    }
    
    internal static var actualShortNames:SwiftSovereignStatesCache<String, String> = SwiftSovereignStatesCache<String, String>()
}
internal enum SwiftSovereignStateCacheCountries {
    static var valueOf:SwiftSovereignStatesCache<String, Country> = SwiftSovereignStatesCache<String, Country>()
    static var mentioned:SwiftSovereignStatesCache<String, [Country]> = SwiftSovereignStatesCache<String, [Country]>()
}
internal enum SwiftSovereignStateCacheSubdivision {
    static var keywords:SwiftSovereignStatesCache<String, [String]> = SwiftSovereignStatesCache<String, [String]>()
    static var wrapped:SwiftSovereignStatesCache<String, SovereignStateSubdivisionWrapper> = SwiftSovereignStatesCache<String, SovereignStateSubdivisionWrapper>()
    
    #if swift(<5.7)
    static var mentioned:SwiftSovereignStatesCache<String, [SovereignStateSubdivisionWrapper]> = SwiftSovereignStatesCache<String, [SovereignStateSubdivisionWrapper]>()
    static var valueOf:SwiftSovereignStatesCache<String, SovereignStateSubdivisionWrapper?> = SwiftSovereignStatesCache<String, SovereignStateSubdivisionWrapper?>()
    static var valueOfAll:SwiftSovereignStatesCache<String, [SovereignStateSubdivisionWrapper]> = SwiftSovereignStatesCache<String, [SovereignStateSubdivisionWrapper]>()
    #else
    static var mentioned:SwiftSovereignStatesCache<String, [any SovereignStateSubdivision]> = SwiftSovereignStatesCache<String, [any SovereignStateSubdivision]>()
    static var valueOf:SwiftSovereignStatesCache<String, (any SovereignStateSubdivision)?> = SwiftSovereignStatesCache<String, (any SovereignStateSubdivision)?>()
    static var valueOfAll:SwiftSovereignStatesCache<String, [any SovereignStateSubdivision]> = SwiftSovereignStatesCache<String, [any SovereignStateSubdivision]>()
    #endif
}
