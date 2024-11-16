// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppStoreVersions.WithID {
	public var alternativeDistributionPackage: AlternativeDistributionPackage {
		AlternativeDistributionPackage(path: path + "/alternativeDistributionPackage")
	}

	public struct AlternativeDistributionPackage {
		/// Path: `/v1/appStoreVersions/{id}/alternativeDistributionPackage`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AlternativeDistributionPackageResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appStoreVersions_alternativeDistributionPackage_getToOneRelated")
		}

		public struct GetParameters {
			public var fieldsAlternativeDistributionPackages: [FieldsAlternativeDistributionPackages]?
			public var fieldsAlternativeDistributionPackageVersions: [FieldsAlternativeDistributionPackageVersions]?
			public var include: [Include]?
			public var limitVersions: Int?

			public enum FieldsAlternativeDistributionPackages: String, Codable, CaseIterable {
				case versions
			}

			public enum FieldsAlternativeDistributionPackageVersions: String, Codable, CaseIterable {
				case url
				case urlExpirationDate
				case version
				case fileChecksum
				case state
				case variants
				case deltas
				case alternativeDistributionPackage
			}

			public enum Include: String, Codable, CaseIterable {
				case versions
			}

			public init(fieldsAlternativeDistributionPackages: [FieldsAlternativeDistributionPackages]? = nil, fieldsAlternativeDistributionPackageVersions: [FieldsAlternativeDistributionPackageVersions]? = nil, include: [Include]? = nil, limitVersions: Int? = nil) {
				self.fieldsAlternativeDistributionPackages = fieldsAlternativeDistributionPackages
				self.fieldsAlternativeDistributionPackageVersions = fieldsAlternativeDistributionPackageVersions
				self.include = include
				self.limitVersions = limitVersions
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAlternativeDistributionPackages, forKey: "fields[alternativeDistributionPackages]")
				encoder.encode(fieldsAlternativeDistributionPackageVersions, forKey: "fields[alternativeDistributionPackageVersions]")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitVersions, forKey: "limit[versions]")
				return encoder.items
			}
		}
	}
}
