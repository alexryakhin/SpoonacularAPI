//
// GetWinePairing200ResponseProductMatchesInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetWinePairing200ResponseProductMatchesInner: Codable, JSONEncodable, Hashable {

    static let titleRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let imageUrlRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let linkRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let priceRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var id: Int
    public var title: String
    public var averageRating: Double
    public var imageUrl: String
    public var link: String
    public var price: String
    public var ratingCount: Int
    public var score: Double
    public var description: AnyCodable?

    public init(id: Int, title: String, averageRating: Double, imageUrl: String, link: String, price: String, ratingCount: Int, score: Double, description: AnyCodable? = nil) {
        self.id = id
        self.title = title
        self.averageRating = averageRating
        self.imageUrl = imageUrl
        self.link = link
        self.price = price
        self.ratingCount = ratingCount
        self.score = score
        self.description = description
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case averageRating
        case imageUrl
        case link
        case price
        case ratingCount
        case score
        case description
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encode(averageRating, forKey: .averageRating)
        try container.encode(imageUrl, forKey: .imageUrl)
        try container.encode(link, forKey: .link)
        try container.encode(price, forKey: .price)
        try container.encode(ratingCount, forKey: .ratingCount)
        try container.encode(score, forKey: .score)
        try container.encodeIfPresent(description, forKey: .description)
    }
}

