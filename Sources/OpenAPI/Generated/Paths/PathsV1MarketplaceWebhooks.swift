// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var marketplaceWebhooks: MarketplaceWebhooks {
		MarketplaceWebhooks(path: path + "/marketplaceWebhooks")
	}

	public struct MarketplaceWebhooks {
		/// Path: `/v1/marketplaceWebhooks`
		public let path: String

		public func get(fieldsMarketplaceWebhooks: [FieldsMarketplaceWebhooks]? = nil, limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.MarketplaceWebhooksResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsMarketplaceWebhooks, limit), id: "marketplaceWebhooks_getCollection")
		}

		private func makeGetQuery(_ fieldsMarketplaceWebhooks: [FieldsMarketplaceWebhooks]?, _ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsMarketplaceWebhooks, forKey: "fields[marketplaceWebhooks]", explode: false)
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public enum FieldsMarketplaceWebhooks: String, Codable, CaseIterable {
			case endpointURL = "endpointUrl"
		}

		public func post(_ body: AppStoreConnect_Swift_SDK.MarketplaceWebhookCreateRequest) -> Request<AppStoreConnect_Swift_SDK.MarketplaceWebhookResponse> {
			Request(path: path, method: "POST", body: body, id: "marketplaceWebhooks_createInstance")
		}
	}
}
