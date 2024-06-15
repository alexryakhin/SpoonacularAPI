//
// ParseIngredients200ResponseInnerNutritionPropertiesInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ParseIngredients200ResponseInnerNutritionPropertiesInner: Codable, JSONEncodable, Hashable {

    static let nameRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var name: String
    public var amount: Double
    public var unit: String

    public init(name: String, amount: Double, unit: String) {
        self.name = name
        self.amount = amount
        self.unit = unit
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case amount
        case unit
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(amount, forKey: .amount)
        try container.encode(unit, forKey: .unit)
    }
}

