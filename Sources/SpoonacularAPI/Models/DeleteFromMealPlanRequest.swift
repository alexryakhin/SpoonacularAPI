//
// DeleteFromMealPlanRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DeleteFromMealPlanRequest: Codable, JSONEncodable, Hashable {

    /** The username. */
    public var username: String
    /** The shopping list item id. */
    public var id: Double
    /** The private hash for the username. */
    public var hash: String

    public init(username: String, id: Double, hash: String) {
        self.username = username
        self.id = id
        self.hash = hash
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case username
        case id
        case hash
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(username, forKey: .username)
        try container.encode(id, forKey: .id)
        try container.encode(hash, forKey: .hash)
    }
}
