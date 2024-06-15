//
// GetRecipePriceBreakdownByID200ResponseIngredientsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetRecipePriceBreakdownByID200ResponseIngredientsInner: Codable, JSONEncodable, Hashable {

    static let imageRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let nameRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var amount: GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount?
    public var image: String
    public var name: String
    public var price: Double

    public init(amount: GetRecipePriceBreakdownByID200ResponseIngredientsInnerAmount? = nil, image: String, name: String, price: Double) {
        self.amount = amount
        self.image = image
        self.name = name
        self.price = price
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case amount
        case image
        case name
        case price
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(amount, forKey: .amount)
        try container.encode(image, forKey: .image)
        try container.encode(name, forKey: .name)
        try container.encode(price, forKey: .price)
    }
}
