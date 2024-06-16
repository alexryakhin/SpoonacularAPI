//
// GetWineRecommendation200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/**  */
public struct GetWineRecommendation200Response: Codable, JSONEncodable, Hashable {

    public var recommendedWines: Set<GetWineRecommendation200ResponseRecommendedWinesInner>
    public var totalFound: Int

    public init(recommendedWines: Set<GetWineRecommendation200ResponseRecommendedWinesInner>, totalFound: Int) {
        self.recommendedWines = recommendedWines
        self.totalFound = totalFound
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case recommendedWines
        case totalFound
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(recommendedWines, forKey: .recommendedWines)
        try container.encode(totalFound, forKey: .totalFound)
    }
}
