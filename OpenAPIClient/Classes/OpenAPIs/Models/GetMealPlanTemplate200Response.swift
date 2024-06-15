//
// GetMealPlanTemplate200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/**  */
public struct GetMealPlanTemplate200Response: Codable, JSONEncodable, Hashable {

    static let nameRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var id: Int
    public var name: String
    public var days: Set<GetMealPlanTemplate200ResponseDaysInner>

    public init(id: Int, name: String, days: Set<GetMealPlanTemplate200ResponseDaysInner>) {
        self.id = id
        self.name = name
        self.days = days
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case name
        case days
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(days, forKey: .days)
    }
}
