//
// ComputeGlycemicLoad200ResponseIngredientsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ComputeGlycemicLoad200ResponseIngredientsInner: Codable, JSONEncodable, Hashable {

    static let originalRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var id: Int
    public var original: String
    public var glycemicIndex: Double
    public var glycemicLoad: Double

    public init(id: Int, original: String, glycemicIndex: Double, glycemicLoad: Double) {
        self.id = id
        self.original = original
        self.glycemicIndex = glycemicIndex
        self.glycemicLoad = glycemicLoad
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id
        case original
        case glycemicIndex
        case glycemicLoad
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(id, forKey: .id)
        try container.encode(original, forKey: .original)
        try container.encode(glycemicIndex, forKey: .glycemicIndex)
        try container.encode(glycemicLoad, forKey: .glycemicLoad)
    }
}
