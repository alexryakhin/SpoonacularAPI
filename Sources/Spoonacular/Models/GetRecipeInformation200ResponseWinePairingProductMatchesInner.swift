//
// GetRecipeInformation200ResponseWinePairingProductMatchesInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetRecipeInformation200ResponseWinePairingProductMatchesInner: Codable, JSONEncodable, Hashable {

    static let titleRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let descriptionRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let priceRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let imageUrlRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let linkRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var id: Int
    public var title: String
    public var description: String
    public var price: String
    public var imageUrl: String
    public var averageRating: Double
    public var ratingCount: Int
    public var score: Double
    public var link: String

    public init(id: Int, title: String, description: String, price: String, imageUrl: String, averageRating: Double, ratingCount: Int, score: Double, link: String) {
        self.id = id
        self.title = title
        self.description = description
        self.price = price
        self.imageUrl = imageUrl
        self.averageRating = averageRating
        self.ratingCount = ratingCount
        self.score = score
        self.link = link
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case description
        case price
        case imageUrl
        case averageRating
        case ratingCount
        case score
        case link
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encode(description, forKey: .description)
        try container.encode(price, forKey: .price)
        try container.encode(imageUrl, forKey: .imageUrl)
        try container.encode(averageRating, forKey: .averageRating)
        try container.encode(ratingCount, forKey: .ratingCount)
        try container.encode(score, forKey: .score)
        try container.encode(link, forKey: .link)
    }
}

