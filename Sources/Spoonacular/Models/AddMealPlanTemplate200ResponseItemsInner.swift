//
// AddMealPlanTemplate200ResponseItemsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AddMealPlanTemplate200ResponseItemsInner: Codable, JSONEncodable, Hashable {

    static let typeRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var day: Int
    public var slot: Int
    public var position: Int
    public var type: String
    public var value: AddMealPlanTemplate200ResponseItemsInnerValue?

    public init(day: Int, slot: Int, position: Int, type: String, value: AddMealPlanTemplate200ResponseItemsInnerValue? = nil) {
        self.day = day
        self.slot = slot
        self.position = position
        self.type = type
        self.value = value
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case day
        case slot
        case position
        case type
        case value
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(day, forKey: .day)
        try container.encode(slot, forKey: .slot)
        try container.encode(position, forKey: .position)
        try container.encode(type, forKey: .type)
        try container.encodeIfPresent(value, forKey: .value)
    }
}

