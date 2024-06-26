//
// GetMealPlanWeek200ResponseDaysInnerItemsInnerValue.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetMealPlanWeek200ResponseDaysInnerItemsInnerValue: Codable, JSONEncodable, Hashable {

    static let titleRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var servings: Double
    public var id: Double
    public var title: String
    public var imageType: String

    public init(servings: Double, id: Double, title: String, imageType: String) {
        self.servings = servings
        self.id = id
        self.title = title
        self.imageType = imageType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case servings
        case id
        case title
        case imageType
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(servings, forKey: .servings)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encode(imageType, forKey: .imageType)
    }
}

