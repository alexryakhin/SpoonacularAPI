//
// ConvertAmounts200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/**  */
public struct ConvertAmounts200Response: Codable, JSONEncodable, Hashable {

    static let sourceUnitRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let targetUnitRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    static let answerRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var sourceAmount: Double
    public var sourceUnit: String
    public var targetAmount: Double
    public var targetUnit: String
    public var answer: String

    public init(sourceAmount: Double, sourceUnit: String, targetAmount: Double, targetUnit: String, answer: String) {
        self.sourceAmount = sourceAmount
        self.sourceUnit = sourceUnit
        self.targetAmount = targetAmount
        self.targetUnit = targetUnit
        self.answer = answer
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case sourceAmount
        case sourceUnit
        case targetAmount
        case targetUnit
        case answer
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(sourceAmount, forKey: .sourceAmount)
        try container.encode(sourceUnit, forKey: .sourceUnit)
        try container.encode(targetAmount, forKey: .targetAmount)
        try container.encode(targetUnit, forKey: .targetUnit)
        try container.encode(answer, forKey: .answer)
    }
}
