//
// GetShoppingList200ResponseAislesInnerItemsInnerMeasures.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetShoppingList200ResponseAislesInnerItemsInnerMeasures: Codable, JSONEncodable, Hashable {

    public var original: ParseIngredients200ResponseInnerNutritionWeightPerServing
    public var metric: ParseIngredients200ResponseInnerNutritionWeightPerServing
    public var us: ParseIngredients200ResponseInnerNutritionWeightPerServing

    public init(original: ParseIngredients200ResponseInnerNutritionWeightPerServing, metric: ParseIngredients200ResponseInnerNutritionWeightPerServing, us: ParseIngredients200ResponseInnerNutritionWeightPerServing) {
        self.original = original
        self.metric = metric
        self.us = us
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case original
        case metric
        case us
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(original, forKey: .original)
        try container.encode(metric, forKey: .metric)
        try container.encode(us, forKey: .us)
    }
}

