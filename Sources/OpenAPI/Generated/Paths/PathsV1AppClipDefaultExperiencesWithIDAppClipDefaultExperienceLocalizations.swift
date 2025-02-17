// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppClipDefaultExperiences.WithID {
	public var appClipDefaultExperienceLocalizations: AppClipDefaultExperienceLocalizations {
		AppClipDefaultExperienceLocalizations(path: path + "/appClipDefaultExperienceLocalizations")
	}

	public struct AppClipDefaultExperienceLocalizations {
		/// Path: `/v1/appClipDefaultExperiences/{id}/appClipDefaultExperienceLocalizations`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppClipDefaultExperienceLocalizationsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appClipDefaultExperiences_appClipDefaultExperienceLocalizations_getToManyRelated")
		}

		public struct GetParameters {
			public var filterLocale: [String]?
			public var fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations]?
			public var fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]?
			public var fieldsAppClipHeaderImages: [FieldsAppClipHeaderImages]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsAppClipDefaultExperienceLocalizations: String, Codable, CaseIterable {
				case locale
				case subtitle
				case appClipDefaultExperience
				case appClipHeaderImage
			}

			public enum FieldsAppClipDefaultExperiences: String, Codable, CaseIterable {
				case action
				case appClip
				case releaseWithAppStoreVersion
				case appClipDefaultExperienceLocalizations
				case appClipAppStoreReviewDetail
			}

			public enum FieldsAppClipHeaderImages: String, Codable, CaseIterable {
				case fileSize
				case fileName
				case sourceFileChecksum
				case imageAsset
				case uploadOperations
				case assetDeliveryState
				case appClipDefaultExperienceLocalization
			}

			public enum Include: String, Codable, CaseIterable {
				case appClipDefaultExperience
				case appClipHeaderImage
			}

			public init(filterLocale: [String]? = nil, fieldsAppClipDefaultExperienceLocalizations: [FieldsAppClipDefaultExperienceLocalizations]? = nil, fieldsAppClipDefaultExperiences: [FieldsAppClipDefaultExperiences]? = nil, fieldsAppClipHeaderImages: [FieldsAppClipHeaderImages]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.filterLocale = filterLocale
				self.fieldsAppClipDefaultExperienceLocalizations = fieldsAppClipDefaultExperienceLocalizations
				self.fieldsAppClipDefaultExperiences = fieldsAppClipDefaultExperiences
				self.fieldsAppClipHeaderImages = fieldsAppClipHeaderImages
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterLocale, forKey: "filter[locale]")
				encoder.encode(fieldsAppClipDefaultExperienceLocalizations, forKey: "fields[appClipDefaultExperienceLocalizations]")
				encoder.encode(fieldsAppClipDefaultExperiences, forKey: "fields[appClipDefaultExperiences]")
				encoder.encode(fieldsAppClipHeaderImages, forKey: "fields[appClipHeaderImages]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
