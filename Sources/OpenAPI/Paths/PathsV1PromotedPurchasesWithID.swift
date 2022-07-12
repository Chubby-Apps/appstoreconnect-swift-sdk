// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.PromotedPurchases {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/promotedPurchases/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.PromotedPurchaseResponse> {
			.get(path, query: parameters?.asQuery)
		}

		public struct GetParameters {
			public var fieldsPromotedPurchases: [FieldsPromotedPurchases]?
			public var include: [Include]?
			public var fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages]?
			public var limitPromotionImages: Int?

			public enum FieldsPromotedPurchases: String, Codable, CaseIterable {
				case app
				case enabled
				case inAppPurchaseV2
				case promotionImages
				case state
				case subscription
				case visibleForAllUsers
			}

			public enum Include: String, Codable, CaseIterable {
				case inAppPurchaseV2
				case promotionImages
				case subscription
			}

			public enum FieldsPromotedPurchaseImages: String, Codable, CaseIterable {
				case assetToken
				case assetType
				case fileName
				case fileSize
				case imageAsset
				case promotedPurchase
				case sourceFileChecksum
				case state
				case uploadOperations
				case uploaded
			}

			public init(fieldsPromotedPurchases: [FieldsPromotedPurchases]? = nil, include: [Include]? = nil, fieldsPromotedPurchaseImages: [FieldsPromotedPurchaseImages]? = nil, limitPromotionImages: Int? = nil) {
				self.fieldsPromotedPurchases = fieldsPromotedPurchases
				self.include = include
				self.fieldsPromotedPurchaseImages = fieldsPromotedPurchaseImages
				self.limitPromotionImages = limitPromotionImages
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsPromotedPurchases, forKey: "fields[promotedPurchases]")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsPromotedPurchaseImages, forKey: "fields[promotedPurchaseImages]")
				encoder.encode(limitPromotionImages, forKey: "limit[promotionImages]")
				return encoder.items
			}
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.PromotedPurchaseUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.PromotedPurchaseResponse> {
			.patch(path, body: body)
		}

		public var delete: Request<Void> {
			.delete(path)
		}
	}
}
