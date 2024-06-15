//
// SearchRestaurants200ResponseRestaurantsInner.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SearchRestaurants200ResponseRestaurantsInner: Codable, JSONEncodable, Hashable {

    public var id: String?
    public var name: String?
    public var phoneNumber: Int?
    public var address: SearchRestaurants200ResponseRestaurantsInnerAddress?
    public var type: String?
    public var description: String?
    public var localHours: SearchRestaurants200ResponseRestaurantsInnerLocalHours?
    public var cuisines: [String]?
    public var foodPhotos: [String]?
    public var logoPhotos: [String]?
    public var storePhotos: [AnyCodable]?
    public var dollarSigns: Int?
    public var pickupEnabled: Bool?
    public var deliveryEnabled: Bool?
    public var isOpen: Bool?
    public var offersFirstPartyDelivery: Bool?
    public var offersThirdPartyDelivery: Bool?
    public var miles: Double?
    public var weightedRatingValue: Double?
    public var aggregatedRatingCount: Int?

    public init(id: String? = nil, name: String? = nil, phoneNumber: Int? = nil, address: SearchRestaurants200ResponseRestaurantsInnerAddress? = nil, type: String? = nil, description: String? = nil, localHours: SearchRestaurants200ResponseRestaurantsInnerLocalHours? = nil, cuisines: [String]? = nil, foodPhotos: [String]? = nil, logoPhotos: [String]? = nil, storePhotos: [AnyCodable]? = nil, dollarSigns: Int? = nil, pickupEnabled: Bool? = nil, deliveryEnabled: Bool? = nil, isOpen: Bool? = nil, offersFirstPartyDelivery: Bool? = nil, offersThirdPartyDelivery: Bool? = nil, miles: Double? = nil, weightedRatingValue: Double? = nil, aggregatedRatingCount: Int? = nil) {
        self.id = id
        self.name = name
        self.phoneNumber = phoneNumber
        self.address = address
        self.type = type
        self.description = description
        self.localHours = localHours
        self.cuisines = cuisines
        self.foodPhotos = foodPhotos
        self.logoPhotos = logoPhotos
        self.storePhotos = storePhotos
        self.dollarSigns = dollarSigns
        self.pickupEnabled = pickupEnabled
        self.deliveryEnabled = deliveryEnabled
        self.isOpen = isOpen
        self.offersFirstPartyDelivery = offersFirstPartyDelivery
        self.offersThirdPartyDelivery = offersThirdPartyDelivery
        self.miles = miles
        self.weightedRatingValue = weightedRatingValue
        self.aggregatedRatingCount = aggregatedRatingCount
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "_id"
        case name
        case phoneNumber = "phone_number"
        case address
        case type
        case description
        case localHours = "local_hours"
        case cuisines
        case foodPhotos = "food_photos"
        case logoPhotos = "logo_photos"
        case storePhotos = "store_photos"
        case dollarSigns = "dollar_signs"
        case pickupEnabled = "pickup_enabled"
        case deliveryEnabled = "delivery_enabled"
        case isOpen = "is_open"
        case offersFirstPartyDelivery = "offers_first_party_delivery"
        case offersThirdPartyDelivery = "offers_third_party_delivery"
        case miles
        case weightedRatingValue = "weighted_rating_value"
        case aggregatedRatingCount = "aggregated_rating_count"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(phoneNumber, forKey: .phoneNumber)
        try container.encodeIfPresent(address, forKey: .address)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(localHours, forKey: .localHours)
        try container.encodeIfPresent(cuisines, forKey: .cuisines)
        try container.encodeIfPresent(foodPhotos, forKey: .foodPhotos)
        try container.encodeIfPresent(logoPhotos, forKey: .logoPhotos)
        try container.encodeIfPresent(storePhotos, forKey: .storePhotos)
        try container.encodeIfPresent(dollarSigns, forKey: .dollarSigns)
        try container.encodeIfPresent(pickupEnabled, forKey: .pickupEnabled)
        try container.encodeIfPresent(deliveryEnabled, forKey: .deliveryEnabled)
        try container.encodeIfPresent(isOpen, forKey: .isOpen)
        try container.encodeIfPresent(offersFirstPartyDelivery, forKey: .offersFirstPartyDelivery)
        try container.encodeIfPresent(offersThirdPartyDelivery, forKey: .offersThirdPartyDelivery)
        try container.encodeIfPresent(miles, forKey: .miles)
        try container.encodeIfPresent(weightedRatingValue, forKey: .weightedRatingValue)
        try container.encodeIfPresent(aggregatedRatingCount, forKey: .aggregatedRatingCount)
    }
}

