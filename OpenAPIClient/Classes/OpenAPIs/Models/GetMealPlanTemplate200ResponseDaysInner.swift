//
// GetMealPlanTemplate200ResponseDaysInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetMealPlanTemplate200ResponseDaysInner: Codable, JSONEncodable, Hashable {

    static let dayRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var nutritionSummary: GetMealPlanWeek200ResponseDaysInnerNutritionSummary?
    public var nutritionSummaryBreakfast: GetMealPlanWeek200ResponseDaysInnerNutritionSummary?
    public var nutritionSummaryLunch: GetMealPlanWeek200ResponseDaysInnerNutritionSummary?
    public var nutritionSummaryDinner: GetMealPlanWeek200ResponseDaysInnerNutritionSummary?
    public var day: String
    public var items: Set<GetMealPlanTemplate200ResponseDaysInnerItemsInner>?

    public init(nutritionSummary: GetMealPlanWeek200ResponseDaysInnerNutritionSummary? = nil, nutritionSummaryBreakfast: GetMealPlanWeek200ResponseDaysInnerNutritionSummary? = nil, nutritionSummaryLunch: GetMealPlanWeek200ResponseDaysInnerNutritionSummary? = nil, nutritionSummaryDinner: GetMealPlanWeek200ResponseDaysInnerNutritionSummary? = nil, day: String, items: Set<GetMealPlanTemplate200ResponseDaysInnerItemsInner>? = nil) {
        self.nutritionSummary = nutritionSummary
        self.nutritionSummaryBreakfast = nutritionSummaryBreakfast
        self.nutritionSummaryLunch = nutritionSummaryLunch
        self.nutritionSummaryDinner = nutritionSummaryDinner
        self.day = day
        self.items = items
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case nutritionSummary
        case nutritionSummaryBreakfast
        case nutritionSummaryLunch
        case nutritionSummaryDinner
        case day
        case items
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(nutritionSummary, forKey: .nutritionSummary)
        try container.encodeIfPresent(nutritionSummaryBreakfast, forKey: .nutritionSummaryBreakfast)
        try container.encodeIfPresent(nutritionSummaryLunch, forKey: .nutritionSummaryLunch)
        try container.encodeIfPresent(nutritionSummaryDinner, forKey: .nutritionSummaryDinner)
        try container.encode(day, forKey: .day)
        try container.encodeIfPresent(items, forKey: .items)
    }
}
