//
// ImageAnalysisByURL200ResponseRecipesInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ImageAnalysisByURL200ResponseRecipesInner: Codable, JSONEncodable, Hashable {

    static let titleRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let imageTypeRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let urlRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var id: Int
    public var title: String
    public var imageType: String
    public var url: String

    public init(id: Int, title: String, imageType: String, url: String) {
        self.id = id
        self.title = title
        self.imageType = imageType
        self.url = url
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case imageType
        case url
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encode(imageType, forKey: .imageType)
        try container.encode(url, forKey: .url)
    }
}

