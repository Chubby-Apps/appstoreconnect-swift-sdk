// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct CustomerReviewResponse: Codable {
	/// CustomerReview
	public var data: CustomerReview
	public var included: [CustomerReviewResponseV1]?
	public var links: DocumentLinks

	public init(data: CustomerReview, included: [CustomerReviewResponseV1]? = nil, links: DocumentLinks) {
		self.data = data
		self.included = included
		self.links = links
	}
}
