//
// GetRandomRecipes200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/**  */
public struct GetRandomRecipes200Response: Codable, JSONEncodable, Hashable {

    public var recipes: Set<GetRandomRecipes200ResponseRecipesInner>

    public init(recipes: Set<GetRandomRecipes200ResponseRecipesInner>) {
        self.recipes = recipes
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case recipes
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(recipes, forKey: .recipes)
    }
}

