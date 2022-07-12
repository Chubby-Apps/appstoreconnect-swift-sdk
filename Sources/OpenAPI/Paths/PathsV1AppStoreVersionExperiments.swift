// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appStoreVersionExperiments: AppStoreVersionExperiments {
		AppStoreVersionExperiments(path: path + "/appStoreVersionExperiments")
	}

	public struct AppStoreVersionExperiments {
		/// Path: `/v1/appStoreVersionExperiments`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppStoreVersionExperimentCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppStoreVersionExperimentResponse> {
			.post(path, body: body)
		}
	}
}
