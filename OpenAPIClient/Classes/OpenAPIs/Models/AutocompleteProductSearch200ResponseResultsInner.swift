//
// AutocompleteProductSearch200ResponseResultsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct AutocompleteProductSearch200ResponseResultsInner: Codable, JSONEncodable, Hashable {

    static let titleRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var id: Int
    public var title: String

    public init(id: Int, title: String) {
        self.id = id
        self.title = title
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
    }
}

