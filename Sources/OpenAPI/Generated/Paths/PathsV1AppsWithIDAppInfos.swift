// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Apps.WithID {
	public var appInfos: AppInfos {
		AppInfos(path: path + "/appInfos")
	}

	public struct AppInfos {
		/// Path: `/v1/apps/{id}/appInfos`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppInfosResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "apps_appInfos_getToManyRelated")
		}

		public struct GetParameters {
			public var fieldsAppInfos: [FieldsAppInfos]?
			public var fieldsApps: [FieldsApps]?
			public var fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations]?
			public var fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations]?
			public var fieldsAppCategories: [FieldsAppCategories]?
			public var limit: Int?
			public var include: [Include]?
			public var limitAppInfoLocalizations: Int?

			public enum FieldsAppInfos: String, Codable, CaseIterable {
				case appStoreState
				case state
				case appStoreAgeRating
				case australiaAgeRating
				case brazilAgeRating
				case brazilAgeRatingV2
				case franceAgeRating
				case koreaAgeRating
				case kidsAgeBand
				case app
				case ageRatingDeclaration
				case appInfoLocalizations
				case primaryCategory
				case primarySubcategoryOne
				case primarySubcategoryTwo
				case secondaryCategory
				case secondarySubcategoryOne
				case secondarySubcategoryTwo
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

			public enum FieldsAgeRatingDeclarations: String, Codable, CaseIterable {
				case alcoholTobaccoOrDrugUseOrReferences
				case contests
				case gamblingAndContests
				case gambling
				case gamblingSimulated
				case kidsAgeBand
				case lootBox
				case medicalOrTreatmentInformation
				case profanityOrCrudeHumor
				case sexualContentGraphicAndNudity
				case sexualContentOrNudity
				case horrorOrFearThemes
				case matureOrSuggestiveThemes
				case unrestrictedWebAccess
				case violenceCartoonOrFantasy
				case violenceRealisticProlongedGraphicOrSadistic
				case violenceRealistic
				case ageRatingOverride
				case koreaAgeRatingOverride
				case seventeenPlus
			}

			public enum FieldsAppInfoLocalizations: String, Codable, CaseIterable {
				case locale
				case name
				case subtitle
				case privacyPolicyURL = "privacyPolicyUrl"
				case privacyChoicesURL = "privacyChoicesUrl"
				case privacyPolicyText
				case appInfo
			}

			public enum FieldsAppCategories: String, Codable, CaseIterable {
				case platforms
				case subcategories
				case parent
			}

			public enum Include: String, Codable, CaseIterable {
				case app
				case ageRatingDeclaration
				case appInfoLocalizations
				case primaryCategory
				case primarySubcategoryOne
				case primarySubcategoryTwo
				case secondaryCategory
				case secondarySubcategoryOne
				case secondarySubcategoryTwo
			}

			public init(fieldsAppInfos: [FieldsAppInfos]? = nil, fieldsApps: [FieldsApps]? = nil, fieldsAgeRatingDeclarations: [FieldsAgeRatingDeclarations]? = nil, fieldsAppInfoLocalizations: [FieldsAppInfoLocalizations]? = nil, fieldsAppCategories: [FieldsAppCategories]? = nil, limit: Int? = nil, include: [Include]? = nil, limitAppInfoLocalizations: Int? = nil) {
				self.fieldsAppInfos = fieldsAppInfos
				self.fieldsApps = fieldsApps
				self.fieldsAgeRatingDeclarations = fieldsAgeRatingDeclarations
				self.fieldsAppInfoLocalizations = fieldsAppInfoLocalizations
				self.fieldsAppCategories = fieldsAppCategories
				self.limit = limit
				self.include = include
				self.limitAppInfoLocalizations = limitAppInfoLocalizations
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppInfos, forKey: "fields[appInfos]")
				encoder.encode(fieldsApps, forKey: "fields[apps]")
				encoder.encode(fieldsAgeRatingDeclarations, forKey: "fields[ageRatingDeclarations]")
				encoder.encode(fieldsAppInfoLocalizations, forKey: "fields[appInfoLocalizations]")
				encoder.encode(fieldsAppCategories, forKey: "fields[appCategories]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitAppInfoLocalizations, forKey: "limit[appInfoLocalizations]")
				return encoder.items
			}
		}
	}
}
