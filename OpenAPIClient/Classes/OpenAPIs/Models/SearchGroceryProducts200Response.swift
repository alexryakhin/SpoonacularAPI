//
// SearchGroceryProducts200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/**  */
public struct SearchGroceryProducts200Response: Codable, JSONEncodable, Hashable {

    static let typeRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var products: Set<AutocompleteRecipeSearch200ResponseInner>
    public var totalProducts: Int
    public var type: String
    public var offset: Int
    public var number: Int

    public init(products: Set<AutocompleteRecipeSearch200ResponseInner>, totalProducts: Int, type: String, offset: Int, number: Int) {
        self.products = products
        self.totalProducts = totalProducts
        self.type = type
        self.offset = offset
        self.number = number
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case products
        case totalProducts
        case type
        case offset
        case number
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(products, forKey: .products)
        try container.encode(totalProducts, forKey: .totalProducts)
        try container.encode(type, forKey: .type)
        try container.encode(offset, forKey: .offset)
        try container.encode(number, forKey: .number)
    }
}

