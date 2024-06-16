//
// SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SearchRestaurants200ResponseRestaurantsInnerLocalHoursOperational: Codable, JSONEncodable, Hashable {

    public var monday: String?
    public var tuesday: String?
    public var wednesday: String?
    public var thursday: String?
    public var friday: String?
    public var saturday: String?
    public var sunday: String?

    public init(monday: String? = nil, tuesday: String? = nil, wednesday: String? = nil, thursday: String? = nil, friday: String? = nil, saturday: String? = nil, sunday: String? = nil) {
        self.monday = monday
        self.tuesday = tuesday
        self.wednesday = wednesday
        self.thursday = thursday
        self.friday = friday
        self.saturday = saturday
        self.sunday = sunday
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case monday = "Monday"
        case tuesday = "Tuesday"
        case wednesday = "Wednesday"
        case thursday = "Thursday"
        case friday = "Friday"
        case saturday = "Saturday"
        case sunday = "Sunday"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(monday, forKey: .monday)
        try container.encodeIfPresent(tuesday, forKey: .tuesday)
        try container.encodeIfPresent(wednesday, forKey: .wednesday)
        try container.encodeIfPresent(thursday, forKey: .thursday)
        try container.encodeIfPresent(friday, forKey: .friday)
        try container.encodeIfPresent(saturday, forKey: .saturday)
        try container.encodeIfPresent(sunday, forKey: .sunday)
    }
}
