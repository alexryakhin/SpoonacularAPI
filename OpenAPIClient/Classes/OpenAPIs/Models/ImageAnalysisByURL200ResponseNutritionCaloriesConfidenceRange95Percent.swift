//
// ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ImageAnalysisByURL200ResponseNutritionCaloriesConfidenceRange95Percent: Codable, JSONEncodable, Hashable {

    public var min: Double
    public var max: Double

    public init(min: Double, max: Double) {
        self.min = min
        self.max = max
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case min
        case max
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(min, forKey: .min)
        try container.encode(max, forKey: .max)
    }
}

