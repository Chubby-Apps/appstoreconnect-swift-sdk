// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID {
	public var subscriptionGracePeriod: SubscriptionGracePeriod {
		SubscriptionGracePeriod(path: path + "/subscriptionGracePeriod")
	}

	public struct SubscriptionGracePeriod {
		/// Path: `/v1/apps/{id}/subscriptionGracePeriod`
		public let path: String

		public func get(fieldsSubscriptionGracePeriods: [FieldsSubscriptionGracePeriods]? = nil) -> Request<AppStoreConnect_Swift_SDK.SubscriptionGracePeriodResponse> {
			.get(path, query: makeGetQuery(fieldsSubscriptionGracePeriods))
		}

		private func makeGetQuery(_ fieldsSubscriptionGracePeriods: [FieldsSubscriptionGracePeriods]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsSubscriptionGracePeriods, forKey: "fields[subscriptionGracePeriods]", explode: false)
			return encoder.items
		}

		public enum FieldsSubscriptionGracePeriods: String, Codable, CaseIterable {
			case app
			case optIn
		}
	}
}
