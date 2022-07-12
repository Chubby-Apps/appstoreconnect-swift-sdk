// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.BuildBundles.WithID.Relationships {
	public var appClipDomainCacheStatus: AppClipDomainCacheStatus {
		AppClipDomainCacheStatus(path: path + "/appClipDomainCacheStatus")
	}

	public struct AppClipDomainCacheStatus {
		/// Path: `/v1/buildBundles/{id}/relationships/appClipDomainCacheStatus`
		public let path: String
	}
}
