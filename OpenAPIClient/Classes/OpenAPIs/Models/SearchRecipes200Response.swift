//
// SearchRecipes200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/**  */
public struct SearchRecipes200Response: Codable, JSONEncodable, Hashable {

    public var offset: Int
    public var number: Int
    public var results: Set<SearchRecipes200ResponseResultsInner>
    public var totalResults: Int

    public init(offset: Int, number: Int, results: Set<SearchRecipes200ResponseResultsInner>, totalResults: Int) {
        self.offset = offset
        self.number = number
        self.results = results
        self.totalResults = totalResults
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case offset
        case number
        case results
        case totalResults
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(offset, forKey: .offset)
        try container.encode(number, forKey: .number)
        try container.encode(results, forKey: .results)
        try container.encode(totalResults, forKey: .totalResults)
    }
}

