// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Profiles.WithID {
	public var devices: Devices {
		Devices(path: path + "/devices")
	}

	public struct Devices {
		/// Path: `/v1/profiles/{id}/devices`
		public let path: String

		public func get(fieldsDevices: [FieldsDevices]? = nil, limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.DevicesResponse> {
			.get(path, query: makeGetQuery(fieldsDevices, limit))
		}

		private func makeGetQuery(_ fieldsDevices: [FieldsDevices]?, _ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsDevices, forKey: "fields[devices]", explode: false)
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public enum FieldsDevices: String, Codable, CaseIterable {
			case addedDate
			case deviceClass
			case model
			case name
			case platform
			case status
			case udid
		}
	}
}
