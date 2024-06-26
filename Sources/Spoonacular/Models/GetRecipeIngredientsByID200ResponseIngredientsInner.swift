//
// GetRecipeIngredientsByID200ResponseIngredientsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetRecipeIngredientsByID200ResponseIngredientsInner: Codable, JSONEncodable, Hashable {

    static let imageRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let nameRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var image: String
    public var name: String
    public var amount: GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount?

    public init(image: String, name: String, amount: GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount? = nil) {
        self.image = image
        self.name = name
        self.amount = amount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case image
        case name
        case amount
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(image, forKey: .image)
        try container.encode(name, forKey: .name)
        try container.encodeIfPresent(amount, forKey: .amount)
    }
}

