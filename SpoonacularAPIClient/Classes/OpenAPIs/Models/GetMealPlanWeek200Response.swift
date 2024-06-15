//
// GetMealPlanWeek200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/**  */
public struct GetMealPlanWeek200Response: Codable, JSONEncodable, Hashable {

    public var days: Set<GetMealPlanWeek200ResponseDaysInner>

    public init(days: Set<GetMealPlanWeek200ResponseDaysInner>) {
        self.days = days
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case days
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(days, forKey: .days)
    }
}
