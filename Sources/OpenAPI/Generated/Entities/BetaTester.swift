// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct BetaTester: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable {
		case betaTesters
	}

	public struct Attributes: Codable {
		public var firstName: String?
		public var lastName: String?
		public var email: String?
		public var inviteType: BetaInviteType?

		public init(firstName: String? = nil, lastName: String? = nil, email: String? = nil, inviteType: BetaInviteType? = nil) {
			self.firstName = firstName
			self.lastName = lastName
			self.email = email
			self.inviteType = inviteType
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.firstName = try values.decodeIfPresent(String.self, forKey: "firstName")
			self.lastName = try values.decodeIfPresent(String.self, forKey: "lastName")
			self.email = try values.decodeIfPresent(String.self, forKey: "email")
			self.inviteType = try values.decodeIfPresent(BetaInviteType.self, forKey: "inviteType")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(firstName, forKey: "firstName")
			try values.encodeIfPresent(lastName, forKey: "lastName")
			try values.encodeIfPresent(email, forKey: "email")
			try values.encodeIfPresent(inviteType, forKey: "inviteType")
		}
	}

	public struct Relationships: Codable {
		public var apps: Apps?
		public var betaGroups: BetaGroups?
		public var builds: Builds?

		public struct Apps: Codable {
			public var links: Links?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Datum: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case apps
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
				self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(meta, forKey: "meta")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct BetaGroups: Codable {
			public var links: Links?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Datum: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case betaGroups
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
				self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(meta, forKey: "meta")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct Builds: Codable {
			public var links: Links?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Datum: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case builds
				}

				public init(type: `Type`, id: String) {
					self.type = type
					self.id = id
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.type = try values.decode(`Type`.self, forKey: "type")
					self.id = try values.decode(String.self, forKey: "id")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(type, forKey: "type")
					try values.encode(id, forKey: "id")
				}
			}

			public init(links: Links? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
				self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(meta, forKey: "meta")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public init(apps: Apps? = nil, betaGroups: BetaGroups? = nil, builds: Builds? = nil) {
			self.apps = apps
			self.betaGroups = betaGroups
			self.builds = builds
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.apps = try values.decodeIfPresent(Apps.self, forKey: "apps")
			self.betaGroups = try values.decodeIfPresent(BetaGroups.self, forKey: "betaGroups")
			self.builds = try values.decodeIfPresent(Builds.self, forKey: "builds")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(apps, forKey: "apps")
			try values.encodeIfPresent(betaGroups, forKey: "betaGroups")
			try values.encodeIfPresent(builds, forKey: "builds")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
		self.links = try values.decode(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encodeIfPresent(relationships, forKey: "relationships")
		try values.encode(links, forKey: "links")
	}
}