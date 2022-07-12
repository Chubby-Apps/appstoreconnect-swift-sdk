// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct SubscriptionGroupLocalizationResponse: Codable {
	/// SubscriptionGroupLocalization
	public var data: SubscriptionGroupLocalization
	public var included: [SubscriptionGroup]?
	public var links: DocumentLinks

	public init(data: SubscriptionGroupLocalization, included: [SubscriptionGroup]? = nil, links: DocumentLinks) {
		self.data = data
		self.included = included
		self.links = links
	}
}
