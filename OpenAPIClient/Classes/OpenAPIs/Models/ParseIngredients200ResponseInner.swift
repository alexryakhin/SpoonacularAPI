//
// ParseIngredients200ResponseInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ParseIngredients200ResponseInner: Codable, JSONEncodable, Hashable {

    static let originalRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let originalNameRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let nameRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let nameCleanRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let unitRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let unitShortRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let unitLongRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let consistencyRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let aisleRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let imageRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var id: Int
    public var original: String
    public var originalName: String
    public var name: String
    public var nameClean: String
    public var amount: Double
    public var unit: String
    public var unitShort: String
    public var unitLong: String
    public var possibleUnits: [String]
    public var estimatedCost: ParseIngredients200ResponseInnerEstimatedCost
    public var consistency: String
    public var aisle: String
    public var image: String
    public var meta: [String]
    public var nutrition: ParseIngredients200ResponseInnerNutrition

    public init(id: Int, original: String, originalName: String, name: String, nameClean: String, amount: Double, unit: String, unitShort: String, unitLong: String, possibleUnits: [String], estimatedCost: ParseIngredients200ResponseInnerEstimatedCost, consistency: String, aisle: String, image: String, meta: [String], nutrition: ParseIngredients200ResponseInnerNutrition) {
        self.id = id
        self.original = original
        self.originalName = originalName
        self.name = name
        self.nameClean = nameClean
        self.amount = amount
        self.unit = unit
        self.unitShort = unitShort
        self.unitLong = unitLong
        self.possibleUnits = possibleUnits
        self.estimatedCost = estimatedCost
        self.consistency = consistency
        self.aisle = aisle
        self.image = image
        self.meta = meta
        self.nutrition = nutrition
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case original
        case originalName
        case name
        case nameClean
        case amount
        case unit
        case unitShort
        case unitLong
        case possibleUnits
        case estimatedCost
        case consistency
        case aisle
        case image
        case meta
        case nutrition
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(original, forKey: .original)
        try container.encode(originalName, forKey: .originalName)
        try container.encode(name, forKey: .name)
        try container.encode(nameClean, forKey: .nameClean)
        try container.encode(amount, forKey: .amount)
        try container.encode(unit, forKey: .unit)
        try container.encode(unitShort, forKey: .unitShort)
        try container.encode(unitLong, forKey: .unitLong)
        try container.encode(possibleUnits, forKey: .possibleUnits)
        try container.encode(estimatedCost, forKey: .estimatedCost)
        try container.encode(consistency, forKey: .consistency)
        try container.encode(aisle, forKey: .aisle)
        try container.encode(image, forKey: .image)
        try container.encode(meta, forKey: .meta)
        try container.encode(nutrition, forKey: .nutrition)
    }
}

