// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct SubscriptionOfferCodeOneTimeUseCodeCreateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var attributes: Attributes
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable {
			case subscriptionOfferCodeOneTimeUseCodes
		}

		public struct Attributes: Codable {
			public var numberOfCodes: Int
			public var expirationDate: String

			public init(numberOfCodes: Int, expirationDate: String) {
				self.numberOfCodes = numberOfCodes
				self.expirationDate = expirationDate
			}
		}

		public struct Relationships: Codable {
			public var offerCode: OfferCode

			public struct OfferCode: Codable {
				public var data: Data

				public struct Data: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case subscriptionOfferCodes
					}

					public init(type: `Type`, id: String) {
						self.type = type
						self.id = id
					}
				}

				public init(data: Data) {
					self.data = data
				}
			}

			public init(offerCode: OfferCode) {
				self.offerCode = offerCode
			}
		}

		public init(type: `Type`, attributes: Attributes, relationships: Relationships) {
			self.type = type
			self.attributes = attributes
			self.relationships = relationships
		}
	}

	public init(data: Data) {
		self.data = data
	}
}
