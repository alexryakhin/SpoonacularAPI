//
// GetMenuItemInformation200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/**  */
public struct GetMenuItemInformation200Response: Codable, JSONEncodable, Hashable {

    static let titleRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let restaurantChainRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let imageTypeRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var id: Int
    public var title: String
    public var restaurantChain: String
    public var nutrition: SearchGroceryProductsByUPC200ResponseNutrition
    public var badges: [String]
    public var breadcrumbs: [String]
    public var imageType: String
    public var likes: Double
    public var servings: SearchGroceryProductsByUPC200ResponseServings
    public var generatedText: String?
    public var price: Double?
    public var spoonacularScore: Double?

    public init(id: Int, title: String, restaurantChain: String, nutrition: SearchGroceryProductsByUPC200ResponseNutrition, badges: [String], breadcrumbs: [String], imageType: String, likes: Double, servings: SearchGroceryProductsByUPC200ResponseServings, generatedText: String? = nil, price: Double? = nil, spoonacularScore: Double? = nil) {
        self.id = id
        self.title = title
        self.restaurantChain = restaurantChain
        self.nutrition = nutrition
        self.badges = badges
        self.breadcrumbs = breadcrumbs
        self.imageType = imageType
        self.likes = likes
        self.servings = servings
        self.generatedText = generatedText
        self.price = price
        self.spoonacularScore = spoonacularScore
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case title
        case restaurantChain
        case nutrition
        case badges
        case breadcrumbs
        case imageType
        case likes
        case servings
        case generatedText
        case price
        case spoonacularScore
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(title, forKey: .title)
        try container.encode(restaurantChain, forKey: .restaurantChain)
        try container.encode(nutrition, forKey: .nutrition)
        try container.encode(badges, forKey: .badges)
        try container.encode(breadcrumbs, forKey: .breadcrumbs)
        try container.encode(imageType, forKey: .imageType)
        try container.encode(likes, forKey: .likes)
        try container.encode(servings, forKey: .servings)
        try container.encodeIfPresent(generatedText, forKey: .generatedText)
        try container.encodeIfPresent(price, forKey: .price)
        try container.encodeIfPresent(spoonacularScore, forKey: .spoonacularScore)
    }
}

