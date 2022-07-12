// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.AppEncryptionDeclarations.WithID.Relationships {
	public var builds: Builds {
		Builds(path: path + "/builds")
	}

	public struct Builds {
		/// Path: `/v1/appEncryptionDeclarations/{id}/relationships/builds`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppEncryptionDeclarationBuildsLinkagesRequest) -> Request<Void> {
			.post(path, body: body)
		}
	}
}
