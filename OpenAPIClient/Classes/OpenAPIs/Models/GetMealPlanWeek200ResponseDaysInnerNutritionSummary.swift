//
// GetMealPlanWeek200ResponseDaysInnerNutritionSummary.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetMealPlanWeek200ResponseDaysInnerNutritionSummary: Codable, JSONEncodable, Hashable {

    public var nutrients: Set<GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner>

    public init(nutrients: Set<GetMealPlanWeek200ResponseDaysInnerNutritionSummaryNutrientsInner>) {
        self.nutrients = nutrients
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case nutrients
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(nutrients, forKey: .nutrients)
    }
}

