//
// GetWinePairing200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/**  */
public struct GetWinePairing200Response: Codable, JSONEncodable, Hashable {

    static let pairingTextRule = StringRule(minLength: 1, maxLength: nil, pattern: nil)
    public var pairedWines: [String]
    public var pairingText: String
    public var productMatches: Set<GetWinePairing200ResponseProductMatchesInner>

    public init(pairedWines: [String], pairingText: String, productMatches: Set<GetWinePairing200ResponseProductMatchesInner>) {
        self.pairedWines = pairedWines
        self.pairingText = pairingText
        self.productMatches = productMatches
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case pairedWines
        case pairingText
        case productMatches
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(pairedWines, forKey: .pairedWines)
        try container.encode(pairingText, forKey: .pairingText)
        try container.encode(productMatches, forKey: .productMatches)
    }
}

