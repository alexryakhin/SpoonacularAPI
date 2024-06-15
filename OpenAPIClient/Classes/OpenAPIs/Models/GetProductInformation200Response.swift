//
// GetProductInformation200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/**  */
public struct GetProductInformation200Response: Codable, JSONEncodable, Hashable {

    static let titleRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let imageTypeRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let ingredientListRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let aisleRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var id: Int
    public var title: String
    public var breadcrumbs: [String]
    public var imageType: String
    public var badges: [String]
    public var importantBadges: [String]
    public var ingredientCount: Int
    public var generatedText: AnyCodable?
    public var ingredientList: String
    public var ingredients: [GetProductInformation200ResponseIngredientsInner]
    public var likes: Double
    public var aisle: String
    public var nutrition: SearchGroceryProductsByUPC200ResponseNutrition
    public var price: Double
    public var servings: SearchGroceryProductsByUPC200ResponseServings
    public var spoonacularScore: Double

    public init(id: Int, title: String, breadcrumbs: [String], imageType: String, badges: [String], importantBadges: [String], ingredientCount: Int, generatedText: AnyCodable? = nil, ingredientList: String, ingredients: [GetProductInformation200ResponseIngredientsInner], likes: Double, aisle: String, nutrition: SearchGroceryProductsByUPC200ResponseNutrition, price: Double, servings: SearchGroceryProductsByUPC200ResponseServings, spoonacularScore: Double) {
        self.id = id
        self.title = title
        self.breadcrumbs = breadcrumbs
        self.imageType = imageType
        self.badges = badges
        self.importantBadges = importantBadges
        self.ingredientCount = ingredientCount
        self.generatedText = generatedText
        self.ingredientList = ingredientList
        self.ingredients = ingredients
        self.likes = likes
        self.aisle = aisle
        self.nutrition = nutrition
        self.price = price
        self.servings = servings
        self.spoonacularScore = spoonacularScore
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case breadcrumbs
        case imageType
        case badges
        case importantBadges
        case ingredientCount
        case generatedText
        case ingredientList
        case ingredients
        case likes
        case aisle
        case nutrition
        case price
        case servings
        case spoonacularScore
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encode(breadcrumbs, forKey: .breadcrumbs)
        try container.encode(imageType, forKey: .imageType)
        try container.encode(badges, forKey: .badges)
        try container.encode(importantBadges, forKey: .importantBadges)
        try container.encode(ingredientCount, forKey: .ingredientCount)
        try container.encodeIfPresent(generatedText, forKey: .generatedText)
        try container.encode(ingredientList, forKey: .ingredientList)
        try container.encode(ingredients, forKey: .ingredients)
        try container.encode(likes, forKey: .likes)
        try container.encode(aisle, forKey: .aisle)
        try container.encode(nutrition, forKey: .nutrition)
        try container.encode(price, forKey: .price)
        try container.encode(servings, forKey: .servings)
        try container.encode(spoonacularScore, forKey: .spoonacularScore)
    }
}

