// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.SubscriptionGroups {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/subscriptionGroups/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.SubscriptionGroupResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "subscriptionGroups_getInstance")
		}

		public struct GetParameters {
			public var fieldsSubscriptionGroups: [FieldsSubscriptionGroups]?
			public var fieldsSubscriptions: [FieldsSubscriptions]?
			public var fieldsSubscriptionGroupLocalizations: [FieldsSubscriptionGroupLocalizations]?
			public var include: [Include]?
			public var limitSubscriptionGroupLocalizations: Int?
			public var limitSubscriptions: Int?

			public enum FieldsSubscriptionGroups: String, Codable, CaseIterable {
				case referenceName
				case subscriptions
				case subscriptionGroupLocalizations
			}

			public enum FieldsSubscriptions: String, Codable, CaseIterable {
				case name
				case productID = "productId"
				case familySharable
				case state
				case subscriptionPeriod
				case reviewNote
				case groupLevel
				case subscriptionLocalizations
				case appStoreReviewScreenshot
				case group
				case introductoryOffers
				case promotionalOffers
				case offerCodes
				case prices
				case pricePoints
				case promotedPurchase
				case subscriptionAvailability
				case winBackOffers
				case images
			}

			public enum FieldsSubscriptionGroupLocalizations: String, Codable, CaseIterable {
				case name
				case customAppName
				case locale
				case state
				case subscriptionGroup
			}

			public enum Include: String, Codable, CaseIterable {
				case subscriptions
				case subscriptionGroupLocalizations
			}

			public init(fieldsSubscriptionGroups: [FieldsSubscriptionGroups]? = nil, fieldsSubscriptions: [FieldsSubscriptions]? = nil, fieldsSubscriptionGroupLocalizations: [FieldsSubscriptionGroupLocalizations]? = nil, include: [Include]? = nil, limitSubscriptionGroupLocalizations: Int? = nil, limitSubscriptions: Int? = nil) {
				self.fieldsSubscriptionGroups = fieldsSubscriptionGroups
				self.fieldsSubscriptions = fieldsSubscriptions
				self.fieldsSubscriptionGroupLocalizations = fieldsSubscriptionGroupLocalizations
				self.include = include
				self.limitSubscriptionGroupLocalizations = limitSubscriptionGroupLocalizations
				self.limitSubscriptions = limitSubscriptions
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsSubscriptionGroups, forKey: "fields[subscriptionGroups]")
				encoder.encode(fieldsSubscriptions, forKey: "fields[subscriptions]")
				encoder.encode(fieldsSubscriptionGroupLocalizations, forKey: "fields[subscriptionGroupLocalizations]")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitSubscriptionGroupLocalizations, forKey: "limit[subscriptionGroupLocalizations]")
				encoder.encode(limitSubscriptions, forKey: "limit[subscriptions]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.SubscriptionGroupUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.SubscriptionGroupResponse> {
			Request(path: path, method: "PATCH", body: body, id: "subscriptionGroups_updateInstance")
		}

		public var delete: Request<Void> {
			Request(path: path, method: "DELETE", id: "subscriptionGroups_deleteInstance")
		}
	}
}
