//
// SearchRecipes200ResponseResultsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SearchRecipes200ResponseResultsInner: Codable, JSONEncodable, Hashable {

    static let titleRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let carbsRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let fatRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let imageRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let imageTypeRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let proteinRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var id: Int
    public var title: String
    public var calories: Double
    public var carbs: String
    public var fat: String
    public var image: String
    public var imageType: String
    public var protein: String

    public init(id: Int, title: String, calories: Double, carbs: String, fat: String, image: String, imageType: String, protein: String) {
        self.id = id
        self.title = title
        self.calories = calories
        self.carbs = carbs
        self.fat = fat
        self.image = image
        self.imageType = imageType
        self.protein = protein
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case calories
        case carbs
        case fat
        case image
        case imageType
        case protein
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encode(calories, forKey: .calories)
        try container.encode(carbs, forKey: .carbs)
        try container.encode(fat, forKey: .fat)
        try container.encode(image, forKey: .image)
        try container.encode(imageType, forKey: .imageType)
        try container.encode(protein, forKey: .protein)
    }
}
