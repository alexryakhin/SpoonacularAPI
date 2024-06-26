//
// AnalyzeRecipeInstructions200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/**  */
public struct AnalyzeRecipeInstructions200Response: Codable, JSONEncodable, Hashable {

    public var parsedInstructions: Set<AnalyzeRecipeInstructions200ResponseParsedInstructionsInner>
    public var ingredients: Set<AnalyzeRecipeInstructions200ResponseIngredientsInner>
    public var equipment: Set<AnalyzeRecipeInstructions200ResponseIngredientsInner>

    public init(parsedInstructions: Set<AnalyzeRecipeInstructions200ResponseParsedInstructionsInner>, ingredients: Set<AnalyzeRecipeInstructions200ResponseIngredientsInner>, equipment: Set<AnalyzeRecipeInstructions200ResponseIngredientsInner>) {
        self.parsedInstructions = parsedInstructions
        self.ingredients = ingredients
        self.equipment = equipment
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case parsedInstructions
        case ingredients
        case equipment
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(parsedInstructions, forKey: .parsedInstructions)
        try container.encode(ingredients, forKey: .ingredients)
        try container.encode(equipment, forKey: .equipment)
    }
}

