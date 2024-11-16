// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct GameCenterLeaderboard: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case gameCenterLeaderboards
	}

	public struct Attributes: Codable {
		public var defaultFormatter: GameCenterLeaderboardFormatter?
		public var referenceName: String?
		public var vendorIdentifier: String?
		public var submissionType: SubmissionType?
		public var scoreSortType: ScoreSortType?
		public var scoreRangeStart: String?
		public var scoreRangeEnd: String?
		public var recurrenceStartDate: Date?
		public var recurrenceDuration: String?
		public var recurrenceRule: String?
		public var isArchived: Bool?

		public enum SubmissionType: String, Codable, CaseIterable {
			case bestScore = "BEST_SCORE"
			case mostRecentScore = "MOST_RECENT_SCORE"
		}

		public enum ScoreSortType: String, Codable, CaseIterable {
			case asc = "ASC"
			case desc = "DESC"
		}

		public init(defaultFormatter: GameCenterLeaderboardFormatter? = nil, referenceName: String? = nil, vendorIdentifier: String? = nil, submissionType: SubmissionType? = nil, scoreSortType: ScoreSortType? = nil, scoreRangeStart: String? = nil, scoreRangeEnd: String? = nil, recurrenceStartDate: Date? = nil, recurrenceDuration: String? = nil, recurrenceRule: String? = nil, isArchived: Bool? = nil) {
			self.defaultFormatter = defaultFormatter
			self.referenceName = referenceName
			self.vendorIdentifier = vendorIdentifier
			self.submissionType = submissionType
			self.scoreSortType = scoreSortType
			self.scoreRangeStart = scoreRangeStart
			self.scoreRangeEnd = scoreRangeEnd
			self.recurrenceStartDate = recurrenceStartDate
			self.recurrenceDuration = recurrenceDuration
			self.recurrenceRule = recurrenceRule
			self.isArchived = isArchived
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.defaultFormatter = try values.decodeIfPresent(GameCenterLeaderboardFormatter.self, forKey: "defaultFormatter")
			self.referenceName = try values.decodeIfPresent(String.self, forKey: "referenceName")
			self.vendorIdentifier = try values.decodeIfPresent(String.self, forKey: "vendorIdentifier")
			self.submissionType = try values.decodeIfPresent(SubmissionType.self, forKey: "submissionType")
			self.scoreSortType = try values.decodeIfPresent(ScoreSortType.self, forKey: "scoreSortType")
			self.scoreRangeStart = try values.decodeIfPresent(String.self, forKey: "scoreRangeStart")
			self.scoreRangeEnd = try values.decodeIfPresent(String.self, forKey: "scoreRangeEnd")
			self.recurrenceStartDate = try values.decodeIfPresent(Date.self, forKey: "recurrenceStartDate")
			self.recurrenceDuration = try values.decodeIfPresent(String.self, forKey: "recurrenceDuration")
			self.recurrenceRule = try values.decodeIfPresent(String.self, forKey: "recurrenceRule")
			self.isArchived = try values.decodeIfPresent(Bool.self, forKey: "archived")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(defaultFormatter, forKey: "defaultFormatter")
			try values.encodeIfPresent(referenceName, forKey: "referenceName")
			try values.encodeIfPresent(vendorIdentifier, forKey: "vendorIdentifier")
			try values.encodeIfPresent(submissionType, forKey: "submissionType")
			try values.encodeIfPresent(scoreSortType, forKey: "scoreSortType")
			try values.encodeIfPresent(scoreRangeStart, forKey: "scoreRangeStart")
			try values.encodeIfPresent(scoreRangeEnd, forKey: "scoreRangeEnd")
			try values.encodeIfPresent(recurrenceStartDate, forKey: "recurrenceStartDate")
			try values.encodeIfPresent(recurrenceDuration, forKey: "recurrenceDuration")
			try values.encodeIfPresent(recurrenceRule, forKey: "recurrenceRule")
			try values.encodeIfPresent(isArchived, forKey: "archived")
		}
	}

	public struct Relationships: Codable {
		public var gameCenterDetail: GameCenterDetail?
		public var gameCenterGroup: GameCenterGroup?
		/// - warning: Deprecated.
		public var groupLeaderboard: GroupLeaderboard?
		public var gameCenterLeaderboardSets: GameCenterLeaderboardSets?
		public var localizations: Localizations?
		public var releases: Releases?

		public struct GameCenterDetail: Codable {
			public var data: Data?

			public struct Data: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case gameCenterDetails
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

			public init(data: Data? = nil) {
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct GameCenterGroup: Codable {
			public var data: Data?

			public struct Data: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case gameCenterGroups
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

			public init(data: Data? = nil) {
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		@available(*, deprecated, message: "Deprecated")
		public struct GroupLeaderboard: Codable {
			public var links: RelationshipLinks?
			public var data: Data?

			public struct Data: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case gameCenterLeaderboards
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

			public init(links: RelationshipLinks? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(RelationshipLinks.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct GameCenterLeaderboardSets: Codable {
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Datum: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case gameCenterLeaderboardSets
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

			public init(meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.meta = meta
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.meta = try values.decodeIfPresent(PagingInformation.self, forKey: "meta")
				self.data = try values.decodeIfPresent([Datum].self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(meta, forKey: "meta")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct Localizations: Codable {
			public var links: RelationshipLinks?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Datum: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case gameCenterLeaderboardLocalizations
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

			public init(links: RelationshipLinks? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(RelationshipLinks.self, forKey: "links")
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

		public struct Releases: Codable {
			public var links: RelationshipLinks?
			public var meta: PagingInformation?
			public var data: [Datum]?

			public struct Datum: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case gameCenterLeaderboardReleases
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

			public init(links: RelationshipLinks? = nil, meta: PagingInformation? = nil, data: [Datum]? = nil) {
				self.links = links
				self.meta = meta
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(RelationshipLinks.self, forKey: "links")
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

		public init(gameCenterDetail: GameCenterDetail? = nil, gameCenterGroup: GameCenterGroup? = nil, groupLeaderboard: GroupLeaderboard? = nil, gameCenterLeaderboardSets: GameCenterLeaderboardSets? = nil, localizations: Localizations? = nil, releases: Releases? = nil) {
			self.gameCenterDetail = gameCenterDetail
			self.gameCenterGroup = gameCenterGroup
			self.groupLeaderboard = groupLeaderboard
			self.gameCenterLeaderboardSets = gameCenterLeaderboardSets
			self.localizations = localizations
			self.releases = releases
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.gameCenterDetail = try values.decodeIfPresent(GameCenterDetail.self, forKey: "gameCenterDetail")
			self.gameCenterGroup = try values.decodeIfPresent(GameCenterGroup.self, forKey: "gameCenterGroup")
			self.groupLeaderboard = try values.decodeIfPresent(GroupLeaderboard.self, forKey: "groupLeaderboard")
			self.gameCenterLeaderboardSets = try values.decodeIfPresent(GameCenterLeaderboardSets.self, forKey: "gameCenterLeaderboardSets")
			self.localizations = try values.decodeIfPresent(Localizations.self, forKey: "localizations")
			self.releases = try values.decodeIfPresent(Releases.self, forKey: "releases")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(gameCenterDetail, forKey: "gameCenterDetail")
			try values.encodeIfPresent(gameCenterGroup, forKey: "gameCenterGroup")
			try values.encodeIfPresent(groupLeaderboard, forKey: "groupLeaderboard")
			try values.encodeIfPresent(gameCenterLeaderboardSets, forKey: "gameCenterLeaderboardSets")
			try values.encodeIfPresent(localizations, forKey: "localizations")
			try values.encodeIfPresent(releases, forKey: "releases")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
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
		self.links = try values.decodeIfPresent(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encodeIfPresent(relationships, forKey: "relationships")
		try values.encodeIfPresent(links, forKey: "links")
	}
}
