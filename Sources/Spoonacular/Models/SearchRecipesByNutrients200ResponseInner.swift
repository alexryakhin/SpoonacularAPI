//
// SearchRecipesByNutrients200ResponseInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SearchRecipesByNutrients200ResponseInner: Codable, JSONEncodable, Hashable {

    static let carbsRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let fatRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let imageRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let imageTypeRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let proteinRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let titleRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var calories: Double
    public var carbs: String
    public var fat: String
    public var id: Int
    public var image: String
    public var imageType: String
    public var protein: String
    public var title: String

    public init(calories: Double, carbs: String, fat: String, id: Int, image: String, imageType: String, protein: String, title: String) {
        self.calories = calories
        self.carbs = carbs
        self.fat = fat
        self.id = id
        self.image = image
        self.imageType = imageType
        self.protein = protein
        self.title = title
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case calories
        case carbs
        case fat
        case id
        case image
        case imageType
        case protein
        case title
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(calories, forKey: .calories)
        try container.encode(carbs, forKey: .carbs)
        try container.encode(fat, forKey: .fat)
        try container.encode(id, forKey: .id)
        try container.encode(image, forKey: .image)
        try container.encode(imageType, forKey: .imageType)
        try container.encode(protein, forKey: .protein)
        try container.encode(title, forKey: .title)
    }
}

