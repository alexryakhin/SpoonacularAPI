//
// SearchFoodVideos200Response.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/**  */
public struct SearchFoodVideos200Response: Codable, JSONEncodable, Hashable {

    public var videos: Set<SearchFoodVideos200ResponseVideosInner>
    public var totalResults: Int

    public init(videos: Set<SearchFoodVideos200ResponseVideosInner>, totalResults: Int) {
        self.videos = videos
        self.totalResults = totalResults
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case videos
        case totalResults
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(videos, forKey: .videos)
        try container.encode(totalResults, forKey: .totalResults)
    }
}
