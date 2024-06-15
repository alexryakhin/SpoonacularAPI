//
// SearchSiteContent200ResponseGroceryProductsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SearchSiteContent200ResponseGroceryProductsInner: Codable, JSONEncodable, Hashable {

    static let imageRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let linkRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let nameRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var dataPoints: Set<SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner>?
    public var image: String
    public var link: String
    public var name: String

    public init(dataPoints: Set<SearchSiteContent200ResponseGroceryProductsInnerDataPointsInner>? = nil, image: String, link: String, name: String) {
        self.dataPoints = dataPoints
        self.image = image
        self.link = link
        self.name = name
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case dataPoints
        case image
        case link
        case name
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(dataPoints, forKey: .dataPoints)
        try container.encode(image, forKey: .image)
        try container.encode(link, forKey: .link)
        try container.encode(name, forKey: .name)
    }
}

