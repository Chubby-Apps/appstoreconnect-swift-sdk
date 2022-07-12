// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppStoreVersions.WithID.Relationships {
	public var appStoreVersionLocalizations: AppStoreVersionLocalizations {
		AppStoreVersionLocalizations(path: path + "/appStoreVersionLocalizations")
	}

	public struct AppStoreVersionLocalizations {
		/// Path: `/v1/appStoreVersions/{id}/relationships/appStoreVersionLocalizations`
		public let path: String
	}
}
