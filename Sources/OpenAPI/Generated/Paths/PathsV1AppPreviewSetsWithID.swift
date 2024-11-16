// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppPreviewSets {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/appPreviewSets/{id}`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.AppPreviewSetResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "appPreviewSets_getInstance")
		}

		public struct GetParameters {
			public var fieldsAppPreviewSets: [FieldsAppPreviewSets]?
			public var fieldsAppPreviews: [FieldsAppPreviews]?
			public var include: [Include]?
			public var limitAppPreviews: Int?

			public enum FieldsAppPreviewSets: String, Codable, CaseIterable {
				case previewType
				case appStoreVersionLocalization
				case appCustomProductPageLocalization
				case appStoreVersionExperimentTreatmentLocalization
				case appPreviews
			}

			public enum FieldsAppPreviews: String, Codable, CaseIterable {
				case fileSize
				case fileName
				case sourceFileChecksum
				case previewFrameTimeCode
				case mimeType
				case videoURL = "videoUrl"
				case previewFrameImage
				case previewImage
				case uploadOperations
				case assetDeliveryState
				case videoDeliveryState
				case appPreviewSet
			}

			public enum Include: String, Codable, CaseIterable {
				case appStoreVersionLocalization
				case appCustomProductPageLocalization
				case appStoreVersionExperimentTreatmentLocalization
				case appPreviews
			}

			public init(fieldsAppPreviewSets: [FieldsAppPreviewSets]? = nil, fieldsAppPreviews: [FieldsAppPreviews]? = nil, include: [Include]? = nil, limitAppPreviews: Int? = nil) {
				self.fieldsAppPreviewSets = fieldsAppPreviewSets
				self.fieldsAppPreviews = fieldsAppPreviews
				self.include = include
				self.limitAppPreviews = limitAppPreviews
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsAppPreviewSets, forKey: "fields[appPreviewSets]")
				encoder.encode(fieldsAppPreviews, forKey: "fields[appPreviews]")
				encoder.encode(include, forKey: "include")
				encoder.encode(limitAppPreviews, forKey: "limit[appPreviews]")
				return encoder.items
			}
		}

		public var delete: Request<Void> {
			Request(path: path, method: "DELETE", id: "appPreviewSets_deleteInstance")
		}
	}
}
