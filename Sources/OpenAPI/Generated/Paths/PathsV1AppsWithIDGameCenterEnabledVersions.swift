// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID {
	public var gameCenterEnabledVersions: GameCenterEnabledVersions {
		GameCenterEnabledVersions(path: path + "/gameCenterEnabledVersions")
	}

	public struct GameCenterEnabledVersions {
		/// Path: `/v1/apps/{id}/gameCenterEnabledVersions`
		public let path: String

		@available(*, deprecated, message: "Deprecated")
		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterEnabledVersionsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "apps_gameCenterEnabledVersions_getToManyRelated")
		}

		public struct GetParameters {
			public var filterPlatform: [FilterPlatform]?
			public var filterVersionString: [String]?
			public var filterID: [String]?
			public var sort: [Sort]?
			public var fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions]?
			public var fieldsApps: [FieldsApps]?
			public var limit: Int?
			public var include: [Include]?
			public var limitCompatibleVersions: Int?

			public enum FilterPlatform: String, Codable, CaseIterable {
				case ios = "IOS"
				case macOs = "MAC_OS"
				case tvOs = "TV_OS"
				case visionOs = "VISION_OS"
			}

			public enum Sort: String, Codable, CaseIterable {
				case versionString
				case minusversionString = "-versionString"
			}

			public enum FieldsGameCenterEnabledVersions: String, Codable, CaseIterable {
				case platform
				case versionString
				case iconAsset
				case compatibleVersions
				case app
			}

			public enum FieldsApps: String, Codable, CaseIterable {
				case name
				case bundleID = "bundleId"
				case sku
				case primaryLocale
				case isOrEverWasMadeForKids
				case subscriptionStatusURL = "subscriptionStatusUrl"
				case subscriptionStatusURLVersion = "subscriptionStatusUrlVersion"
				case subscriptionStatusURLForSandbox = "subscriptionStatusUrlForSandbox"
				case subscriptionStatusURLVersionForSandbox = "subscriptionStatusUrlVersionForSandbox"
				case contentRightsDeclaration
				case streamlinedPurchasingEnabled
				case appEncryptionDeclarations
				case ciProduct
				case betaTesters
				case betaGroups
				case appStoreVersions
				case preReleaseVersions
				case betaAppLocalizations
				case builds
				case betaLicenseAgreement
				case betaAppReviewDetail
				case appInfos
				case appClips
				case appPricePoints
				case endUserLicenseAgreement
				case appPriceSchedule
				case appAvailabilityV2
				case inAppPurchases
				case subscriptionGroups
				case gameCenterEnabledVersions
				case perfPowerMetrics
				case appCustomProductPages
				case inAppPurchasesV2
				case promotedPurchases
				case appEvents
				case reviewSubmissions
				case subscriptionGracePeriod
				case customerReviews
				case gameCenterDetail
				case appStoreVersionExperimentsV2
				case alternativeDistributionKey
				case analyticsReportRequests
				case marketplaceSearchDetail
			}

			public enum Include: String, Codable, CaseIterable {
				case compatibleVersions
				case app
			}

			public init(filterPlatform: [FilterPlatform]? = nil, filterVersionString: [String]? = nil, filterID: [String]? = nil, sort: [Sort]? = nil, fieldsGameCenterEnabledVersions: [FieldsGameCenterEnabledVersions]? = nil, fieldsApps: [FieldsApps]? = nil, limit: Int? = nil, include: [Include]? = nil, limitCompatibleVersions: Int? = nil) {
				self.filterPlatform = filterPlatform
				self.filterVersionString = filterVersionString
				self.filterID = filterID
				self.sort = sort
				self.fieldsGameCenterEnabledVersions = fieldsGameCenterEnabledVersions
				self.fieldsApps = fieldsApps
				self.limit = limit
				self.include = include
				self.limitCompatibleVersions = limitCompatibleVersions
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterPlatform, forKey: "filter[platform]")
				encoder.encode(filterVersionString, forKey: "filter[versionString]")
				encoder.encode(filterID, forKey: "filter[id]")
				encoder.encode(sort, forKey: "sort")
				encoder.encode(fieldsGameCenterEnabledVersions, forKey: "fields[gameCenterEnabledVersions]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitCompatibleVersions, forKey: "limit[compatibleVersions]")
				return encoder.items
			}
		}
	}
}
