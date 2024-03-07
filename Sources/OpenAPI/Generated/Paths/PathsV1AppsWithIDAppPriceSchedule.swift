// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID {
	public var appPriceSchedule: AppPriceSchedule {
		AppPriceSchedule(path: path + "/appPriceSchedule")
	}

	public struct AppPriceSchedule {
		/// Path: `/v1/apps/{id}/appPriceSchedule`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppPriceScheduleResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "apps-appPriceSchedule-get_to_one_related")
		}

		public struct GetParameters {
			public var fieldsAppPrices: [FieldsAppPrices]?
			public var fieldsAppPriceSchedules: [FieldsAppPriceSchedules]?
			public var fieldsApps: [FieldsApps]?
			public var fieldsTerritories: [FieldsTerritories]?
			public var limitManualPrices: Int?
			public var limitAutomaticPrices: Int?
			public var include: [Include]?

			public enum FieldsAppPrices: String, Codable, CaseIterable {
				case appPricePoint
				case endDate
				case manual
				case startDate
				case territory
			}

			public enum FieldsAppPriceSchedules: String, Codable, CaseIterable {
				case app
				case automaticPrices
				case baseTerritory
				case manualPrices
			}

			public enum FieldsApps: String, Codable, CaseIterable {
				case alternativeDistributionKey
				case analyticsReportRequests
				case appAvailability
				case appClips
				case appCustomProductPages
				case appEncryptionDeclarations
				case appEvents
				case appInfos
				case appPricePoints
				case appPriceSchedule
				case appStoreVersionExperimentsV2
				case appStoreVersions
				case availableInNewTerritories
				case availableTerritories
				case betaAppLocalizations
				case betaAppReviewDetail
				case betaGroups
				case betaLicenseAgreement
				case betaTesters
				case builds
				case bundleID = "bundleId"
				case ciProduct
				case contentRightsDeclaration
				case customerReviews
				case endUserLicenseAgreement
				case gameCenterDetail
				case gameCenterEnabledVersions
				case inAppPurchases
				case inAppPurchasesV2
				case isOrEverWasMadeForKids
				case marketplaceSearchDetail
				case name
				case perfPowerMetrics
				case preOrder
				case preReleaseVersions
				case pricePoints
				case prices
				case primaryLocale
				case promotedPurchases
				case reviewSubmissions
				case sku
				case subscriptionGracePeriod
				case subscriptionGroups
				case subscriptionStatusURL = "subscriptionStatusUrl"
				case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
				case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
				case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
			}

			public enum FieldsTerritories: String, Codable, CaseIterable {
				case currency
			}

			public enum Include: String, Codable, CaseIterable {
				case app
				case automaticPrices
				case baseTerritory
				case manualPrices
			}

			public init(fieldsAppPrices: [FieldsAppPrices]? = nil, fieldsAppPriceSchedules: [FieldsAppPriceSchedules]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsTerritories: [FieldsTerritories]? = nil, limitManualPrices: Int? = nil, limitAutomaticPrices: Int? = nil, include: [Include]? = nil) {
				self.fieldsAppPrices = fieldsAppPrices
				self.fieldsAppPriceSchedules = fieldsAppPriceSchedules
				self.fieldsApps = fieldsApps
				self.fieldsTerritories = fieldsTerritories
				self.limitManualPrices = limitManualPrices
				self.limitAutomaticPrices = limitAutomaticPrices
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppPrices, forKey: "fields[appPrices]")
				encoder.encode(fieldsAppPriceSchedules, forKey: "fields[appPriceSchedules]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(fieldsTerritories, forKey: "fields[territories]")
				encoder.encode(limitManualPrices, forKey: "limit[manualPrices]")
				encoder.encode(limitAutomaticPrices, forKey: "limit[automaticPrices]")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
