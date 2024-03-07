// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var users: Users {
		Users(path: path + "/users")
	}

	public struct Users {
		/// Path: `/v1/users`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.UsersResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "users-get_collection")
		}

		public struct GetParameters {
			public var filterRoles: [FilterRoles]?
			public var filterUsername: [String]?
			public var filterVisibleApps: [String]?
			public var sort: [Sort]?
			public var fieldsUsers: [FieldsUsers]?
			public var limit: Int?
			public var include: [Include]?
			public var fieldsApps: [FieldsApps]?
			public var limitVisibleApps: Int?

			public enum FilterRoles: String, Codable, CaseIterable {
				case admin = "ADMIN"
				case finance = "FINANCE"
				case accountHolder = "ACCOUNT_HOLDER"
				case sales = "SALES"
				case marketing = "MARKETING"
				case appManager = "APP_MANAGER"
				case developer = "DEVELOPER"
				case accessToReports = "ACCESS_TO_REPORTS"
				case customerSupport = "CUSTOMER_SUPPORT"
				case imageManager = "IMAGE_MANAGER"
				case createApps = "CREATE_APPS"
				case cloudManagedDeveloperID = "CLOUD_MANAGED_DEVELOPER_ID"
				case cloudManagedAppDistribution = "CLOUD_MANAGED_APP_DISTRIBUTION"
				case generateIndividualKeys = "GENERATE_INDIVIDUAL_KEYS"
			}

			public enum Sort: String, Codable, CaseIterable {
				case lastName
				case minuslastName = "-lastName"
				case username
				case minususername = "-username"
			}

			public enum FieldsUsers: String, Codable, CaseIterable {
				case allAppsVisible
				case firstName
				case lastName
				case provisioningAllowed
				case roles
				case username
				case visibleApps
			}

			public enum Include: String, Codable, CaseIterable {
				case visibleApps
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

			public init(filterRoles: [FilterRoles]? = nil, filterUsername: [String]? = nil, filterVisibleApps: [String]? = nil, sort: [Sort]? = nil, fieldsUsers: [FieldsUsers]? = nil, limit: Int? = nil, include: [Include]? = nil, fieldsApps: [FieldsApps]? = nil, limitVisibleApps: Int? = nil) {
				self.filterRoles = filterRoles
				self.filterUsername = filterUsername
				self.filterVisibleApps = filterVisibleApps
				self.sort = sort
				self.fieldsUsers = fieldsUsers
				self.limit = limit
				self.include = include
				self.fieldsApps = fieldsApps
				self.limitVisibleApps = limitVisibleApps
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterRoles, forKey: "filter[roles]")
				encoder.encode(filterUsername, forKey: "filter[username]")
				encoder.encode(filterVisibleApps, forKey: "filter[visibleApps]")
				encoder.encode(sort, forKey: "sort")
				encoder.encode(fieldsUsers, forKey: "fields[users]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(limitVisibleApps, forKey: "limit[visibleApps]")
				return encoder.items
			}
		}
	}
}
