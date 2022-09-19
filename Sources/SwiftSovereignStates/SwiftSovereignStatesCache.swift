//
//  SwiftSovereignStatesCache.swift
//  
//
//  Created by Evan Anderson on 7/11/22.
//

import Foundation

internal struct SwiftSovereignStatesCache<Key: Hashable, Value> {
    private let wrapped:NSCache<WrappedKey, Entry> = NSCache<WrappedKey, Entry>()
    private let lifetime:TimeInterval!
    
    init() {
        lifetime = nil
    }
    init(lifetime: TimeInterval?) {
        self.lifetime = lifetime
    }
    
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
        let expiration:Date? = lifetime != nil ? Date(timeIntervalSinceNow: lifetime) : nil
        let entry:Entry = Entry(value: value, expiration: expiration)
        wrapped.setObject(entry, forKey: WrappedKey(key))
    }
    private func value(forKey key: Key) -> Value? {
        guard let entry:Entry = wrapped.object(forKey: WrappedKey(key)) else { return nil }
        let expiration:Date? = entry.expiration
        guard let expiration:Date = expiration else { return entry.value }
        guard Date() < expiration else {
            removeValue(forKey: key)
            return nil
        }
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
        let value:Value, expiration:Date?
        
        init(value: Value, expiration: Date?) {
            self.value = value
            self.expiration = expiration
        }
    }
}

public enum SwiftSovereignStateCacheType {
    case sovereign_state_actualShortNames
    case countries_cachedValueOf
    case countries_cachedMentioned
    case subdivisions_keywords
    case subdivisions_keywordTerms
    case subdivisions_cachedMentioned
    case subdivisions_cachedValueOf
    case subdivisions_cachedValueOfAll
}

public enum SwiftSovereignStateCache {
    public static func removeAll(_ type: SwiftSovereignStateCacheType? = nil) {
        guard let type:SwiftSovereignStateCacheType = type else {
            actualShortNames.removeAll()
            
            SwiftSovereignStateCacheCountries.cachedValueOf.removeAll()
            SwiftSovereignStateCacheCountries.cachedMentioned.removeAll()
            
            SwiftSovereignStateCacheSubdivision.keywords.removeAll()
            SwiftSovereignStateCacheSubdivision.keywordTerms.removeAll()
            SwiftSovereignStateCacheSubdivision.cachedMentioned.removeAll()
            SwiftSovereignStateCacheSubdivision.cachedValueOf.removeAll()
            SwiftSovereignStateCacheSubdivision.cachedValueOfAll.removeAll()
            return
        }
        switch type {
        case .sovereign_state_actualShortNames:
            actualShortNames.removeAll()
            return
        case .countries_cachedValueOf:
            SwiftSovereignStateCacheCountries.cachedValueOf.removeAll()
            return
        case .countries_cachedMentioned:
            SwiftSovereignStateCacheCountries.cachedMentioned.removeAll()
            return
        case .subdivisions_keywords:
            SwiftSovereignStateCacheSubdivision.keywords.removeAll()
            return
        case .subdivisions_keywordTerms:
            SwiftSovereignStateCacheSubdivision.keywordTerms.removeAll()
            return
        case .subdivisions_cachedMentioned:
            SwiftSovereignStateCacheSubdivision.cachedMentioned.removeAll()
            return
        case .subdivisions_cachedValueOf:
            SwiftSovereignStateCacheSubdivision.cachedValueOf.removeAll()
            return
        case .subdivisions_cachedValueOfAll:
            SwiftSovereignStateCacheSubdivision.cachedValueOfAll.removeAll()
            return
        }
    }
    
    internal static var actualShortNames:SwiftSovereignStatesCache<String, String> = SwiftSovereignStatesCache<String, String>()
}
internal enum SwiftSovereignStateCacheCountries {
    static var cachedValueOf:SwiftSovereignStatesCache<String, Country> = SwiftSovereignStatesCache<String, Country>()
    static var cachedMentioned:SwiftSovereignStatesCache<String, [Country]> = SwiftSovereignStatesCache<String, [Country]>()
}
internal enum SwiftSovereignStateCacheSubdivision {
    static var keywords:SwiftSovereignStatesCache<String, [String]> = SwiftSovereignStatesCache<String, [String]>()
    static var keywordTerms:SwiftSovereignStatesCache<String, [ContentTerm]> = SwiftSovereignStatesCache<String, [ContentTerm]>()
    static var cachedMentioned:SwiftSovereignStatesCache<String, [Any]> = SwiftSovereignStatesCache<String, [Any]>()
    static var cachedValueOf:SwiftSovereignStatesCache<String, Any?> = SwiftSovereignStatesCache<String, Any?>()
    static var cachedValueOfAll:SwiftSovereignStatesCache<String, [Any]> = SwiftSovereignStatesCache<String, [Any]>()
}
