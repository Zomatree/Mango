// This file was auto-generated using maticzav/swift-graphql. DO NOT EDIT MANUALLY!
import Foundation
import GraphQL
import SwiftGraphQL

// MARK: - Operations
public enum Operations {}
extension Objects.Query: GraphQLHttpOperation {
  public static var operation: GraphQLOperationKind { .query }
}
extension Objects.Mutation: GraphQLHttpOperation {
  public static var operation: GraphQLOperationKind { .mutation }
}

// MARK: - Objects
public enum Objects {}
extension Objects {
  public struct Query {}
}

extension Fields where TypeLock == Objects.Query {

  public func page<T>(
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.Page?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "Page",
      parent: "Query",
      type: "Page",
      arguments: [
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Media query

  public func media<T>(
    id: OptionalArgument<Int> = .init(), idMal: OptionalArgument<Int> = .init(),
    startDate: OptionalArgument<AnyCodable> = .init(),
    endDate: OptionalArgument<AnyCodable> = .init(),
    season: OptionalArgument<Enums.MediaSeason> = .init(),
    seasonYear: OptionalArgument<Int> = .init(), type: OptionalArgument<Enums.MediaType> = .init(),
    format: OptionalArgument<Enums.MediaFormat> = .init(),
    status: OptionalArgument<Enums.MediaStatus> = .init(),
    episodes: OptionalArgument<Int> = .init(), duration: OptionalArgument<Int> = .init(),
    chapters: OptionalArgument<Int> = .init(), volumes: OptionalArgument<Int> = .init(),
    isAdult: OptionalArgument<Bool> = .init(), genre: OptionalArgument<String> = .init(),
    tag: OptionalArgument<String> = .init(), minimumTagRank: OptionalArgument<Int> = .init(),
    tagCategory: OptionalArgument<String> = .init(), onList: OptionalArgument<Bool> = .init(),
    licensedBy: OptionalArgument<String> = .init(), licensedById: OptionalArgument<Int> = .init(),
    averageScore: OptionalArgument<Int> = .init(), popularity: OptionalArgument<Int> = .init(),
    source: OptionalArgument<Enums.MediaSource> = .init(),
    countryOfOrigin: OptionalArgument<AnyCodable> = .init(),
    isLicensed: OptionalArgument<Bool> = .init(), search: OptionalArgument<String> = .init(),
    idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idMalNot: OptionalArgument<Int> = .init(),
    idMalIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idMalNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    startDateGreater: OptionalArgument<AnyCodable> = .init(),
    startDateLesser: OptionalArgument<AnyCodable> = .init(),
    startDateLike: OptionalArgument<String> = .init(),
    endDateGreater: OptionalArgument<AnyCodable> = .init(),
    endDateLesser: OptionalArgument<AnyCodable> = .init(),
    endDateLike: OptionalArgument<String> = .init(),
    formatIn: OptionalArgument<[OptionalArgument<Enums.MediaFormat>]> = .init(),
    formatNot: OptionalArgument<Enums.MediaFormat> = .init(),
    formatNotIn: OptionalArgument<[OptionalArgument<Enums.MediaFormat>]> = .init(),
    statusIn: OptionalArgument<[OptionalArgument<Enums.MediaStatus>]> = .init(),
    statusNot: OptionalArgument<Enums.MediaStatus> = .init(),
    statusNotIn: OptionalArgument<[OptionalArgument<Enums.MediaStatus>]> = .init(),
    episodesGreater: OptionalArgument<Int> = .init(),
    episodesLesser: OptionalArgument<Int> = .init(),
    durationGreater: OptionalArgument<Int> = .init(),
    durationLesser: OptionalArgument<Int> = .init(),
    chaptersGreater: OptionalArgument<Int> = .init(),
    chaptersLesser: OptionalArgument<Int> = .init(),
    volumesGreater: OptionalArgument<Int> = .init(), volumesLesser: OptionalArgument<Int> = .init(),
    genreIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    genreNotIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagNotIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagCategoryIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagCategoryNotIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    licensedByIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    licensedByIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    averageScoreNot: OptionalArgument<Int> = .init(),
    averageScoreGreater: OptionalArgument<Int> = .init(),
    averageScoreLesser: OptionalArgument<Int> = .init(),
    popularityNot: OptionalArgument<Int> = .init(),
    popularityGreater: OptionalArgument<Int> = .init(),
    popularityLesser: OptionalArgument<Int> = .init(),
    sourceIn: OptionalArgument<[OptionalArgument<Enums.MediaSource>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.MediaSort>]> = .init(),
    selection: Selection<T, Objects.Media?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "Media",
      parent: "Query",
      type: "Media",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "idMal", type: "Int", value: idMal),
        Argument(name: "startDate", type: "FuzzyDateInt", value: startDate),
        Argument(name: "endDate", type: "FuzzyDateInt", value: endDate),
        Argument(name: "season", type: "MediaSeason", value: season),
        Argument(name: "seasonYear", type: "Int", value: seasonYear),
        Argument(name: "type", type: "MediaType", value: type),
        Argument(name: "format", type: "MediaFormat", value: format),
        Argument(name: "status", type: "MediaStatus", value: status),
        Argument(name: "episodes", type: "Int", value: episodes),
        Argument(name: "duration", type: "Int", value: duration),
        Argument(name: "chapters", type: "Int", value: chapters),
        Argument(name: "volumes", type: "Int", value: volumes),
        Argument(name: "isAdult", type: "Boolean", value: isAdult),
        Argument(name: "genre", type: "String", value: genre),
        Argument(name: "tag", type: "String", value: tag),
        Argument(name: "minimumTagRank", type: "Int", value: minimumTagRank),
        Argument(name: "tagCategory", type: "String", value: tagCategory),
        Argument(name: "onList", type: "Boolean", value: onList),
        Argument(name: "licensedBy", type: "String", value: licensedBy),
        Argument(name: "licensedById", type: "Int", value: licensedById),
        Argument(name: "averageScore", type: "Int", value: averageScore),
        Argument(name: "popularity", type: "Int", value: popularity),
        Argument(name: "source", type: "MediaSource", value: source),
        Argument(name: "countryOfOrigin", type: "CountryCode", value: countryOfOrigin),
        Argument(name: "isLicensed", type: "Boolean", value: isLicensed),
        Argument(name: "search", type: "String", value: search),
        Argument(name: "id_not", type: "Int", value: idNot),
        Argument(name: "id_in", type: "[Int]", value: idIn),
        Argument(name: "id_not_in", type: "[Int]", value: idNotIn),
        Argument(name: "idMal_not", type: "Int", value: idMalNot),
        Argument(name: "idMal_in", type: "[Int]", value: idMalIn),
        Argument(name: "idMal_not_in", type: "[Int]", value: idMalNotIn),
        Argument(name: "startDate_greater", type: "FuzzyDateInt", value: startDateGreater),
        Argument(name: "startDate_lesser", type: "FuzzyDateInt", value: startDateLesser),
        Argument(name: "startDate_like", type: "String", value: startDateLike),
        Argument(name: "endDate_greater", type: "FuzzyDateInt", value: endDateGreater),
        Argument(name: "endDate_lesser", type: "FuzzyDateInt", value: endDateLesser),
        Argument(name: "endDate_like", type: "String", value: endDateLike),
        Argument(name: "format_in", type: "[MediaFormat]", value: formatIn),
        Argument(name: "format_not", type: "MediaFormat", value: formatNot),
        Argument(name: "format_not_in", type: "[MediaFormat]", value: formatNotIn),
        Argument(name: "status_in", type: "[MediaStatus]", value: statusIn),
        Argument(name: "status_not", type: "MediaStatus", value: statusNot),
        Argument(name: "status_not_in", type: "[MediaStatus]", value: statusNotIn),
        Argument(name: "episodes_greater", type: "Int", value: episodesGreater),
        Argument(name: "episodes_lesser", type: "Int", value: episodesLesser),
        Argument(name: "duration_greater", type: "Int", value: durationGreater),
        Argument(name: "duration_lesser", type: "Int", value: durationLesser),
        Argument(name: "chapters_greater", type: "Int", value: chaptersGreater),
        Argument(name: "chapters_lesser", type: "Int", value: chaptersLesser),
        Argument(name: "volumes_greater", type: "Int", value: volumesGreater),
        Argument(name: "volumes_lesser", type: "Int", value: volumesLesser),
        Argument(name: "genre_in", type: "[String]", value: genreIn),
        Argument(name: "genre_not_in", type: "[String]", value: genreNotIn),
        Argument(name: "tag_in", type: "[String]", value: tagIn),
        Argument(name: "tag_not_in", type: "[String]", value: tagNotIn),
        Argument(name: "tagCategory_in", type: "[String]", value: tagCategoryIn),
        Argument(name: "tagCategory_not_in", type: "[String]", value: tagCategoryNotIn),
        Argument(name: "licensedBy_in", type: "[String]", value: licensedByIn),
        Argument(name: "licensedById_in", type: "[Int]", value: licensedByIdIn),
        Argument(name: "averageScore_not", type: "Int", value: averageScoreNot),
        Argument(name: "averageScore_greater", type: "Int", value: averageScoreGreater),
        Argument(name: "averageScore_lesser", type: "Int", value: averageScoreLesser),
        Argument(name: "popularity_not", type: "Int", value: popularityNot),
        Argument(name: "popularity_greater", type: "Int", value: popularityGreater),
        Argument(name: "popularity_lesser", type: "Int", value: popularityLesser),
        Argument(name: "source_in", type: "[MediaSource]", value: sourceIn),
        Argument(name: "sort", type: "[MediaSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Media Trend query

  public func mediaTrend<T>(
    mediaId: OptionalArgument<Int> = .init(), date: OptionalArgument<Int> = .init(),
    trending: OptionalArgument<Int> = .init(), averageScore: OptionalArgument<Int> = .init(),
    popularity: OptionalArgument<Int> = .init(), episode: OptionalArgument<Int> = .init(),
    releasing: OptionalArgument<Bool> = .init(), mediaIdNot: OptionalArgument<Int> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    dateGreater: OptionalArgument<Int> = .init(), dateLesser: OptionalArgument<Int> = .init(),
    trendingGreater: OptionalArgument<Int> = .init(),
    trendingLesser: OptionalArgument<Int> = .init(), trendingNot: OptionalArgument<Int> = .init(),
    averageScoreGreater: OptionalArgument<Int> = .init(),
    averageScoreLesser: OptionalArgument<Int> = .init(),
    averageScoreNot: OptionalArgument<Int> = .init(),
    popularityGreater: OptionalArgument<Int> = .init(),
    popularityLesser: OptionalArgument<Int> = .init(),
    popularityNot: OptionalArgument<Int> = .init(), episodeGreater: OptionalArgument<Int> = .init(),
    episodeLesser: OptionalArgument<Int> = .init(), episodeNot: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.MediaTrendSort>]> = .init(),
    selection: Selection<T, Objects.MediaTrend?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "MediaTrend",
      parent: "Query",
      type: "MediaTrend",
      arguments: [
        Argument(name: "mediaId", type: "Int", value: mediaId),
        Argument(name: "date", type: "Int", value: date),
        Argument(name: "trending", type: "Int", value: trending),
        Argument(name: "averageScore", type: "Int", value: averageScore),
        Argument(name: "popularity", type: "Int", value: popularity),
        Argument(name: "episode", type: "Int", value: episode),
        Argument(name: "releasing", type: "Boolean", value: releasing),
        Argument(name: "mediaId_not", type: "Int", value: mediaIdNot),
        Argument(name: "mediaId_in", type: "[Int]", value: mediaIdIn),
        Argument(name: "mediaId_not_in", type: "[Int]", value: mediaIdNotIn),
        Argument(name: "date_greater", type: "Int", value: dateGreater),
        Argument(name: "date_lesser", type: "Int", value: dateLesser),
        Argument(name: "trending_greater", type: "Int", value: trendingGreater),
        Argument(name: "trending_lesser", type: "Int", value: trendingLesser),
        Argument(name: "trending_not", type: "Int", value: trendingNot),
        Argument(name: "averageScore_greater", type: "Int", value: averageScoreGreater),
        Argument(name: "averageScore_lesser", type: "Int", value: averageScoreLesser),
        Argument(name: "averageScore_not", type: "Int", value: averageScoreNot),
        Argument(name: "popularity_greater", type: "Int", value: popularityGreater),
        Argument(name: "popularity_lesser", type: "Int", value: popularityLesser),
        Argument(name: "popularity_not", type: "Int", value: popularityNot),
        Argument(name: "episode_greater", type: "Int", value: episodeGreater),
        Argument(name: "episode_lesser", type: "Int", value: episodeLesser),
        Argument(name: "episode_not", type: "Int", value: episodeNot),
        Argument(name: "sort", type: "[MediaTrendSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Airing schedule query

  public func airingSchedule<T>(
    id: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    episode: OptionalArgument<Int> = .init(), airingAt: OptionalArgument<Int> = .init(),
    notYetAired: OptionalArgument<Bool> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNot: OptionalArgument<Int> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    episodeNot: OptionalArgument<Int> = .init(),
    episodeIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    episodeNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    episodeGreater: OptionalArgument<Int> = .init(), episodeLesser: OptionalArgument<Int> = .init(),
    airingAtGreater: OptionalArgument<Int> = .init(),
    airingAtLesser: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.AiringSort>]> = .init(),
    selection: Selection<T, Objects.AiringSchedule?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "AiringSchedule",
      parent: "Query",
      type: "AiringSchedule",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "mediaId", type: "Int", value: mediaId),
        Argument(name: "episode", type: "Int", value: episode),
        Argument(name: "airingAt", type: "Int", value: airingAt),
        Argument(name: "notYetAired", type: "Boolean", value: notYetAired),
        Argument(name: "id_not", type: "Int", value: idNot),
        Argument(name: "id_in", type: "[Int]", value: idIn),
        Argument(name: "id_not_in", type: "[Int]", value: idNotIn),
        Argument(name: "mediaId_not", type: "Int", value: mediaIdNot),
        Argument(name: "mediaId_in", type: "[Int]", value: mediaIdIn),
        Argument(name: "mediaId_not_in", type: "[Int]", value: mediaIdNotIn),
        Argument(name: "episode_not", type: "Int", value: episodeNot),
        Argument(name: "episode_in", type: "[Int]", value: episodeIn),
        Argument(name: "episode_not_in", type: "[Int]", value: episodeNotIn),
        Argument(name: "episode_greater", type: "Int", value: episodeGreater),
        Argument(name: "episode_lesser", type: "Int", value: episodeLesser),
        Argument(name: "airingAt_greater", type: "Int", value: airingAtGreater),
        Argument(name: "airingAt_lesser", type: "Int", value: airingAtLesser),
        Argument(name: "sort", type: "[AiringSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Character query

  public func character<T>(
    id: OptionalArgument<Int> = .init(), isBirthday: OptionalArgument<Bool> = .init(),
    search: OptionalArgument<String> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.CharacterSort>]> = .init(),
    selection: Selection<T, Objects.Character?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "Character",
      parent: "Query",
      type: "Character",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "isBirthday", type: "Boolean", value: isBirthday),
        Argument(name: "search", type: "String", value: search),
        Argument(name: "id_not", type: "Int", value: idNot),
        Argument(name: "id_in", type: "[Int]", value: idIn),
        Argument(name: "id_not_in", type: "[Int]", value: idNotIn),
        Argument(name: "sort", type: "[CharacterSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Staff query

  public func staff<T>(
    id: OptionalArgument<Int> = .init(), isBirthday: OptionalArgument<Bool> = .init(),
    search: OptionalArgument<String> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.StaffSort>]> = .init(),
    selection: Selection<T, Objects.Staff?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "Staff",
      parent: "Query",
      type: "Staff",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "isBirthday", type: "Boolean", value: isBirthday),
        Argument(name: "search", type: "String", value: search),
        Argument(name: "id_not", type: "Int", value: idNot),
        Argument(name: "id_in", type: "[Int]", value: idIn),
        Argument(name: "id_not_in", type: "[Int]", value: idNotIn),
        Argument(name: "sort", type: "[StaffSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Media list query

  public func mediaList<T>(
    id: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    userName: OptionalArgument<String> = .init(), type: OptionalArgument<Enums.MediaType> = .init(),
    status: OptionalArgument<Enums.MediaListStatus> = .init(),
    mediaId: OptionalArgument<Int> = .init(), isFollowing: OptionalArgument<Bool> = .init(),
    notes: OptionalArgument<String> = .init(), startedAt: OptionalArgument<AnyCodable> = .init(),
    completedAt: OptionalArgument<AnyCodable> = .init(),
    compareWithAuthList: OptionalArgument<Bool> = .init(),
    userIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    statusIn: OptionalArgument<[OptionalArgument<Enums.MediaListStatus>]> = .init(),
    statusNotIn: OptionalArgument<[OptionalArgument<Enums.MediaListStatus>]> = .init(),
    statusNot: OptionalArgument<Enums.MediaListStatus> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    notesLike: OptionalArgument<String> = .init(),
    startedAtGreater: OptionalArgument<AnyCodable> = .init(),
    startedAtLesser: OptionalArgument<AnyCodable> = .init(),
    startedAtLike: OptionalArgument<String> = .init(),
    completedAtGreater: OptionalArgument<AnyCodable> = .init(),
    completedAtLesser: OptionalArgument<AnyCodable> = .init(),
    completedAtLike: OptionalArgument<String> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.MediaListSort>]> = .init(),
    selection: Selection<T, Objects.MediaList?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "MediaList",
      parent: "Query",
      type: "MediaList",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "userName", type: "String", value: userName),
        Argument(name: "type", type: "MediaType", value: type),
        Argument(name: "status", type: "MediaListStatus", value: status),
        Argument(name: "mediaId", type: "Int", value: mediaId),
        Argument(name: "isFollowing", type: "Boolean", value: isFollowing),
        Argument(name: "notes", type: "String", value: notes),
        Argument(name: "startedAt", type: "FuzzyDateInt", value: startedAt),
        Argument(name: "completedAt", type: "FuzzyDateInt", value: completedAt),
        Argument(name: "compareWithAuthList", type: "Boolean", value: compareWithAuthList),
        Argument(name: "userId_in", type: "[Int]", value: userIdIn),
        Argument(name: "status_in", type: "[MediaListStatus]", value: statusIn),
        Argument(name: "status_not_in", type: "[MediaListStatus]", value: statusNotIn),
        Argument(name: "status_not", type: "MediaListStatus", value: statusNot),
        Argument(name: "mediaId_in", type: "[Int]", value: mediaIdIn),
        Argument(name: "mediaId_not_in", type: "[Int]", value: mediaIdNotIn),
        Argument(name: "notes_like", type: "String", value: notesLike),
        Argument(name: "startedAt_greater", type: "FuzzyDateInt", value: startedAtGreater),
        Argument(name: "startedAt_lesser", type: "FuzzyDateInt", value: startedAtLesser),
        Argument(name: "startedAt_like", type: "String", value: startedAtLike),
        Argument(name: "completedAt_greater", type: "FuzzyDateInt", value: completedAtGreater),
        Argument(name: "completedAt_lesser", type: "FuzzyDateInt", value: completedAtLesser),
        Argument(name: "completedAt_like", type: "String", value: completedAtLike),
        Argument(name: "sort", type: "[MediaListSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Media list collection query, provides list pre-grouped by status & custom lists. User ID and Media Type arguments required.

  public func mediaListCollection<T>(
    userId: OptionalArgument<Int> = .init(), userName: OptionalArgument<String> = .init(),
    type: OptionalArgument<Enums.MediaType> = .init(),
    status: OptionalArgument<Enums.MediaListStatus> = .init(),
    notes: OptionalArgument<String> = .init(), startedAt: OptionalArgument<AnyCodable> = .init(),
    completedAt: OptionalArgument<AnyCodable> = .init(),
    forceSingleCompletedList: OptionalArgument<Bool> = .init(),
    chunk: OptionalArgument<Int> = .init(), perChunk: OptionalArgument<Int> = .init(),
    statusIn: OptionalArgument<[OptionalArgument<Enums.MediaListStatus>]> = .init(),
    statusNotIn: OptionalArgument<[OptionalArgument<Enums.MediaListStatus>]> = .init(),
    statusNot: OptionalArgument<Enums.MediaListStatus> = .init(),
    notesLike: OptionalArgument<String> = .init(),
    startedAtGreater: OptionalArgument<AnyCodable> = .init(),
    startedAtLesser: OptionalArgument<AnyCodable> = .init(),
    startedAtLike: OptionalArgument<String> = .init(),
    completedAtGreater: OptionalArgument<AnyCodable> = .init(),
    completedAtLesser: OptionalArgument<AnyCodable> = .init(),
    completedAtLike: OptionalArgument<String> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.MediaListSort>]> = .init(),
    selection: Selection<T, Objects.MediaListCollection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "MediaListCollection",
      parent: "Query",
      type: "MediaListCollection",
      arguments: [
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "userName", type: "String", value: userName),
        Argument(name: "type", type: "MediaType", value: type),
        Argument(name: "status", type: "MediaListStatus", value: status),
        Argument(name: "notes", type: "String", value: notes),
        Argument(name: "startedAt", type: "FuzzyDateInt", value: startedAt),
        Argument(name: "completedAt", type: "FuzzyDateInt", value: completedAt),
        Argument(
          name: "forceSingleCompletedList", type: "Boolean", value: forceSingleCompletedList),
        Argument(name: "chunk", type: "Int", value: chunk),
        Argument(name: "perChunk", type: "Int", value: perChunk),
        Argument(name: "status_in", type: "[MediaListStatus]", value: statusIn),
        Argument(name: "status_not_in", type: "[MediaListStatus]", value: statusNotIn),
        Argument(name: "status_not", type: "MediaListStatus", value: statusNot),
        Argument(name: "notes_like", type: "String", value: notesLike),
        Argument(name: "startedAt_greater", type: "FuzzyDateInt", value: startedAtGreater),
        Argument(name: "startedAt_lesser", type: "FuzzyDateInt", value: startedAtLesser),
        Argument(name: "startedAt_like", type: "String", value: startedAtLike),
        Argument(name: "completedAt_greater", type: "FuzzyDateInt", value: completedAtGreater),
        Argument(name: "completedAt_lesser", type: "FuzzyDateInt", value: completedAtLesser),
        Argument(name: "completedAt_like", type: "String", value: completedAtLike),
        Argument(name: "sort", type: "[MediaListSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Collection of all the possible media genres

  public func genreCollection() throws -> [String?]? {
    let field = GraphQLField.leaf(
      field: "GenreCollection",
      parent: "Query",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [String?]?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Collection of all the possible media tags

  public func mediaTagCollection<T>(
    status: OptionalArgument<Int> = .init(), selection: Selection<T, [Objects.MediaTag?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "MediaTagCollection",
      parent: "Query",
      type: "MediaTag",
      arguments: [Argument(name: "status", type: "Int", value: status)],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// User query

  public func user<T>(
    id: OptionalArgument<Int> = .init(), name: OptionalArgument<String> = .init(),
    isModerator: OptionalArgument<Bool> = .init(), search: OptionalArgument<String> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserSort>]> = .init(),
    selection: Selection<T, Objects.User?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "User",
      parent: "Query",
      type: "User",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "name", type: "String", value: name),
        Argument(name: "isModerator", type: "Boolean", value: isModerator),
        Argument(name: "search", type: "String", value: search),
        Argument(name: "sort", type: "[UserSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Get the currently authenticated user

  public func viewer<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "Viewer",
      parent: "Query",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Notification query

  public func notification<T>(
    type: OptionalArgument<Enums.NotificationType> = .init(),
    resetNotificationCount: OptionalArgument<Bool> = .init(),
    typeIn: OptionalArgument<[OptionalArgument<Enums.NotificationType>]> = .init(),
    selection: Selection<T, Unions.NotificationUnion?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "Notification",
      parent: "Query",
      type: "NotificationUnion",
      arguments: [
        Argument(name: "type", type: "NotificationType", value: type),
        Argument(name: "resetNotificationCount", type: "Boolean", value: resetNotificationCount),
        Argument(name: "type_in", type: "[NotificationType]", value: typeIn),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Studio query

  public func studio<T>(
    id: OptionalArgument<Int> = .init(), search: OptionalArgument<String> = .init(),
    idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.StudioSort>]> = .init(),
    selection: Selection<T, Objects.Studio?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "Studio",
      parent: "Query",
      type: "Studio",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "search", type: "String", value: search),
        Argument(name: "id_not", type: "Int", value: idNot),
        Argument(name: "id_in", type: "[Int]", value: idIn),
        Argument(name: "id_not_in", type: "[Int]", value: idNotIn),
        Argument(name: "sort", type: "[StudioSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Review query

  public func review<T>(
    id: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    userId: OptionalArgument<Int> = .init(), mediaType: OptionalArgument<Enums.MediaType> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ReviewSort>]> = .init(),
    selection: Selection<T, Objects.Review?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "Review",
      parent: "Query",
      type: "Review",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "mediaId", type: "Int", value: mediaId),
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "mediaType", type: "MediaType", value: mediaType),
        Argument(name: "sort", type: "[ReviewSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Activity query

  public func activity<T>(
    id: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    messengerId: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    type: OptionalArgument<Enums.ActivityType> = .init(),
    isFollowing: OptionalArgument<Bool> = .init(), hasReplies: OptionalArgument<Bool> = .init(),
    hasRepliesOrTypeText: OptionalArgument<Bool> = .init(),
    createdAt: OptionalArgument<Int> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    userIdNot: OptionalArgument<Int> = .init(),
    userIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    userIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    messengerIdNot: OptionalArgument<Int> = .init(),
    messengerIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    messengerIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNot: OptionalArgument<Int> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    typeNot: OptionalArgument<Enums.ActivityType> = .init(),
    typeIn: OptionalArgument<[OptionalArgument<Enums.ActivityType>]> = .init(),
    typeNotIn: OptionalArgument<[OptionalArgument<Enums.ActivityType>]> = .init(),
    createdAtGreater: OptionalArgument<Int> = .init(),
    createdAtLesser: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ActivitySort>]> = .init(),
    selection: Selection<T, Unions.ActivityUnion?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "Activity",
      parent: "Query",
      type: "ActivityUnion",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "messengerId", type: "Int", value: messengerId),
        Argument(name: "mediaId", type: "Int", value: mediaId),
        Argument(name: "type", type: "ActivityType", value: type),
        Argument(name: "isFollowing", type: "Boolean", value: isFollowing),
        Argument(name: "hasReplies", type: "Boolean", value: hasReplies),
        Argument(name: "hasRepliesOrTypeText", type: "Boolean", value: hasRepliesOrTypeText),
        Argument(name: "createdAt", type: "Int", value: createdAt),
        Argument(name: "id_not", type: "Int", value: idNot),
        Argument(name: "id_in", type: "[Int]", value: idIn),
        Argument(name: "id_not_in", type: "[Int]", value: idNotIn),
        Argument(name: "userId_not", type: "Int", value: userIdNot),
        Argument(name: "userId_in", type: "[Int]", value: userIdIn),
        Argument(name: "userId_not_in", type: "[Int]", value: userIdNotIn),
        Argument(name: "messengerId_not", type: "Int", value: messengerIdNot),
        Argument(name: "messengerId_in", type: "[Int]", value: messengerIdIn),
        Argument(name: "messengerId_not_in", type: "[Int]", value: messengerIdNotIn),
        Argument(name: "mediaId_not", type: "Int", value: mediaIdNot),
        Argument(name: "mediaId_in", type: "[Int]", value: mediaIdIn),
        Argument(name: "mediaId_not_in", type: "[Int]", value: mediaIdNotIn),
        Argument(name: "type_not", type: "ActivityType", value: typeNot),
        Argument(name: "type_in", type: "[ActivityType]", value: typeIn),
        Argument(name: "type_not_in", type: "[ActivityType]", value: typeNotIn),
        Argument(name: "createdAt_greater", type: "Int", value: createdAtGreater),
        Argument(name: "createdAt_lesser", type: "Int", value: createdAtLesser),
        Argument(name: "sort", type: "[ActivitySort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Activity reply query

  public func activityReply<T>(
    id: OptionalArgument<Int> = .init(), activityId: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.ActivityReply?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "ActivityReply",
      parent: "Query",
      type: "ActivityReply",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "activityId", type: "Int", value: activityId),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Follow query

  public func following<T>(
    userId: Int, sort: OptionalArgument<[OptionalArgument<Enums.UserSort>]> = .init(),
    selection: Selection<T, Objects.User?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "Following",
      parent: "Query",
      type: "User",
      arguments: [
        Argument(name: "userId", type: "Int!", value: userId),
        Argument(name: "sort", type: "[UserSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Follow query

  public func follower<T>(
    userId: Int, sort: OptionalArgument<[OptionalArgument<Enums.UserSort>]> = .init(),
    selection: Selection<T, Objects.User?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "Follower",
      parent: "Query",
      type: "User",
      arguments: [
        Argument(name: "userId", type: "Int!", value: userId),
        Argument(name: "sort", type: "[UserSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Thread query

  public func thread<T>(
    id: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    replyUserId: OptionalArgument<Int> = .init(), subscribed: OptionalArgument<Bool> = .init(),
    categoryId: OptionalArgument<Int> = .init(), mediaCategoryId: OptionalArgument<Int> = .init(),
    search: OptionalArgument<String> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ThreadSort>]> = .init(),
    selection: Selection<T, Objects.Thread?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "Thread",
      parent: "Query",
      type: "Thread",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "replyUserId", type: "Int", value: replyUserId),
        Argument(name: "subscribed", type: "Boolean", value: subscribed),
        Argument(name: "categoryId", type: "Int", value: categoryId),
        Argument(name: "mediaCategoryId", type: "Int", value: mediaCategoryId),
        Argument(name: "search", type: "String", value: search),
        Argument(name: "id_in", type: "[Int]", value: idIn),
        Argument(name: "sort", type: "[ThreadSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Comment query

  public func threadComment<T>(
    id: OptionalArgument<Int> = .init(), threadId: OptionalArgument<Int> = .init(),
    userId: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ThreadCommentSort>]> = .init(),
    selection: Selection<T, [Objects.ThreadComment?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "ThreadComment",
      parent: "Query",
      type: "ThreadComment",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "threadId", type: "Int", value: threadId),
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "sort", type: "[ThreadCommentSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Recommendation query

  public func recommendation<T>(
    id: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    mediaRecommendationId: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    rating: OptionalArgument<Int> = .init(), onList: OptionalArgument<Bool> = .init(),
    ratingGreater: OptionalArgument<Int> = .init(), ratingLesser: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.RecommendationSort>]> = .init(),
    selection: Selection<T, Objects.Recommendation?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "Recommendation",
      parent: "Query",
      type: "Recommendation",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "mediaId", type: "Int", value: mediaId),
        Argument(name: "mediaRecommendationId", type: "Int", value: mediaRecommendationId),
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "rating", type: "Int", value: rating),
        Argument(name: "onList", type: "Boolean", value: onList),
        Argument(name: "rating_greater", type: "Int", value: ratingGreater),
        Argument(name: "rating_lesser", type: "Int", value: ratingLesser),
        Argument(name: "sort", type: "[RecommendationSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Like query

  public func like<T>(
    likeableId: OptionalArgument<Int> = .init(),
    type: OptionalArgument<Enums.LikeableType> = .init(), selection: Selection<T, Objects.User?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "Like",
      parent: "Query",
      type: "User",
      arguments: [
        Argument(name: "likeableId", type: "Int", value: likeableId),
        Argument(name: "type", type: "LikeableType", value: type),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Provide AniList markdown to be converted to html (Requires auth)

  public func markdown<T>(markdown: String, selection: Selection<T, Objects.ParsedMarkdown?>) throws
    -> T
  {
    let field = GraphQLField.composite(
      field: "Markdown",
      parent: "Query",
      type: "ParsedMarkdown",
      arguments: [Argument(name: "markdown", type: "String!", value: markdown)],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func aniChartUser<T>(selection: Selection<T, Objects.AniChartUser?>) throws -> T {
    let field = GraphQLField.composite(
      field: "AniChartUser",
      parent: "Query",
      type: "AniChartUser",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Site statistics query

  public func siteStatistics<T>(selection: Selection<T, Objects.SiteStatistics?>) throws -> T {
    let field = GraphQLField.composite(
      field: "SiteStatistics",
      parent: "Query",
      type: "SiteStatistics",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// ExternalLinkSource collection query

  public func externalLinkSourceCollection<T>(
    id: OptionalArgument<Int> = .init(), type: OptionalArgument<Enums.ExternalLinkType> = .init(),
    mediaType: OptionalArgument<Enums.ExternalLinkMediaType> = .init(),
    selection: Selection<T, [Objects.MediaExternalLink?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "ExternalLinkSourceCollection",
      parent: "Query",
      type: "MediaExternalLink",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "type", type: "ExternalLinkType", value: type),
        Argument(name: "mediaType", type: "ExternalLinkMediaType", value: mediaType),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias Query<W> = Selection<W, Objects.Query>
}
extension Objects {
  public struct Page {}
}

extension Fields where TypeLock == Objects.Page {
  /// The pagination information

  public func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) throws -> T {
    let field = GraphQLField.composite(
      field: "pageInfo",
      parent: "Page",
      type: "PageInfo",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func users<T>(
    id: OptionalArgument<Int> = .init(), name: OptionalArgument<String> = .init(),
    isModerator: OptionalArgument<Bool> = .init(), search: OptionalArgument<String> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserSort>]> = .init(),
    selection: Selection<T, [Objects.User?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "users",
      parent: "Page",
      type: "User",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "name", type: "String", value: name),
        Argument(name: "isModerator", type: "Boolean", value: isModerator),
        Argument(name: "search", type: "String", value: search),
        Argument(name: "sort", type: "[UserSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func media<T>(
    id: OptionalArgument<Int> = .init(), idMal: OptionalArgument<Int> = .init(),
    startDate: OptionalArgument<AnyCodable> = .init(),
    endDate: OptionalArgument<AnyCodable> = .init(),
    season: OptionalArgument<Enums.MediaSeason> = .init(),
    seasonYear: OptionalArgument<Int> = .init(), type: OptionalArgument<Enums.MediaType> = .init(),
    format: OptionalArgument<Enums.MediaFormat> = .init(),
    status: OptionalArgument<Enums.MediaStatus> = .init(),
    episodes: OptionalArgument<Int> = .init(), duration: OptionalArgument<Int> = .init(),
    chapters: OptionalArgument<Int> = .init(), volumes: OptionalArgument<Int> = .init(),
    isAdult: OptionalArgument<Bool> = .init(), genre: OptionalArgument<String> = .init(),
    tag: OptionalArgument<String> = .init(), minimumTagRank: OptionalArgument<Int> = .init(),
    tagCategory: OptionalArgument<String> = .init(), onList: OptionalArgument<Bool> = .init(),
    licensedBy: OptionalArgument<String> = .init(), licensedById: OptionalArgument<Int> = .init(),
    averageScore: OptionalArgument<Int> = .init(), popularity: OptionalArgument<Int> = .init(),
    source: OptionalArgument<Enums.MediaSource> = .init(),
    countryOfOrigin: OptionalArgument<AnyCodable> = .init(),
    isLicensed: OptionalArgument<Bool> = .init(), search: OptionalArgument<String> = .init(),
    idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idMalNot: OptionalArgument<Int> = .init(),
    idMalIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idMalNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    startDateGreater: OptionalArgument<AnyCodable> = .init(),
    startDateLesser: OptionalArgument<AnyCodable> = .init(),
    startDateLike: OptionalArgument<String> = .init(),
    endDateGreater: OptionalArgument<AnyCodable> = .init(),
    endDateLesser: OptionalArgument<AnyCodable> = .init(),
    endDateLike: OptionalArgument<String> = .init(),
    formatIn: OptionalArgument<[OptionalArgument<Enums.MediaFormat>]> = .init(),
    formatNot: OptionalArgument<Enums.MediaFormat> = .init(),
    formatNotIn: OptionalArgument<[OptionalArgument<Enums.MediaFormat>]> = .init(),
    statusIn: OptionalArgument<[OptionalArgument<Enums.MediaStatus>]> = .init(),
    statusNot: OptionalArgument<Enums.MediaStatus> = .init(),
    statusNotIn: OptionalArgument<[OptionalArgument<Enums.MediaStatus>]> = .init(),
    episodesGreater: OptionalArgument<Int> = .init(),
    episodesLesser: OptionalArgument<Int> = .init(),
    durationGreater: OptionalArgument<Int> = .init(),
    durationLesser: OptionalArgument<Int> = .init(),
    chaptersGreater: OptionalArgument<Int> = .init(),
    chaptersLesser: OptionalArgument<Int> = .init(),
    volumesGreater: OptionalArgument<Int> = .init(), volumesLesser: OptionalArgument<Int> = .init(),
    genreIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    genreNotIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagNotIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagCategoryIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagCategoryNotIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    licensedByIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    licensedByIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    averageScoreNot: OptionalArgument<Int> = .init(),
    averageScoreGreater: OptionalArgument<Int> = .init(),
    averageScoreLesser: OptionalArgument<Int> = .init(),
    popularityNot: OptionalArgument<Int> = .init(),
    popularityGreater: OptionalArgument<Int> = .init(),
    popularityLesser: OptionalArgument<Int> = .init(),
    sourceIn: OptionalArgument<[OptionalArgument<Enums.MediaSource>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.MediaSort>]> = .init(),
    selection: Selection<T, [Objects.Media?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "media",
      parent: "Page",
      type: "Media",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "idMal", type: "Int", value: idMal),
        Argument(name: "startDate", type: "FuzzyDateInt", value: startDate),
        Argument(name: "endDate", type: "FuzzyDateInt", value: endDate),
        Argument(name: "season", type: "MediaSeason", value: season),
        Argument(name: "seasonYear", type: "Int", value: seasonYear),
        Argument(name: "type", type: "MediaType", value: type),
        Argument(name: "format", type: "MediaFormat", value: format),
        Argument(name: "status", type: "MediaStatus", value: status),
        Argument(name: "episodes", type: "Int", value: episodes),
        Argument(name: "duration", type: "Int", value: duration),
        Argument(name: "chapters", type: "Int", value: chapters),
        Argument(name: "volumes", type: "Int", value: volumes),
        Argument(name: "isAdult", type: "Boolean", value: isAdult),
        Argument(name: "genre", type: "String", value: genre),
        Argument(name: "tag", type: "String", value: tag),
        Argument(name: "minimumTagRank", type: "Int", value: minimumTagRank),
        Argument(name: "tagCategory", type: "String", value: tagCategory),
        Argument(name: "onList", type: "Boolean", value: onList),
        Argument(name: "licensedBy", type: "String", value: licensedBy),
        Argument(name: "licensedById", type: "Int", value: licensedById),
        Argument(name: "averageScore", type: "Int", value: averageScore),
        Argument(name: "popularity", type: "Int", value: popularity),
        Argument(name: "source", type: "MediaSource", value: source),
        Argument(name: "countryOfOrigin", type: "CountryCode", value: countryOfOrigin),
        Argument(name: "isLicensed", type: "Boolean", value: isLicensed),
        Argument(name: "search", type: "String", value: search),
        Argument(name: "id_not", type: "Int", value: idNot),
        Argument(name: "id_in", type: "[Int]", value: idIn),
        Argument(name: "id_not_in", type: "[Int]", value: idNotIn),
        Argument(name: "idMal_not", type: "Int", value: idMalNot),
        Argument(name: "idMal_in", type: "[Int]", value: idMalIn),
        Argument(name: "idMal_not_in", type: "[Int]", value: idMalNotIn),
        Argument(name: "startDate_greater", type: "FuzzyDateInt", value: startDateGreater),
        Argument(name: "startDate_lesser", type: "FuzzyDateInt", value: startDateLesser),
        Argument(name: "startDate_like", type: "String", value: startDateLike),
        Argument(name: "endDate_greater", type: "FuzzyDateInt", value: endDateGreater),
        Argument(name: "endDate_lesser", type: "FuzzyDateInt", value: endDateLesser),
        Argument(name: "endDate_like", type: "String", value: endDateLike),
        Argument(name: "format_in", type: "[MediaFormat]", value: formatIn),
        Argument(name: "format_not", type: "MediaFormat", value: formatNot),
        Argument(name: "format_not_in", type: "[MediaFormat]", value: formatNotIn),
        Argument(name: "status_in", type: "[MediaStatus]", value: statusIn),
        Argument(name: "status_not", type: "MediaStatus", value: statusNot),
        Argument(name: "status_not_in", type: "[MediaStatus]", value: statusNotIn),
        Argument(name: "episodes_greater", type: "Int", value: episodesGreater),
        Argument(name: "episodes_lesser", type: "Int", value: episodesLesser),
        Argument(name: "duration_greater", type: "Int", value: durationGreater),
        Argument(name: "duration_lesser", type: "Int", value: durationLesser),
        Argument(name: "chapters_greater", type: "Int", value: chaptersGreater),
        Argument(name: "chapters_lesser", type: "Int", value: chaptersLesser),
        Argument(name: "volumes_greater", type: "Int", value: volumesGreater),
        Argument(name: "volumes_lesser", type: "Int", value: volumesLesser),
        Argument(name: "genre_in", type: "[String]", value: genreIn),
        Argument(name: "genre_not_in", type: "[String]", value: genreNotIn),
        Argument(name: "tag_in", type: "[String]", value: tagIn),
        Argument(name: "tag_not_in", type: "[String]", value: tagNotIn),
        Argument(name: "tagCategory_in", type: "[String]", value: tagCategoryIn),
        Argument(name: "tagCategory_not_in", type: "[String]", value: tagCategoryNotIn),
        Argument(name: "licensedBy_in", type: "[String]", value: licensedByIn),
        Argument(name: "licensedById_in", type: "[Int]", value: licensedByIdIn),
        Argument(name: "averageScore_not", type: "Int", value: averageScoreNot),
        Argument(name: "averageScore_greater", type: "Int", value: averageScoreGreater),
        Argument(name: "averageScore_lesser", type: "Int", value: averageScoreLesser),
        Argument(name: "popularity_not", type: "Int", value: popularityNot),
        Argument(name: "popularity_greater", type: "Int", value: popularityGreater),
        Argument(name: "popularity_lesser", type: "Int", value: popularityLesser),
        Argument(name: "source_in", type: "[MediaSource]", value: sourceIn),
        Argument(name: "sort", type: "[MediaSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func characters<T>(
    id: OptionalArgument<Int> = .init(), isBirthday: OptionalArgument<Bool> = .init(),
    search: OptionalArgument<String> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.CharacterSort>]> = .init(),
    selection: Selection<T, [Objects.Character?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "characters",
      parent: "Page",
      type: "Character",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "isBirthday", type: "Boolean", value: isBirthday),
        Argument(name: "search", type: "String", value: search),
        Argument(name: "id_not", type: "Int", value: idNot),
        Argument(name: "id_in", type: "[Int]", value: idIn),
        Argument(name: "id_not_in", type: "[Int]", value: idNotIn),
        Argument(name: "sort", type: "[CharacterSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func staff<T>(
    id: OptionalArgument<Int> = .init(), isBirthday: OptionalArgument<Bool> = .init(),
    search: OptionalArgument<String> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.StaffSort>]> = .init(),
    selection: Selection<T, [Objects.Staff?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "staff",
      parent: "Page",
      type: "Staff",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "isBirthday", type: "Boolean", value: isBirthday),
        Argument(name: "search", type: "String", value: search),
        Argument(name: "id_not", type: "Int", value: idNot),
        Argument(name: "id_in", type: "[Int]", value: idIn),
        Argument(name: "id_not_in", type: "[Int]", value: idNotIn),
        Argument(name: "sort", type: "[StaffSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func studios<T>(
    id: OptionalArgument<Int> = .init(), search: OptionalArgument<String> = .init(),
    idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.StudioSort>]> = .init(),
    selection: Selection<T, [Objects.Studio?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "studios",
      parent: "Page",
      type: "Studio",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "search", type: "String", value: search),
        Argument(name: "id_not", type: "Int", value: idNot),
        Argument(name: "id_in", type: "[Int]", value: idIn),
        Argument(name: "id_not_in", type: "[Int]", value: idNotIn),
        Argument(name: "sort", type: "[StudioSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func mediaList<T>(
    id: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    userName: OptionalArgument<String> = .init(), type: OptionalArgument<Enums.MediaType> = .init(),
    status: OptionalArgument<Enums.MediaListStatus> = .init(),
    mediaId: OptionalArgument<Int> = .init(), isFollowing: OptionalArgument<Bool> = .init(),
    notes: OptionalArgument<String> = .init(), startedAt: OptionalArgument<AnyCodable> = .init(),
    completedAt: OptionalArgument<AnyCodable> = .init(),
    compareWithAuthList: OptionalArgument<Bool> = .init(),
    userIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    statusIn: OptionalArgument<[OptionalArgument<Enums.MediaListStatus>]> = .init(),
    statusNotIn: OptionalArgument<[OptionalArgument<Enums.MediaListStatus>]> = .init(),
    statusNot: OptionalArgument<Enums.MediaListStatus> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    notesLike: OptionalArgument<String> = .init(),
    startedAtGreater: OptionalArgument<AnyCodable> = .init(),
    startedAtLesser: OptionalArgument<AnyCodable> = .init(),
    startedAtLike: OptionalArgument<String> = .init(),
    completedAtGreater: OptionalArgument<AnyCodable> = .init(),
    completedAtLesser: OptionalArgument<AnyCodable> = .init(),
    completedAtLike: OptionalArgument<String> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.MediaListSort>]> = .init(),
    selection: Selection<T, [Objects.MediaList?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "mediaList",
      parent: "Page",
      type: "MediaList",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "userName", type: "String", value: userName),
        Argument(name: "type", type: "MediaType", value: type),
        Argument(name: "status", type: "MediaListStatus", value: status),
        Argument(name: "mediaId", type: "Int", value: mediaId),
        Argument(name: "isFollowing", type: "Boolean", value: isFollowing),
        Argument(name: "notes", type: "String", value: notes),
        Argument(name: "startedAt", type: "FuzzyDateInt", value: startedAt),
        Argument(name: "completedAt", type: "FuzzyDateInt", value: completedAt),
        Argument(name: "compareWithAuthList", type: "Boolean", value: compareWithAuthList),
        Argument(name: "userId_in", type: "[Int]", value: userIdIn),
        Argument(name: "status_in", type: "[MediaListStatus]", value: statusIn),
        Argument(name: "status_not_in", type: "[MediaListStatus]", value: statusNotIn),
        Argument(name: "status_not", type: "MediaListStatus", value: statusNot),
        Argument(name: "mediaId_in", type: "[Int]", value: mediaIdIn),
        Argument(name: "mediaId_not_in", type: "[Int]", value: mediaIdNotIn),
        Argument(name: "notes_like", type: "String", value: notesLike),
        Argument(name: "startedAt_greater", type: "FuzzyDateInt", value: startedAtGreater),
        Argument(name: "startedAt_lesser", type: "FuzzyDateInt", value: startedAtLesser),
        Argument(name: "startedAt_like", type: "String", value: startedAtLike),
        Argument(name: "completedAt_greater", type: "FuzzyDateInt", value: completedAtGreater),
        Argument(name: "completedAt_lesser", type: "FuzzyDateInt", value: completedAtLesser),
        Argument(name: "completedAt_like", type: "String", value: completedAtLike),
        Argument(name: "sort", type: "[MediaListSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func airingSchedules<T>(
    id: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    episode: OptionalArgument<Int> = .init(), airingAt: OptionalArgument<Int> = .init(),
    notYetAired: OptionalArgument<Bool> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNot: OptionalArgument<Int> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    episodeNot: OptionalArgument<Int> = .init(),
    episodeIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    episodeNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    episodeGreater: OptionalArgument<Int> = .init(), episodeLesser: OptionalArgument<Int> = .init(),
    airingAtGreater: OptionalArgument<Int> = .init(),
    airingAtLesser: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.AiringSort>]> = .init(),
    selection: Selection<T, [Objects.AiringSchedule?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "airingSchedules",
      parent: "Page",
      type: "AiringSchedule",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "mediaId", type: "Int", value: mediaId),
        Argument(name: "episode", type: "Int", value: episode),
        Argument(name: "airingAt", type: "Int", value: airingAt),
        Argument(name: "notYetAired", type: "Boolean", value: notYetAired),
        Argument(name: "id_not", type: "Int", value: idNot),
        Argument(name: "id_in", type: "[Int]", value: idIn),
        Argument(name: "id_not_in", type: "[Int]", value: idNotIn),
        Argument(name: "mediaId_not", type: "Int", value: mediaIdNot),
        Argument(name: "mediaId_in", type: "[Int]", value: mediaIdIn),
        Argument(name: "mediaId_not_in", type: "[Int]", value: mediaIdNotIn),
        Argument(name: "episode_not", type: "Int", value: episodeNot),
        Argument(name: "episode_in", type: "[Int]", value: episodeIn),
        Argument(name: "episode_not_in", type: "[Int]", value: episodeNotIn),
        Argument(name: "episode_greater", type: "Int", value: episodeGreater),
        Argument(name: "episode_lesser", type: "Int", value: episodeLesser),
        Argument(name: "airingAt_greater", type: "Int", value: airingAtGreater),
        Argument(name: "airingAt_lesser", type: "Int", value: airingAtLesser),
        Argument(name: "sort", type: "[AiringSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func mediaTrends<T>(
    mediaId: OptionalArgument<Int> = .init(), date: OptionalArgument<Int> = .init(),
    trending: OptionalArgument<Int> = .init(), averageScore: OptionalArgument<Int> = .init(),
    popularity: OptionalArgument<Int> = .init(), episode: OptionalArgument<Int> = .init(),
    releasing: OptionalArgument<Bool> = .init(), mediaIdNot: OptionalArgument<Int> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    dateGreater: OptionalArgument<Int> = .init(), dateLesser: OptionalArgument<Int> = .init(),
    trendingGreater: OptionalArgument<Int> = .init(),
    trendingLesser: OptionalArgument<Int> = .init(), trendingNot: OptionalArgument<Int> = .init(),
    averageScoreGreater: OptionalArgument<Int> = .init(),
    averageScoreLesser: OptionalArgument<Int> = .init(),
    averageScoreNot: OptionalArgument<Int> = .init(),
    popularityGreater: OptionalArgument<Int> = .init(),
    popularityLesser: OptionalArgument<Int> = .init(),
    popularityNot: OptionalArgument<Int> = .init(), episodeGreater: OptionalArgument<Int> = .init(),
    episodeLesser: OptionalArgument<Int> = .init(), episodeNot: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.MediaTrendSort>]> = .init(),
    selection: Selection<T, [Objects.MediaTrend?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "mediaTrends",
      parent: "Page",
      type: "MediaTrend",
      arguments: [
        Argument(name: "mediaId", type: "Int", value: mediaId),
        Argument(name: "date", type: "Int", value: date),
        Argument(name: "trending", type: "Int", value: trending),
        Argument(name: "averageScore", type: "Int", value: averageScore),
        Argument(name: "popularity", type: "Int", value: popularity),
        Argument(name: "episode", type: "Int", value: episode),
        Argument(name: "releasing", type: "Boolean", value: releasing),
        Argument(name: "mediaId_not", type: "Int", value: mediaIdNot),
        Argument(name: "mediaId_in", type: "[Int]", value: mediaIdIn),
        Argument(name: "mediaId_not_in", type: "[Int]", value: mediaIdNotIn),
        Argument(name: "date_greater", type: "Int", value: dateGreater),
        Argument(name: "date_lesser", type: "Int", value: dateLesser),
        Argument(name: "trending_greater", type: "Int", value: trendingGreater),
        Argument(name: "trending_lesser", type: "Int", value: trendingLesser),
        Argument(name: "trending_not", type: "Int", value: trendingNot),
        Argument(name: "averageScore_greater", type: "Int", value: averageScoreGreater),
        Argument(name: "averageScore_lesser", type: "Int", value: averageScoreLesser),
        Argument(name: "averageScore_not", type: "Int", value: averageScoreNot),
        Argument(name: "popularity_greater", type: "Int", value: popularityGreater),
        Argument(name: "popularity_lesser", type: "Int", value: popularityLesser),
        Argument(name: "popularity_not", type: "Int", value: popularityNot),
        Argument(name: "episode_greater", type: "Int", value: episodeGreater),
        Argument(name: "episode_lesser", type: "Int", value: episodeLesser),
        Argument(name: "episode_not", type: "Int", value: episodeNot),
        Argument(name: "sort", type: "[MediaTrendSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func notifications<T>(
    type: OptionalArgument<Enums.NotificationType> = .init(),
    resetNotificationCount: OptionalArgument<Bool> = .init(),
    typeIn: OptionalArgument<[OptionalArgument<Enums.NotificationType>]> = .init(),
    selection: Selection<T, [Unions.NotificationUnion?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "notifications",
      parent: "Page",
      type: "NotificationUnion",
      arguments: [
        Argument(name: "type", type: "NotificationType", value: type),
        Argument(name: "resetNotificationCount", type: "Boolean", value: resetNotificationCount),
        Argument(name: "type_in", type: "[NotificationType]", value: typeIn),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func followers<T>(
    userId: Int, sort: OptionalArgument<[OptionalArgument<Enums.UserSort>]> = .init(),
    selection: Selection<T, [Objects.User?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "followers",
      parent: "Page",
      type: "User",
      arguments: [
        Argument(name: "userId", type: "Int!", value: userId),
        Argument(name: "sort", type: "[UserSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func following<T>(
    userId: Int, sort: OptionalArgument<[OptionalArgument<Enums.UserSort>]> = .init(),
    selection: Selection<T, [Objects.User?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "following",
      parent: "Page",
      type: "User",
      arguments: [
        Argument(name: "userId", type: "Int!", value: userId),
        Argument(name: "sort", type: "[UserSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func activities<T>(
    id: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    messengerId: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    type: OptionalArgument<Enums.ActivityType> = .init(),
    isFollowing: OptionalArgument<Bool> = .init(), hasReplies: OptionalArgument<Bool> = .init(),
    hasRepliesOrTypeText: OptionalArgument<Bool> = .init(),
    createdAt: OptionalArgument<Int> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    userIdNot: OptionalArgument<Int> = .init(),
    userIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    userIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    messengerIdNot: OptionalArgument<Int> = .init(),
    messengerIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    messengerIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNot: OptionalArgument<Int> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    typeNot: OptionalArgument<Enums.ActivityType> = .init(),
    typeIn: OptionalArgument<[OptionalArgument<Enums.ActivityType>]> = .init(),
    typeNotIn: OptionalArgument<[OptionalArgument<Enums.ActivityType>]> = .init(),
    createdAtGreater: OptionalArgument<Int> = .init(),
    createdAtLesser: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ActivitySort>]> = .init(),
    selection: Selection<T, [Unions.ActivityUnion?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "activities",
      parent: "Page",
      type: "ActivityUnion",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "messengerId", type: "Int", value: messengerId),
        Argument(name: "mediaId", type: "Int", value: mediaId),
        Argument(name: "type", type: "ActivityType", value: type),
        Argument(name: "isFollowing", type: "Boolean", value: isFollowing),
        Argument(name: "hasReplies", type: "Boolean", value: hasReplies),
        Argument(name: "hasRepliesOrTypeText", type: "Boolean", value: hasRepliesOrTypeText),
        Argument(name: "createdAt", type: "Int", value: createdAt),
        Argument(name: "id_not", type: "Int", value: idNot),
        Argument(name: "id_in", type: "[Int]", value: idIn),
        Argument(name: "id_not_in", type: "[Int]", value: idNotIn),
        Argument(name: "userId_not", type: "Int", value: userIdNot),
        Argument(name: "userId_in", type: "[Int]", value: userIdIn),
        Argument(name: "userId_not_in", type: "[Int]", value: userIdNotIn),
        Argument(name: "messengerId_not", type: "Int", value: messengerIdNot),
        Argument(name: "messengerId_in", type: "[Int]", value: messengerIdIn),
        Argument(name: "messengerId_not_in", type: "[Int]", value: messengerIdNotIn),
        Argument(name: "mediaId_not", type: "Int", value: mediaIdNot),
        Argument(name: "mediaId_in", type: "[Int]", value: mediaIdIn),
        Argument(name: "mediaId_not_in", type: "[Int]", value: mediaIdNotIn),
        Argument(name: "type_not", type: "ActivityType", value: typeNot),
        Argument(name: "type_in", type: "[ActivityType]", value: typeIn),
        Argument(name: "type_not_in", type: "[ActivityType]", value: typeNotIn),
        Argument(name: "createdAt_greater", type: "Int", value: createdAtGreater),
        Argument(name: "createdAt_lesser", type: "Int", value: createdAtLesser),
        Argument(name: "sort", type: "[ActivitySort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func activityReplies<T>(
    id: OptionalArgument<Int> = .init(), activityId: OptionalArgument<Int> = .init(),
    selection: Selection<T, [Objects.ActivityReply?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "activityReplies",
      parent: "Page",
      type: "ActivityReply",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "activityId", type: "Int", value: activityId),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func threads<T>(
    id: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    replyUserId: OptionalArgument<Int> = .init(), subscribed: OptionalArgument<Bool> = .init(),
    categoryId: OptionalArgument<Int> = .init(), mediaCategoryId: OptionalArgument<Int> = .init(),
    search: OptionalArgument<String> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ThreadSort>]> = .init(),
    selection: Selection<T, [Objects.Thread?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "threads",
      parent: "Page",
      type: "Thread",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "replyUserId", type: "Int", value: replyUserId),
        Argument(name: "subscribed", type: "Boolean", value: subscribed),
        Argument(name: "categoryId", type: "Int", value: categoryId),
        Argument(name: "mediaCategoryId", type: "Int", value: mediaCategoryId),
        Argument(name: "search", type: "String", value: search),
        Argument(name: "id_in", type: "[Int]", value: idIn),
        Argument(name: "sort", type: "[ThreadSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func threadComments<T>(
    id: OptionalArgument<Int> = .init(), threadId: OptionalArgument<Int> = .init(),
    userId: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ThreadCommentSort>]> = .init(),
    selection: Selection<T, [Objects.ThreadComment?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "threadComments",
      parent: "Page",
      type: "ThreadComment",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "threadId", type: "Int", value: threadId),
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "sort", type: "[ThreadCommentSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func reviews<T>(
    id: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    userId: OptionalArgument<Int> = .init(), mediaType: OptionalArgument<Enums.MediaType> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ReviewSort>]> = .init(),
    selection: Selection<T, [Objects.Review?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "reviews",
      parent: "Page",
      type: "Review",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "mediaId", type: "Int", value: mediaId),
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "mediaType", type: "MediaType", value: mediaType),
        Argument(name: "sort", type: "[ReviewSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func recommendations<T>(
    id: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    mediaRecommendationId: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    rating: OptionalArgument<Int> = .init(), onList: OptionalArgument<Bool> = .init(),
    ratingGreater: OptionalArgument<Int> = .init(), ratingLesser: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.RecommendationSort>]> = .init(),
    selection: Selection<T, [Objects.Recommendation?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "recommendations",
      parent: "Page",
      type: "Recommendation",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "mediaId", type: "Int", value: mediaId),
        Argument(name: "mediaRecommendationId", type: "Int", value: mediaRecommendationId),
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "rating", type: "Int", value: rating),
        Argument(name: "onList", type: "Boolean", value: onList),
        Argument(name: "rating_greater", type: "Int", value: ratingGreater),
        Argument(name: "rating_lesser", type: "Int", value: ratingLesser),
        Argument(name: "sort", type: "[RecommendationSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func likes<T>(
    likeableId: OptionalArgument<Int> = .init(),
    type: OptionalArgument<Enums.LikeableType> = .init(), selection: Selection<T, [Objects.User?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "likes",
      parent: "Page",
      type: "User",
      arguments: [
        Argument(name: "likeableId", type: "Int", value: likeableId),
        Argument(name: "type", type: "LikeableType", value: type),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias Page<W> = Selection<W, Objects.Page>
}
extension Objects {
  public struct PageInfo {}
}

extension Fields where TypeLock == Objects.PageInfo {
  /// The total number of items. Note: This value is not guaranteed to be accurate, do not rely on this for logic

  public func total() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "total",
      parent: "PageInfo",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The count on a page

  public func perPage() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "perPage",
      parent: "PageInfo",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The current page

  public func currentPage() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "currentPage",
      parent: "PageInfo",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The last page

  public func lastPage() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "lastPage",
      parent: "PageInfo",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If there is another page

  public func hasNextPage() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "hasNextPage",
      parent: "PageInfo",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias PageInfo<W> = Selection<W, Objects.PageInfo>
}
extension Objects {
  public struct User {}
}

extension Fields where TypeLock == Objects.User {
  /// The id of the user

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "User",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The name of the user

  public func name() throws -> String {
    let field = GraphQLField.leaf(
      field: "name",
      parent: "User",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String(from: $0) }
    case .selecting:
      return String.mockValue
    }
  }
  /// The bio written by user (Markdown)

  public func about(asHtml: OptionalArgument<Bool> = .init()) throws -> String? {
    let field = GraphQLField.leaf(
      field: "about",
      parent: "User",
      arguments: [Argument(name: "asHtml", type: "Boolean", value: asHtml)]
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The user's avatar images

  public func avatar<T>(selection: Selection<T, Objects.UserAvatar?>) throws -> T {
    let field = GraphQLField.composite(
      field: "avatar",
      parent: "User",
      type: "UserAvatar",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The user's banner images

  public func bannerImage() throws -> String? {
    let field = GraphQLField.leaf(
      field: "bannerImage",
      parent: "User",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the authenticated user if following this user

  public func isFollowing() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isFollowing",
      parent: "User",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If this user if following the authenticated user

  public func isFollower() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isFollower",
      parent: "User",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the user is blocked by the authenticated user

  public func isBlocked() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isBlocked",
      parent: "User",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func bans() throws -> AnyCodable? {
    let field = GraphQLField.leaf(
      field: "bans",
      parent: "User",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try AnyCodable?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The user's general options

  public func options<T>(selection: Selection<T, Objects.UserOptions?>) throws -> T {
    let field = GraphQLField.composite(
      field: "options",
      parent: "User",
      type: "UserOptions",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The user's media list options

  public func mediaListOptions<T>(selection: Selection<T, Objects.MediaListOptions?>) throws -> T {
    let field = GraphQLField.composite(
      field: "mediaListOptions",
      parent: "User",
      type: "MediaListOptions",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The users favourites

  public func favourites<T>(
    page: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.Favourites?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "favourites",
      parent: "User",
      type: "Favourites",
      arguments: [Argument(name: "page", type: "Int", value: page)],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The users anime & manga list statistics

  public func statistics<T>(selection: Selection<T, Objects.UserStatisticTypes?>) throws -> T {
    let field = GraphQLField.composite(
      field: "statistics",
      parent: "User",
      type: "UserStatisticTypes",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The number of unread notifications the user has

  public func unreadNotificationCount() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "unreadNotificationCount",
      parent: "User",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The url for the user page on the AniList website

  public func siteUrl() throws -> String? {
    let field = GraphQLField.leaf(
      field: "siteUrl",
      parent: "User",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The donation tier of the user

  public func donatorTier() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "donatorTier",
      parent: "User",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Custom donation badge text

  public func donatorBadge() throws -> String? {
    let field = GraphQLField.leaf(
      field: "donatorBadge",
      parent: "User",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The user's moderator roles if they are a site moderator

  public func moderatorRoles() throws -> [Enums.ModRole?]? {
    let field = GraphQLField.leaf(
      field: "moderatorRoles",
      parent: "User",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [Enums.ModRole?]?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// When the user's account was created. (Does not exist for accounts created before 2020)

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "User",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// When the user's data was last updated

  public func updatedAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "updatedAt",
      parent: "User",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The user's statistics
  @available(*, deprecated, message: "Deprecated. Replaced with statistics field.")
  public func stats<T>(selection: Selection<T, Objects.UserStats?>) throws -> T {
    let field = GraphQLField.composite(
      field: "stats",
      parent: "User",
      type: "UserStats",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// If the user is a moderator or data moderator
  @available(*, deprecated, message: "Deprecated. Replaced with moderatorRoles field.")
  public func moderatorStatus() throws -> String? {
    let field = GraphQLField.leaf(
      field: "moderatorStatus",
      parent: "User",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The user's previously used names.

  public func previousNames<T>(selection: Selection<T, [Objects.UserPreviousName?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "previousNames",
      parent: "User",
      type: "UserPreviousName",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias User<W> = Selection<W, Objects.User>
}
extension Objects {
  public struct UserAvatar {}
}

extension Fields where TypeLock == Objects.UserAvatar {
  /// The avatar of user at its largest size

  public func large() throws -> String? {
    let field = GraphQLField.leaf(
      field: "large",
      parent: "UserAvatar",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The avatar of user at medium size

  public func medium() throws -> String? {
    let field = GraphQLField.leaf(
      field: "medium",
      parent: "UserAvatar",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias UserAvatar<W> = Selection<W, Objects.UserAvatar>
}
extension Objects {
  public struct UserOptions {}
}

extension Fields where TypeLock == Objects.UserOptions {
  /// The language the user wants to see media titles in

  public func titleLanguage() throws -> Enums.UserTitleLanguage? {
    let field = GraphQLField.leaf(
      field: "titleLanguage",
      parent: "UserOptions",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.UserTitleLanguage?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Whether the user has enabled viewing of 18+ content

  public func displayAdultContent() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "displayAdultContent",
      parent: "UserOptions",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Whether the user receives notifications when a show they are watching aires

  public func airingNotifications() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "airingNotifications",
      parent: "UserOptions",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Profile highlight color (blue, purple, pink, orange, red, green, gray)

  public func profileColor() throws -> String? {
    let field = GraphQLField.leaf(
      field: "profileColor",
      parent: "UserOptions",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Notification options

  public func notificationOptions<T>(selection: Selection<T, [Objects.NotificationOption?]?>) throws
    -> T
  {
    let field = GraphQLField.composite(
      field: "notificationOptions",
      parent: "UserOptions",
      type: "NotificationOption",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The user's timezone offset (Auth user only)

  public func timezone() throws -> String? {
    let field = GraphQLField.leaf(
      field: "timezone",
      parent: "UserOptions",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Minutes between activity for them to be merged together. 0 is Never, Above 2 weeks (20160 mins) is Always.

  public func activityMergeTime() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "activityMergeTime",
      parent: "UserOptions",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The language the user wants to see staff and character names in

  public func staffNameLanguage() throws -> Enums.UserStaffNameLanguage? {
    let field = GraphQLField.leaf(
      field: "staffNameLanguage",
      parent: "UserOptions",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.UserStaffNameLanguage?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Whether the user only allow messages from users they follow

  public func restrictMessagesToFollowing() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "restrictMessagesToFollowing",
      parent: "UserOptions",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The list activity types the user has disabled from being created from list updates

  public func disabledListActivity<T>(selection: Selection<T, [Objects.ListActivityOption?]?>)
    throws -> T
  {
    let field = GraphQLField.composite(
      field: "disabledListActivity",
      parent: "UserOptions",
      type: "ListActivityOption",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias UserOptions<W> = Selection<W, Objects.UserOptions>
}
extension Objects {
  public struct NotificationOption {}
}

extension Fields where TypeLock == Objects.NotificationOption {
  /// The type of notification

  public func type() throws -> Enums.NotificationType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "NotificationOption",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.NotificationType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Whether this type of notification is enabled

  public func enabled() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "enabled",
      parent: "NotificationOption",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias NotificationOption<W> = Selection<W, Objects.NotificationOption>
}
extension Objects {
  public struct ListActivityOption {}
}

extension Fields where TypeLock == Objects.ListActivityOption {

  public func disabled() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "disabled",
      parent: "ListActivityOption",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func type() throws -> Enums.MediaListStatus? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "ListActivityOption",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.MediaListStatus?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias ListActivityOption<W> = Selection<W, Objects.ListActivityOption>
}
extension Objects {
  public struct MediaListOptions {}
}

extension Fields where TypeLock == Objects.MediaListOptions {
  /// The score format the user is using for media lists

  public func scoreFormat() throws -> Enums.ScoreFormat? {
    let field = GraphQLField.leaf(
      field: "scoreFormat",
      parent: "MediaListOptions",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.ScoreFormat?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The default order list rows should be displayed in

  public func rowOrder() throws -> String? {
    let field = GraphQLField.leaf(
      field: "rowOrder",
      parent: "MediaListOptions",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }

  @available(*, deprecated, message: "No longer used")
  public func useLegacyLists() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "useLegacyLists",
      parent: "MediaListOptions",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The user's anime list options

  public func animeList<T>(selection: Selection<T, Objects.MediaListTypeOptions?>) throws -> T {
    let field = GraphQLField.composite(
      field: "animeList",
      parent: "MediaListOptions",
      type: "MediaListTypeOptions",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The user's manga list options

  public func mangaList<T>(selection: Selection<T, Objects.MediaListTypeOptions?>) throws -> T {
    let field = GraphQLField.composite(
      field: "mangaList",
      parent: "MediaListOptions",
      type: "MediaListTypeOptions",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The list theme options for both lists
  @available(*, deprecated, message: "No longer used")
  public func sharedTheme() throws -> AnyCodable? {
    let field = GraphQLField.leaf(
      field: "sharedTheme",
      parent: "MediaListOptions",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try AnyCodable?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the shared theme should be used instead of the individual list themes
  @available(*, deprecated, message: "No longer used")
  public func sharedThemeEnabled() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "sharedThemeEnabled",
      parent: "MediaListOptions",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaListOptions<W> = Selection<W, Objects.MediaListOptions>
}
extension Objects {
  public struct MediaListTypeOptions {}
}

extension Fields where TypeLock == Objects.MediaListTypeOptions {
  /// The order each list should be displayed in

  public func sectionOrder() throws -> [String?]? {
    let field = GraphQLField.leaf(
      field: "sectionOrder",
      parent: "MediaListTypeOptions",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [String?]?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the completed sections of the list should be separated by format

  public func splitCompletedSectionByFormat() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "splitCompletedSectionByFormat",
      parent: "MediaListTypeOptions",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The list theme options
  @available(
    *, deprecated,
    message: "This field has not yet been fully implemented and may change without warning"
  )
  public func theme() throws -> AnyCodable? {
    let field = GraphQLField.leaf(
      field: "theme",
      parent: "MediaListTypeOptions",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try AnyCodable?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The names of the user's custom lists

  public func customLists() throws -> [String?]? {
    let field = GraphQLField.leaf(
      field: "customLists",
      parent: "MediaListTypeOptions",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [String?]?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The names of the user's advanced scoring sections

  public func advancedScoring() throws -> [String?]? {
    let field = GraphQLField.leaf(
      field: "advancedScoring",
      parent: "MediaListTypeOptions",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [String?]?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If advanced scoring is enabled

  public func advancedScoringEnabled() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "advancedScoringEnabled",
      parent: "MediaListTypeOptions",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaListTypeOptions<W> = Selection<W, Objects.MediaListTypeOptions>
}
extension Objects {
  public struct Favourites {}
}

extension Fields where TypeLock == Objects.Favourites {
  /// Favourite anime

  public func anime<T>(
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.MediaConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "anime",
      parent: "Favourites",
      type: "MediaConnection",
      arguments: [
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Favourite manga

  public func manga<T>(
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.MediaConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "manga",
      parent: "Favourites",
      type: "MediaConnection",
      arguments: [
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Favourite characters

  public func characters<T>(
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.CharacterConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "characters",
      parent: "Favourites",
      type: "CharacterConnection",
      arguments: [
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Favourite staff

  public func staff<T>(
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.StaffConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "staff",
      parent: "Favourites",
      type: "StaffConnection",
      arguments: [
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Favourite studios

  public func studios<T>(
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.StudioConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "studios",
      parent: "Favourites",
      type: "StudioConnection",
      arguments: [
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias Favourites<W> = Selection<W, Objects.Favourites>
}
extension Objects {
  public struct MediaConnection {}
}

extension Fields where TypeLock == Objects.MediaConnection {

  public func edges<T>(selection: Selection<T, [Objects.MediaEdge?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "edges",
      parent: "MediaConnection",
      type: "MediaEdge",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func nodes<T>(selection: Selection<T, [Objects.Media?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "nodes",
      parent: "MediaConnection",
      type: "Media",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The pagination information

  public func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) throws -> T {
    let field = GraphQLField.composite(
      field: "pageInfo",
      parent: "MediaConnection",
      type: "PageInfo",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaConnection<W> = Selection<W, Objects.MediaConnection>
}
extension Objects {
  public struct MediaEdge {}
}

extension Fields where TypeLock == Objects.MediaEdge {

  public func node<T>(selection: Selection<T, Objects.Media?>) throws -> T {
    let field = GraphQLField.composite(
      field: "node",
      parent: "MediaEdge",
      type: "Media",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The id of the connection

  public func id() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "MediaEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The type of relation to the parent model

  public func relationType(version: OptionalArgument<Int> = .init()) throws -> Enums.MediaRelation?
  {
    let field = GraphQLField.leaf(
      field: "relationType",
      parent: "MediaEdge",
      arguments: [Argument(name: "version", type: "Int", value: version)]
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.MediaRelation?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the studio is the main animation studio of the media (For Studio->MediaConnection field only)

  public func isMainStudio() throws -> Bool {
    let field = GraphQLField.leaf(
      field: "isMainStudio",
      parent: "MediaEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool(from: $0) }
    case .selecting:
      return Bool.mockValue
    }
  }
  /// The characters in the media voiced by the parent actor

  public func characters<T>(selection: Selection<T, [Objects.Character?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "characters",
      parent: "MediaEdge",
      type: "Character",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The characters role in the media

  public func characterRole() throws -> Enums.CharacterRole? {
    let field = GraphQLField.leaf(
      field: "characterRole",
      parent: "MediaEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.CharacterRole?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Media specific character name

  public func characterName() throws -> String? {
    let field = GraphQLField.leaf(
      field: "characterName",
      parent: "MediaEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Notes regarding the VA's role for the character

  public func roleNotes() throws -> String? {
    let field = GraphQLField.leaf(
      field: "roleNotes",
      parent: "MediaEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Used for grouping roles where multiple dubs exist for the same language. Either dubbing company name or language variant.

  public func dubGroup() throws -> String? {
    let field = GraphQLField.leaf(
      field: "dubGroup",
      parent: "MediaEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The role of the staff member in the production of the media

  public func staffRole() throws -> String? {
    let field = GraphQLField.leaf(
      field: "staffRole",
      parent: "MediaEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The voice actors of the character

  public func voiceActors<T>(
    language: OptionalArgument<Enums.StaffLanguage> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.StaffSort>]> = .init(),
    selection: Selection<T, [Objects.Staff?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "voiceActors",
      parent: "MediaEdge",
      type: "Staff",
      arguments: [
        Argument(name: "language", type: "StaffLanguage", value: language),
        Argument(name: "sort", type: "[StaffSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The voice actors of the character with role date

  public func voiceActorRoles<T>(
    language: OptionalArgument<Enums.StaffLanguage> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.StaffSort>]> = .init(),
    selection: Selection<T, [Objects.StaffRoleType?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "voiceActorRoles",
      parent: "MediaEdge",
      type: "StaffRoleType",
      arguments: [
        Argument(name: "language", type: "StaffLanguage", value: language),
        Argument(name: "sort", type: "[StaffSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The order the media should be displayed from the users favourites

  public func favouriteOrder() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "favouriteOrder",
      parent: "MediaEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaEdge<W> = Selection<W, Objects.MediaEdge>
}
extension Objects {
  public struct Media {}
}

extension Fields where TypeLock == Objects.Media {
  /// The id of the media

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The mal id of the media

  public func idMal() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "idMal",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The official titles of the media in various languages

  public func title<T>(selection: Selection<T, Objects.MediaTitle?>) throws -> T {
    let field = GraphQLField.composite(
      field: "title",
      parent: "Media",
      type: "MediaTitle",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The type of the media; anime or manga

  public func type() throws -> Enums.MediaType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.MediaType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The format the media was released in

  public func format() throws -> Enums.MediaFormat? {
    let field = GraphQLField.leaf(
      field: "format",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.MediaFormat?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The current releasing status of the media

  public func status(version: OptionalArgument<Int> = .init()) throws -> Enums.MediaStatus? {
    let field = GraphQLField.leaf(
      field: "status",
      parent: "Media",
      arguments: [Argument(name: "version", type: "Int", value: version)]
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.MediaStatus?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Short description of the media's story and characters

  public func description(asHtml: OptionalArgument<Bool> = .init()) throws -> String? {
    let field = GraphQLField.leaf(
      field: "description",
      parent: "Media",
      arguments: [Argument(name: "asHtml", type: "Boolean", value: asHtml)]
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The first official release date of the media

  public func startDate<T>(selection: Selection<T, Objects.FuzzyDate?>) throws -> T {
    let field = GraphQLField.composite(
      field: "startDate",
      parent: "Media",
      type: "FuzzyDate",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The last official release date of the media

  public func endDate<T>(selection: Selection<T, Objects.FuzzyDate?>) throws -> T {
    let field = GraphQLField.composite(
      field: "endDate",
      parent: "Media",
      type: "FuzzyDate",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The season the media was initially released in

  public func season() throws -> Enums.MediaSeason? {
    let field = GraphQLField.leaf(
      field: "season",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.MediaSeason?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The season year the media was initially released in

  public func seasonYear() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "seasonYear",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The year & season the media was initially released in

  public func seasonInt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "seasonInt",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of episodes the anime has when complete

  public func episodes() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "episodes",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The general length of each anime episode in minutes

  public func duration() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "duration",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of chapters the manga has when complete

  public func chapters() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "chapters",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of volumes the manga has when complete

  public func volumes() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "volumes",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Where the media was created. (ISO 3166-1 alpha-2)

  public func countryOfOrigin() throws -> AnyCodable? {
    let field = GraphQLField.leaf(
      field: "countryOfOrigin",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try AnyCodable?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the media is officially licensed or a self-published doujin release

  public func isLicensed() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isLicensed",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Source type the media was adapted from.

  public func source(version: OptionalArgument<Int> = .init()) throws -> Enums.MediaSource? {
    let field = GraphQLField.leaf(
      field: "source",
      parent: "Media",
      arguments: [Argument(name: "version", type: "Int", value: version)]
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.MediaSource?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Official Twitter hashtags for the media

  public func hashtag() throws -> String? {
    let field = GraphQLField.leaf(
      field: "hashtag",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Media trailer or advertisement

  public func trailer<T>(selection: Selection<T, Objects.MediaTrailer?>) throws -> T {
    let field = GraphQLField.composite(
      field: "trailer",
      parent: "Media",
      type: "MediaTrailer",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// When the media's data was last updated

  public func updatedAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "updatedAt",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The cover images of the media

  public func coverImage<T>(selection: Selection<T, Objects.MediaCoverImage?>) throws -> T {
    let field = GraphQLField.composite(
      field: "coverImage",
      parent: "Media",
      type: "MediaCoverImage",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The banner image of the media

  public func bannerImage() throws -> String? {
    let field = GraphQLField.leaf(
      field: "bannerImage",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The genres of the media

  public func genres() throws -> [String?]? {
    let field = GraphQLField.leaf(
      field: "genres",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [String?]?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Alternative titles of the media

  public func synonyms() throws -> [String?]? {
    let field = GraphQLField.leaf(
      field: "synonyms",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [String?]?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// A weighted average score of all the user's scores of the media

  public func averageScore() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "averageScore",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Mean score of all the user's scores of the media

  public func meanScore() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "meanScore",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The number of users with the media on their list

  public func popularity() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "popularity",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Locked media may not be added to lists our favorited. This may be due to the entry pending for deletion or other reasons.

  public func isLocked() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isLocked",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of related activity in the past hour

  public func trending() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "trending",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of user's who have favourited the media

  public func favourites() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "favourites",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// List of tags that describes elements and themes of the media

  public func tags<T>(selection: Selection<T, [Objects.MediaTag?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "tags",
      parent: "Media",
      type: "MediaTag",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Other media in the same or connecting franchise

  public func relations<T>(selection: Selection<T, Objects.MediaConnection?>) throws -> T {
    let field = GraphQLField.composite(
      field: "relations",
      parent: "Media",
      type: "MediaConnection",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The characters in the media

  public func characters<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.CharacterSort>]> = .init(),
    role: OptionalArgument<Enums.CharacterRole> = .init(), page: OptionalArgument<Int> = .init(),
    perPage: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.CharacterConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "characters",
      parent: "Media",
      type: "CharacterConnection",
      arguments: [
        Argument(name: "sort", type: "[CharacterSort]", value: sort),
        Argument(name: "role", type: "CharacterRole", value: role),
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The staff who produced the media

  public func staff<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.StaffSort>]> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.StaffConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "staff",
      parent: "Media",
      type: "StaffConnection",
      arguments: [
        Argument(name: "sort", type: "[StaffSort]", value: sort),
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The companies who produced the media

  public func studios<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.StudioSort>]> = .init(),
    isMain: OptionalArgument<Bool> = .init(), selection: Selection<T, Objects.StudioConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "studios",
      parent: "Media",
      type: "StudioConnection",
      arguments: [
        Argument(name: "sort", type: "[StudioSort]", value: sort),
        Argument(name: "isMain", type: "Boolean", value: isMain),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// If the media is marked as favourite by the current authenticated user

  public func isFavourite() throws -> Bool {
    let field = GraphQLField.leaf(
      field: "isFavourite",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool(from: $0) }
    case .selecting:
      return Bool.mockValue
    }
  }
  /// If the media is blocked from being added to favourites

  public func isFavouriteBlocked() throws -> Bool {
    let field = GraphQLField.leaf(
      field: "isFavouriteBlocked",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool(from: $0) }
    case .selecting:
      return Bool.mockValue
    }
  }
  /// If the media is intended only for 18+ adult audiences

  public func isAdult() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isAdult",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The media's next episode airing schedule

  public func nextAiringEpisode<T>(selection: Selection<T, Objects.AiringSchedule?>) throws -> T {
    let field = GraphQLField.composite(
      field: "nextAiringEpisode",
      parent: "Media",
      type: "AiringSchedule",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The media's entire airing schedule

  public func airingSchedule<T>(
    notYetAired: OptionalArgument<Bool> = .init(), page: OptionalArgument<Int> = .init(),
    perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.AiringScheduleConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "airingSchedule",
      parent: "Media",
      type: "AiringScheduleConnection",
      arguments: [
        Argument(name: "notYetAired", type: "Boolean", value: notYetAired),
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The media's daily trend stats

  public func trends<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.MediaTrendSort>]> = .init(),
    releasing: OptionalArgument<Bool> = .init(), page: OptionalArgument<Int> = .init(),
    perPage: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.MediaTrendConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "trends",
      parent: "Media",
      type: "MediaTrendConnection",
      arguments: [
        Argument(name: "sort", type: "[MediaTrendSort]", value: sort),
        Argument(name: "releasing", type: "Boolean", value: releasing),
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// External links to another site related to the media

  public func externalLinks<T>(selection: Selection<T, [Objects.MediaExternalLink?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "externalLinks",
      parent: "Media",
      type: "MediaExternalLink",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Data and links to legal streaming episodes on external sites

  public func streamingEpisodes<T>(selection: Selection<T, [Objects.MediaStreamingEpisode?]?>)
    throws -> T
  {
    let field = GraphQLField.composite(
      field: "streamingEpisodes",
      parent: "Media",
      type: "MediaStreamingEpisode",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The ranking of the media in a particular time span and format compared to other media

  public func rankings<T>(selection: Selection<T, [Objects.MediaRank?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "rankings",
      parent: "Media",
      type: "MediaRank",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The authenticated user's media list entry for the media

  public func mediaListEntry<T>(selection: Selection<T, Objects.MediaList?>) throws -> T {
    let field = GraphQLField.composite(
      field: "mediaListEntry",
      parent: "Media",
      type: "MediaList",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// User reviews of the media

  public func reviews<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ReviewSort>]> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.ReviewConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "reviews",
      parent: "Media",
      type: "ReviewConnection",
      arguments: [
        Argument(name: "limit", type: "Int", value: limit),
        Argument(name: "sort", type: "[ReviewSort]", value: sort),
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// User recommendations for similar media

  public func recommendations<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.RecommendationSort>]> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.RecommendationConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "recommendations",
      parent: "Media",
      type: "RecommendationConnection",
      arguments: [
        Argument(name: "sort", type: "[RecommendationSort]", value: sort),
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func stats<T>(selection: Selection<T, Objects.MediaStats?>) throws -> T {
    let field = GraphQLField.composite(
      field: "stats",
      parent: "Media",
      type: "MediaStats",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The url for the media page on the AniList website

  public func siteUrl() throws -> String? {
    let field = GraphQLField.leaf(
      field: "siteUrl",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the media should have forum thread automatically created for it on airing episode release

  public func autoCreateForumThread() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "autoCreateForumThread",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the media is blocked from being recommended to/from

  public func isRecommendationBlocked() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isRecommendationBlocked",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the media is blocked from being reviewed

  public func isReviewBlocked() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isReviewBlocked",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Notes for site moderators

  public func modNotes() throws -> String? {
    let field = GraphQLField.leaf(
      field: "modNotes",
      parent: "Media",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias Media<W> = Selection<W, Objects.Media>
}
extension Objects {
  public struct MediaTitle {}
}

extension Fields where TypeLock == Objects.MediaTitle {
  /// The romanization of the native language title

  public func romaji(stylised: OptionalArgument<Bool> = .init()) throws -> String? {
    let field = GraphQLField.leaf(
      field: "romaji",
      parent: "MediaTitle",
      arguments: [Argument(name: "stylised", type: "Boolean", value: stylised)]
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The official english title

  public func english(stylised: OptionalArgument<Bool> = .init()) throws -> String? {
    let field = GraphQLField.leaf(
      field: "english",
      parent: "MediaTitle",
      arguments: [Argument(name: "stylised", type: "Boolean", value: stylised)]
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Official title in it's native language

  public func native(stylised: OptionalArgument<Bool> = .init()) throws -> String? {
    let field = GraphQLField.leaf(
      field: "native",
      parent: "MediaTitle",
      arguments: [Argument(name: "stylised", type: "Boolean", value: stylised)]
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The currently authenticated users preferred title language. Default romaji for non-authenticated

  public func userPreferred() throws -> String? {
    let field = GraphQLField.leaf(
      field: "userPreferred",
      parent: "MediaTitle",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaTitle<W> = Selection<W, Objects.MediaTitle>
}
extension Objects {
  public struct FuzzyDate {}
}

extension Fields where TypeLock == Objects.FuzzyDate {
  /// Numeric Year (2017)

  public func year() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "year",
      parent: "FuzzyDate",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Numeric Month (3)

  public func month() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "month",
      parent: "FuzzyDate",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Numeric Day (24)

  public func day() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "day",
      parent: "FuzzyDate",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias FuzzyDate<W> = Selection<W, Objects.FuzzyDate>
}
extension Objects {
  public struct MediaTrailer {}
}

extension Fields where TypeLock == Objects.MediaTrailer {
  /// The trailer video id

  public func id() throws -> String? {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "MediaTrailer",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The site the video is hosted by (Currently either youtube or dailymotion)

  public func site() throws -> String? {
    let field = GraphQLField.leaf(
      field: "site",
      parent: "MediaTrailer",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The url for the thumbnail image of the video

  public func thumbnail() throws -> String? {
    let field = GraphQLField.leaf(
      field: "thumbnail",
      parent: "MediaTrailer",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaTrailer<W> = Selection<W, Objects.MediaTrailer>
}
extension Objects {
  public struct MediaCoverImage {}
}

extension Fields where TypeLock == Objects.MediaCoverImage {
  /// The cover image url of the media at its largest size. If this size isn't available, large will be provided instead.

  public func extraLarge() throws -> String? {
    let field = GraphQLField.leaf(
      field: "extraLarge",
      parent: "MediaCoverImage",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The cover image url of the media at a large size

  public func large() throws -> String? {
    let field = GraphQLField.leaf(
      field: "large",
      parent: "MediaCoverImage",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The cover image url of the media at medium size

  public func medium() throws -> String? {
    let field = GraphQLField.leaf(
      field: "medium",
      parent: "MediaCoverImage",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Average #hex color of cover image

  public func color() throws -> String? {
    let field = GraphQLField.leaf(
      field: "color",
      parent: "MediaCoverImage",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaCoverImage<W> = Selection<W, Objects.MediaCoverImage>
}
extension Objects {
  public struct MediaTag {}
}

extension Fields where TypeLock == Objects.MediaTag {
  /// The id of the tag

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "MediaTag",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The name of the tag

  public func name() throws -> String {
    let field = GraphQLField.leaf(
      field: "name",
      parent: "MediaTag",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String(from: $0) }
    case .selecting:
      return String.mockValue
    }
  }
  /// A general description of the tag

  public func description() throws -> String? {
    let field = GraphQLField.leaf(
      field: "description",
      parent: "MediaTag",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The categories of tags this tag belongs to

  public func category() throws -> String? {
    let field = GraphQLField.leaf(
      field: "category",
      parent: "MediaTag",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The relevance ranking of the tag out of the 100 for this media

  public func rank() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "rank",
      parent: "MediaTag",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the tag could be a spoiler for any media

  public func isGeneralSpoiler() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isGeneralSpoiler",
      parent: "MediaTag",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the tag is a spoiler for this media

  public func isMediaSpoiler() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isMediaSpoiler",
      parent: "MediaTag",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the tag is only for adult 18+ media

  public func isAdult() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isAdult",
      parent: "MediaTag",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The user who submitted the tag

  public func userId() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "userId",
      parent: "MediaTag",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaTag<W> = Selection<W, Objects.MediaTag>
}
extension Objects {
  public struct CharacterConnection {}
}

extension Fields where TypeLock == Objects.CharacterConnection {

  public func edges<T>(selection: Selection<T, [Objects.CharacterEdge?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "edges",
      parent: "CharacterConnection",
      type: "CharacterEdge",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func nodes<T>(selection: Selection<T, [Objects.Character?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "nodes",
      parent: "CharacterConnection",
      type: "Character",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The pagination information

  public func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) throws -> T {
    let field = GraphQLField.composite(
      field: "pageInfo",
      parent: "CharacterConnection",
      type: "PageInfo",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias CharacterConnection<W> = Selection<W, Objects.CharacterConnection>
}
extension Objects {
  public struct CharacterEdge {}
}

extension Fields where TypeLock == Objects.CharacterEdge {

  public func node<T>(selection: Selection<T, Objects.Character?>) throws -> T {
    let field = GraphQLField.composite(
      field: "node",
      parent: "CharacterEdge",
      type: "Character",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The id of the connection

  public func id() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "CharacterEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The characters role in the media

  public func role() throws -> Enums.CharacterRole? {
    let field = GraphQLField.leaf(
      field: "role",
      parent: "CharacterEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.CharacterRole?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Media specific character name

  public func name() throws -> String? {
    let field = GraphQLField.leaf(
      field: "name",
      parent: "CharacterEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The voice actors of the character

  public func voiceActors<T>(
    language: OptionalArgument<Enums.StaffLanguage> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.StaffSort>]> = .init(),
    selection: Selection<T, [Objects.Staff?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "voiceActors",
      parent: "CharacterEdge",
      type: "Staff",
      arguments: [
        Argument(name: "language", type: "StaffLanguage", value: language),
        Argument(name: "sort", type: "[StaffSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The voice actors of the character with role date

  public func voiceActorRoles<T>(
    language: OptionalArgument<Enums.StaffLanguage> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.StaffSort>]> = .init(),
    selection: Selection<T, [Objects.StaffRoleType?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "voiceActorRoles",
      parent: "CharacterEdge",
      type: "StaffRoleType",
      arguments: [
        Argument(name: "language", type: "StaffLanguage", value: language),
        Argument(name: "sort", type: "[StaffSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The media the character is in

  public func media<T>(selection: Selection<T, [Objects.Media?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "media",
      parent: "CharacterEdge",
      type: "Media",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The order the character should be displayed from the users favourites

  public func favouriteOrder() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "favouriteOrder",
      parent: "CharacterEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias CharacterEdge<W> = Selection<W, Objects.CharacterEdge>
}
extension Objects {
  public struct Character {}
}

extension Fields where TypeLock == Objects.Character {
  /// The id of the character

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "Character",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The names of the character

  public func name<T>(selection: Selection<T, Objects.CharacterName?>) throws -> T {
    let field = GraphQLField.composite(
      field: "name",
      parent: "Character",
      type: "CharacterName",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Character images

  public func image<T>(selection: Selection<T, Objects.CharacterImage?>) throws -> T {
    let field = GraphQLField.composite(
      field: "image",
      parent: "Character",
      type: "CharacterImage",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// A general description of the character

  public func description(asHtml: OptionalArgument<Bool> = .init()) throws -> String? {
    let field = GraphQLField.leaf(
      field: "description",
      parent: "Character",
      arguments: [Argument(name: "asHtml", type: "Boolean", value: asHtml)]
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The character's gender. Usually Male, Female, or Non-binary but can be any string.

  public func gender() throws -> String? {
    let field = GraphQLField.leaf(
      field: "gender",
      parent: "Character",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The character's birth date

  public func dateOfBirth<T>(selection: Selection<T, Objects.FuzzyDate?>) throws -> T {
    let field = GraphQLField.composite(
      field: "dateOfBirth",
      parent: "Character",
      type: "FuzzyDate",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The character's age. Note this is a string, not an int, it may contain further text and additional ages.

  public func age() throws -> String? {
    let field = GraphQLField.leaf(
      field: "age",
      parent: "Character",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The characters blood type

  public func bloodType() throws -> String? {
    let field = GraphQLField.leaf(
      field: "bloodType",
      parent: "Character",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the character is marked as favourite by the currently authenticated user

  public func isFavourite() throws -> Bool {
    let field = GraphQLField.leaf(
      field: "isFavourite",
      parent: "Character",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool(from: $0) }
    case .selecting:
      return Bool.mockValue
    }
  }
  /// If the character is blocked from being added to favourites

  public func isFavouriteBlocked() throws -> Bool {
    let field = GraphQLField.leaf(
      field: "isFavouriteBlocked",
      parent: "Character",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool(from: $0) }
    case .selecting:
      return Bool.mockValue
    }
  }
  /// The url for the character page on the AniList website

  public func siteUrl() throws -> String? {
    let field = GraphQLField.leaf(
      field: "siteUrl",
      parent: "Character",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Media that includes the character

  public func media<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.MediaSort>]> = .init(),
    type: OptionalArgument<Enums.MediaType> = .init(), onList: OptionalArgument<Bool> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.MediaConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "media",
      parent: "Character",
      type: "MediaConnection",
      arguments: [
        Argument(name: "sort", type: "[MediaSort]", value: sort),
        Argument(name: "type", type: "MediaType", value: type),
        Argument(name: "onList", type: "Boolean", value: onList),
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  @available(*, deprecated, message: "No data available")
  public func updatedAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "updatedAt",
      parent: "Character",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of user's who have favourited the character

  public func favourites() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "favourites",
      parent: "Character",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Notes for site moderators

  public func modNotes() throws -> String? {
    let field = GraphQLField.leaf(
      field: "modNotes",
      parent: "Character",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias Character<W> = Selection<W, Objects.Character>
}
extension Objects {
  public struct CharacterName {}
}

extension Fields where TypeLock == Objects.CharacterName {
  /// The character's given name

  public func first() throws -> String? {
    let field = GraphQLField.leaf(
      field: "first",
      parent: "CharacterName",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The character's middle name

  public func middle() throws -> String? {
    let field = GraphQLField.leaf(
      field: "middle",
      parent: "CharacterName",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The character's surname

  public func last() throws -> String? {
    let field = GraphQLField.leaf(
      field: "last",
      parent: "CharacterName",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The character's first and last name

  public func full() throws -> String? {
    let field = GraphQLField.leaf(
      field: "full",
      parent: "CharacterName",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The character's full name in their native language

  public func native() throws -> String? {
    let field = GraphQLField.leaf(
      field: "native",
      parent: "CharacterName",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Other names the character might be referred to as

  public func alternative() throws -> [String?]? {
    let field = GraphQLField.leaf(
      field: "alternative",
      parent: "CharacterName",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [String?]?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Other names the character might be referred to as but are spoilers

  public func alternativeSpoiler() throws -> [String?]? {
    let field = GraphQLField.leaf(
      field: "alternativeSpoiler",
      parent: "CharacterName",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [String?]?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The currently authenticated users preferred name language. Default romaji for non-authenticated

  public func userPreferred() throws -> String? {
    let field = GraphQLField.leaf(
      field: "userPreferred",
      parent: "CharacterName",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias CharacterName<W> = Selection<W, Objects.CharacterName>
}
extension Objects {
  public struct CharacterImage {}
}

extension Fields where TypeLock == Objects.CharacterImage {
  /// The character's image of media at its largest size

  public func large() throws -> String? {
    let field = GraphQLField.leaf(
      field: "large",
      parent: "CharacterImage",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The character's image of media at medium size

  public func medium() throws -> String? {
    let field = GraphQLField.leaf(
      field: "medium",
      parent: "CharacterImage",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias CharacterImage<W> = Selection<W, Objects.CharacterImage>
}
extension Objects {
  public struct Staff {}
}

extension Fields where TypeLock == Objects.Staff {
  /// The id of the staff member

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "Staff",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The names of the staff member

  public func name<T>(selection: Selection<T, Objects.StaffName?>) throws -> T {
    let field = GraphQLField.composite(
      field: "name",
      parent: "Staff",
      type: "StaffName",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The primary language the staff member dub's in
  @available(*, deprecated, message: "Replaced with languageV2")
  public func language() throws -> Enums.StaffLanguage? {
    let field = GraphQLField.leaf(
      field: "language",
      parent: "Staff",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.StaffLanguage?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The primary language of the staff member. Current values: Japanese, English, Korean, Italian, Spanish, Portuguese, French, German, Hebrew, Hungarian, Chinese, Arabic, Filipino, Catalan, Finnish, Turkish, Dutch, Swedish, Thai, Tagalog, Malaysian, Indonesian, Vietnamese, Nepali, Hindi, Urdu

  public func languageV2() throws -> String? {
    let field = GraphQLField.leaf(
      field: "languageV2",
      parent: "Staff",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The staff images

  public func image<T>(selection: Selection<T, Objects.StaffImage?>) throws -> T {
    let field = GraphQLField.composite(
      field: "image",
      parent: "Staff",
      type: "StaffImage",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// A general description of the staff member

  public func description(asHtml: OptionalArgument<Bool> = .init()) throws -> String? {
    let field = GraphQLField.leaf(
      field: "description",
      parent: "Staff",
      arguments: [Argument(name: "asHtml", type: "Boolean", value: asHtml)]
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The person's primary occupations

  public func primaryOccupations() throws -> [String?]? {
    let field = GraphQLField.leaf(
      field: "primaryOccupations",
      parent: "Staff",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [String?]?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The staff's gender. Usually Male, Female, or Non-binary but can be any string.

  public func gender() throws -> String? {
    let field = GraphQLField.leaf(
      field: "gender",
      parent: "Staff",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func dateOfBirth<T>(selection: Selection<T, Objects.FuzzyDate?>) throws -> T {
    let field = GraphQLField.composite(
      field: "dateOfBirth",
      parent: "Staff",
      type: "FuzzyDate",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func dateOfDeath<T>(selection: Selection<T, Objects.FuzzyDate?>) throws -> T {
    let field = GraphQLField.composite(
      field: "dateOfDeath",
      parent: "Staff",
      type: "FuzzyDate",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The person's age in years

  public func age() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "age",
      parent: "Staff",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// [startYear, endYear] (If the 2nd value is not present staff is still active)

  public func yearsActive() throws -> [Int?]? {
    let field = GraphQLField.leaf(
      field: "yearsActive",
      parent: "Staff",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [Int?]?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The persons birthplace or hometown

  public func homeTown() throws -> String? {
    let field = GraphQLField.leaf(
      field: "homeTown",
      parent: "Staff",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The persons blood type

  public func bloodType() throws -> String? {
    let field = GraphQLField.leaf(
      field: "bloodType",
      parent: "Staff",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the staff member is marked as favourite by the currently authenticated user

  public func isFavourite() throws -> Bool {
    let field = GraphQLField.leaf(
      field: "isFavourite",
      parent: "Staff",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool(from: $0) }
    case .selecting:
      return Bool.mockValue
    }
  }
  /// If the staff member is blocked from being added to favourites

  public func isFavouriteBlocked() throws -> Bool {
    let field = GraphQLField.leaf(
      field: "isFavouriteBlocked",
      parent: "Staff",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool(from: $0) }
    case .selecting:
      return Bool.mockValue
    }
  }
  /// The url for the staff page on the AniList website

  public func siteUrl() throws -> String? {
    let field = GraphQLField.leaf(
      field: "siteUrl",
      parent: "Staff",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Media where the staff member has a production role

  public func staffMedia<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.MediaSort>]> = .init(),
    type: OptionalArgument<Enums.MediaType> = .init(), onList: OptionalArgument<Bool> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.MediaConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "staffMedia",
      parent: "Staff",
      type: "MediaConnection",
      arguments: [
        Argument(name: "sort", type: "[MediaSort]", value: sort),
        Argument(name: "type", type: "MediaType", value: type),
        Argument(name: "onList", type: "Boolean", value: onList),
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Characters voiced by the actor

  public func characters<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.CharacterSort>]> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.CharacterConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "characters",
      parent: "Staff",
      type: "CharacterConnection",
      arguments: [
        Argument(name: "sort", type: "[CharacterSort]", value: sort),
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Media the actor voiced characters in. (Same data as characters with media as node instead of characters)

  public func characterMedia<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.MediaSort>]> = .init(),
    onList: OptionalArgument<Bool> = .init(), page: OptionalArgument<Int> = .init(),
    perPage: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.MediaConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "characterMedia",
      parent: "Staff",
      type: "MediaConnection",
      arguments: [
        Argument(name: "sort", type: "[MediaSort]", value: sort),
        Argument(name: "onList", type: "Boolean", value: onList),
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  @available(*, deprecated, message: "No data available")
  public func updatedAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "updatedAt",
      parent: "Staff",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Staff member that the submission is referencing

  public func staff<T>(selection: Selection<T, Objects.Staff?>) throws -> T {
    let field = GraphQLField.composite(
      field: "staff",
      parent: "Staff",
      type: "Staff",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Submitter for the submission

  public func submitter<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "submitter",
      parent: "Staff",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Status of the submission

  public func submissionStatus() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "submissionStatus",
      parent: "Staff",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Inner details of submission status

  public func submissionNotes() throws -> String? {
    let field = GraphQLField.leaf(
      field: "submissionNotes",
      parent: "Staff",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of user's who have favourited the staff member

  public func favourites() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "favourites",
      parent: "Staff",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Notes for site moderators

  public func modNotes() throws -> String? {
    let field = GraphQLField.leaf(
      field: "modNotes",
      parent: "Staff",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias Staff<W> = Selection<W, Objects.Staff>
}
extension Objects {
  public struct StaffName {}
}

extension Fields where TypeLock == Objects.StaffName {
  /// The person's given name

  public func first() throws -> String? {
    let field = GraphQLField.leaf(
      field: "first",
      parent: "StaffName",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The person's middle name

  public func middle() throws -> String? {
    let field = GraphQLField.leaf(
      field: "middle",
      parent: "StaffName",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The person's surname

  public func last() throws -> String? {
    let field = GraphQLField.leaf(
      field: "last",
      parent: "StaffName",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The person's first and last name

  public func full() throws -> String? {
    let field = GraphQLField.leaf(
      field: "full",
      parent: "StaffName",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The person's full name in their native language

  public func native() throws -> String? {
    let field = GraphQLField.leaf(
      field: "native",
      parent: "StaffName",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Other names the staff member might be referred to as (pen names)

  public func alternative() throws -> [String?]? {
    let field = GraphQLField.leaf(
      field: "alternative",
      parent: "StaffName",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [String?]?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The currently authenticated users preferred name language. Default romaji for non-authenticated

  public func userPreferred() throws -> String? {
    let field = GraphQLField.leaf(
      field: "userPreferred",
      parent: "StaffName",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias StaffName<W> = Selection<W, Objects.StaffName>
}
extension Objects {
  public struct StaffImage {}
}

extension Fields where TypeLock == Objects.StaffImage {
  /// The person's image of media at its largest size

  public func large() throws -> String? {
    let field = GraphQLField.leaf(
      field: "large",
      parent: "StaffImage",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The person's image of media at medium size

  public func medium() throws -> String? {
    let field = GraphQLField.leaf(
      field: "medium",
      parent: "StaffImage",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias StaffImage<W> = Selection<W, Objects.StaffImage>
}
extension Objects {
  public struct StaffRoleType {}
}

extension Fields where TypeLock == Objects.StaffRoleType {
  /// The voice actors of the character

  public func voiceActor<T>(selection: Selection<T, Objects.Staff?>) throws -> T {
    let field = GraphQLField.composite(
      field: "voiceActor",
      parent: "StaffRoleType",
      type: "Staff",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Notes regarding the VA's role for the character

  public func roleNotes() throws -> String? {
    let field = GraphQLField.leaf(
      field: "roleNotes",
      parent: "StaffRoleType",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Used for grouping roles where multiple dubs exist for the same language. Either dubbing company name or language variant.

  public func dubGroup() throws -> String? {
    let field = GraphQLField.leaf(
      field: "dubGroup",
      parent: "StaffRoleType",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias StaffRoleType<W> = Selection<W, Objects.StaffRoleType>
}
extension Objects {
  public struct StaffConnection {}
}

extension Fields where TypeLock == Objects.StaffConnection {

  public func edges<T>(selection: Selection<T, [Objects.StaffEdge?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "edges",
      parent: "StaffConnection",
      type: "StaffEdge",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func nodes<T>(selection: Selection<T, [Objects.Staff?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "nodes",
      parent: "StaffConnection",
      type: "Staff",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The pagination information

  public func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) throws -> T {
    let field = GraphQLField.composite(
      field: "pageInfo",
      parent: "StaffConnection",
      type: "PageInfo",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias StaffConnection<W> = Selection<W, Objects.StaffConnection>
}
extension Objects {
  public struct StaffEdge {}
}

extension Fields where TypeLock == Objects.StaffEdge {

  public func node<T>(selection: Selection<T, Objects.Staff?>) throws -> T {
    let field = GraphQLField.composite(
      field: "node",
      parent: "StaffEdge",
      type: "Staff",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The id of the connection

  public func id() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "StaffEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The role of the staff member in the production of the media

  public func role() throws -> String? {
    let field = GraphQLField.leaf(
      field: "role",
      parent: "StaffEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The order the staff should be displayed from the users favourites

  public func favouriteOrder() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "favouriteOrder",
      parent: "StaffEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias StaffEdge<W> = Selection<W, Objects.StaffEdge>
}
extension Objects {
  public struct StudioConnection {}
}

extension Fields where TypeLock == Objects.StudioConnection {

  public func edges<T>(selection: Selection<T, [Objects.StudioEdge?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "edges",
      parent: "StudioConnection",
      type: "StudioEdge",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func nodes<T>(selection: Selection<T, [Objects.Studio?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "nodes",
      parent: "StudioConnection",
      type: "Studio",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The pagination information

  public func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) throws -> T {
    let field = GraphQLField.composite(
      field: "pageInfo",
      parent: "StudioConnection",
      type: "PageInfo",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias StudioConnection<W> = Selection<W, Objects.StudioConnection>
}
extension Objects {
  public struct StudioEdge {}
}

extension Fields where TypeLock == Objects.StudioEdge {

  public func node<T>(selection: Selection<T, Objects.Studio?>) throws -> T {
    let field = GraphQLField.composite(
      field: "node",
      parent: "StudioEdge",
      type: "Studio",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The id of the connection

  public func id() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "StudioEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the studio is the main animation studio of the anime

  public func isMain() throws -> Bool {
    let field = GraphQLField.leaf(
      field: "isMain",
      parent: "StudioEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool(from: $0) }
    case .selecting:
      return Bool.mockValue
    }
  }
  /// The order the character should be displayed from the users favourites

  public func favouriteOrder() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "favouriteOrder",
      parent: "StudioEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias StudioEdge<W> = Selection<W, Objects.StudioEdge>
}
extension Objects {
  public struct Studio {}
}

extension Fields where TypeLock == Objects.Studio {
  /// The id of the studio

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "Studio",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The name of the studio

  public func name() throws -> String {
    let field = GraphQLField.leaf(
      field: "name",
      parent: "Studio",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String(from: $0) }
    case .selecting:
      return String.mockValue
    }
  }
  /// If the studio is an animation studio or a different kind of company

  public func isAnimationStudio() throws -> Bool {
    let field = GraphQLField.leaf(
      field: "isAnimationStudio",
      parent: "Studio",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool(from: $0) }
    case .selecting:
      return Bool.mockValue
    }
  }
  /// The media the studio has worked on

  public func media<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.MediaSort>]> = .init(),
    isMain: OptionalArgument<Bool> = .init(), onList: OptionalArgument<Bool> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.MediaConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "media",
      parent: "Studio",
      type: "MediaConnection",
      arguments: [
        Argument(name: "sort", type: "[MediaSort]", value: sort),
        Argument(name: "isMain", type: "Boolean", value: isMain),
        Argument(name: "onList", type: "Boolean", value: onList),
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The url for the studio page on the AniList website

  public func siteUrl() throws -> String? {
    let field = GraphQLField.leaf(
      field: "siteUrl",
      parent: "Studio",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the studio is marked as favourite by the currently authenticated user

  public func isFavourite() throws -> Bool {
    let field = GraphQLField.leaf(
      field: "isFavourite",
      parent: "Studio",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool(from: $0) }
    case .selecting:
      return Bool.mockValue
    }
  }
  /// The amount of user's who have favourited the studio

  public func favourites() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "favourites",
      parent: "Studio",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias Studio<W> = Selection<W, Objects.Studio>
}
extension Objects {
  public struct AiringSchedule {}
}

extension Fields where TypeLock == Objects.AiringSchedule {
  /// The id of the airing schedule item

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "AiringSchedule",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The time the episode airs at

  public func airingAt() throws -> Int {
    let field = GraphQLField.leaf(
      field: "airingAt",
      parent: "AiringSchedule",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// Seconds until episode starts airing

  public func timeUntilAiring() throws -> Int {
    let field = GraphQLField.leaf(
      field: "timeUntilAiring",
      parent: "AiringSchedule",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The airing episode number

  public func episode() throws -> Int {
    let field = GraphQLField.leaf(
      field: "episode",
      parent: "AiringSchedule",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The associate media id of the airing episode

  public func mediaId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "mediaId",
      parent: "AiringSchedule",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The associate media of the airing episode

  public func media<T>(selection: Selection<T, Objects.Media?>) throws -> T {
    let field = GraphQLField.composite(
      field: "media",
      parent: "AiringSchedule",
      type: "Media",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias AiringSchedule<W> = Selection<W, Objects.AiringSchedule>
}
extension Objects {
  public struct AiringScheduleConnection {}
}

extension Fields where TypeLock == Objects.AiringScheduleConnection {

  public func edges<T>(selection: Selection<T, [Objects.AiringScheduleEdge?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "edges",
      parent: "AiringScheduleConnection",
      type: "AiringScheduleEdge",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func nodes<T>(selection: Selection<T, [Objects.AiringSchedule?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "nodes",
      parent: "AiringScheduleConnection",
      type: "AiringSchedule",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The pagination information

  public func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) throws -> T {
    let field = GraphQLField.composite(
      field: "pageInfo",
      parent: "AiringScheduleConnection",
      type: "PageInfo",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias AiringScheduleConnection<W> = Selection<W, Objects.AiringScheduleConnection>
}
extension Objects {
  public struct AiringScheduleEdge {}
}

extension Fields where TypeLock == Objects.AiringScheduleEdge {

  public func node<T>(selection: Selection<T, Objects.AiringSchedule?>) throws -> T {
    let field = GraphQLField.composite(
      field: "node",
      parent: "AiringScheduleEdge",
      type: "AiringSchedule",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The id of the connection

  public func id() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "AiringScheduleEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias AiringScheduleEdge<W> = Selection<W, Objects.AiringScheduleEdge>
}
extension Objects {
  public struct MediaTrendConnection {}
}

extension Fields where TypeLock == Objects.MediaTrendConnection {

  public func edges<T>(selection: Selection<T, [Objects.MediaTrendEdge?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "edges",
      parent: "MediaTrendConnection",
      type: "MediaTrendEdge",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func nodes<T>(selection: Selection<T, [Objects.MediaTrend?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "nodes",
      parent: "MediaTrendConnection",
      type: "MediaTrend",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The pagination information

  public func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) throws -> T {
    let field = GraphQLField.composite(
      field: "pageInfo",
      parent: "MediaTrendConnection",
      type: "PageInfo",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaTrendConnection<W> = Selection<W, Objects.MediaTrendConnection>
}
extension Objects {
  public struct MediaTrendEdge {}
}

extension Fields where TypeLock == Objects.MediaTrendEdge {

  public func node<T>(selection: Selection<T, Objects.MediaTrend?>) throws -> T {
    let field = GraphQLField.composite(
      field: "node",
      parent: "MediaTrendEdge",
      type: "MediaTrend",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaTrendEdge<W> = Selection<W, Objects.MediaTrendEdge>
}
extension Objects {
  public struct MediaTrend {}
}

extension Fields where TypeLock == Objects.MediaTrend {
  /// The id of the tag

  public func mediaId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "mediaId",
      parent: "MediaTrend",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The day the data was recorded (timestamp)

  public func date() throws -> Int {
    let field = GraphQLField.leaf(
      field: "date",
      parent: "MediaTrend",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The amount of media activity on the day

  public func trending() throws -> Int {
    let field = GraphQLField.leaf(
      field: "trending",
      parent: "MediaTrend",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// A weighted average score of all the user's scores of the media

  public func averageScore() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "averageScore",
      parent: "MediaTrend",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The number of users with the media on their list

  public func popularity() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "popularity",
      parent: "MediaTrend",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The number of users with watching/reading the media

  public func inProgress() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "inProgress",
      parent: "MediaTrend",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the media was being released at this time

  public func releasing() throws -> Bool {
    let field = GraphQLField.leaf(
      field: "releasing",
      parent: "MediaTrend",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool(from: $0) }
    case .selecting:
      return Bool.mockValue
    }
  }
  /// The episode number of the anime released on this day

  public func episode() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "episode",
      parent: "MediaTrend",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The related media

  public func media<T>(selection: Selection<T, Objects.Media?>) throws -> T {
    let field = GraphQLField.composite(
      field: "media",
      parent: "MediaTrend",
      type: "Media",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaTrend<W> = Selection<W, Objects.MediaTrend>
}
extension Objects {
  public struct MediaExternalLink {}
}

extension Fields where TypeLock == Objects.MediaExternalLink {
  /// The id of the external link

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "MediaExternalLink",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The url of the external link or base url of link source

  public func url() throws -> String? {
    let field = GraphQLField.leaf(
      field: "url",
      parent: "MediaExternalLink",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The links website site name

  public func site() throws -> String {
    let field = GraphQLField.leaf(
      field: "site",
      parent: "MediaExternalLink",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String(from: $0) }
    case .selecting:
      return String.mockValue
    }
  }
  /// The links website site id

  public func siteId() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "siteId",
      parent: "MediaExternalLink",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func type() throws -> Enums.ExternalLinkType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "MediaExternalLink",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.ExternalLinkType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Language the site content is in. See Staff language field for values.

  public func language() throws -> String? {
    let field = GraphQLField.leaf(
      field: "language",
      parent: "MediaExternalLink",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func color() throws -> String? {
    let field = GraphQLField.leaf(
      field: "color",
      parent: "MediaExternalLink",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The icon image url of the site. Not available for all links. Transparent PNG 64x64

  public func icon() throws -> String? {
    let field = GraphQLField.leaf(
      field: "icon",
      parent: "MediaExternalLink",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func notes() throws -> String? {
    let field = GraphQLField.leaf(
      field: "notes",
      parent: "MediaExternalLink",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func isDisabled() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isDisabled",
      parent: "MediaExternalLink",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaExternalLink<W> = Selection<W, Objects.MediaExternalLink>
}
extension Objects {
  public struct MediaStreamingEpisode {}
}

extension Fields where TypeLock == Objects.MediaStreamingEpisode {
  /// Title of the episode

  public func title() throws -> String? {
    let field = GraphQLField.leaf(
      field: "title",
      parent: "MediaStreamingEpisode",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Url of episode image thumbnail

  public func thumbnail() throws -> String? {
    let field = GraphQLField.leaf(
      field: "thumbnail",
      parent: "MediaStreamingEpisode",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The url of the episode

  public func url() throws -> String? {
    let field = GraphQLField.leaf(
      field: "url",
      parent: "MediaStreamingEpisode",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The site location of the streaming episodes

  public func site() throws -> String? {
    let field = GraphQLField.leaf(
      field: "site",
      parent: "MediaStreamingEpisode",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaStreamingEpisode<W> = Selection<W, Objects.MediaStreamingEpisode>
}
extension Objects {
  public struct MediaRank {}
}

extension Fields where TypeLock == Objects.MediaRank {
  /// The id of the rank

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "MediaRank",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The numerical rank of the media

  public func rank() throws -> Int {
    let field = GraphQLField.leaf(
      field: "rank",
      parent: "MediaRank",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The type of ranking

  public func type() throws -> Enums.MediaRankType {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "MediaRank",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.MediaRankType(from: $0) }
    case .selecting:
      return Enums.MediaRankType.mockValue
    }
  }
  /// The format the media is ranked within

  public func format() throws -> Enums.MediaFormat {
    let field = GraphQLField.leaf(
      field: "format",
      parent: "MediaRank",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.MediaFormat(from: $0) }
    case .selecting:
      return Enums.MediaFormat.mockValue
    }
  }
  /// The year the media is ranked within

  public func year() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "year",
      parent: "MediaRank",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The season the media is ranked within

  public func season() throws -> Enums.MediaSeason? {
    let field = GraphQLField.leaf(
      field: "season",
      parent: "MediaRank",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.MediaSeason?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the ranking is based on all time instead of a season/year

  public func allTime() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "allTime",
      parent: "MediaRank",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// String that gives context to the ranking type and time span

  public func context() throws -> String {
    let field = GraphQLField.leaf(
      field: "context",
      parent: "MediaRank",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String(from: $0) }
    case .selecting:
      return String.mockValue
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaRank<W> = Selection<W, Objects.MediaRank>
}
extension Objects {
  public struct MediaList {}
}

extension Fields where TypeLock == Objects.MediaList {
  /// The id of the list entry

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "MediaList",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The id of the user owner of the list entry

  public func userId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "userId",
      parent: "MediaList",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The id of the media

  public func mediaId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "mediaId",
      parent: "MediaList",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The watching/reading status

  public func status() throws -> Enums.MediaListStatus? {
    let field = GraphQLField.leaf(
      field: "status",
      parent: "MediaList",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.MediaListStatus?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The score of the entry

  public func score(format: OptionalArgument<Enums.ScoreFormat> = .init()) throws -> Double? {
    let field = GraphQLField.leaf(
      field: "score",
      parent: "MediaList",
      arguments: [Argument(name: "format", type: "ScoreFormat", value: format)]
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Double?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of episodes/chapters consumed by the user

  public func progress() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "progress",
      parent: "MediaList",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of volumes read by the user

  public func progressVolumes() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "progressVolumes",
      parent: "MediaList",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of times the user has rewatched/read the media

  public func `repeat`() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "repeat",
      parent: "MediaList",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Priority of planning

  public func priority() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "priority",
      parent: "MediaList",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the entry should only be visible to authenticated user

  public func `private`() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "private",
      parent: "MediaList",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Text notes

  public func notes() throws -> String? {
    let field = GraphQLField.leaf(
      field: "notes",
      parent: "MediaList",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the entry shown be hidden from non-custom lists

  public func hiddenFromStatusLists() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "hiddenFromStatusLists",
      parent: "MediaList",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Map of booleans for which custom lists the entry are in

  public func customLists(asArray: OptionalArgument<Bool> = .init()) throws -> AnyCodable? {
    let field = GraphQLField.leaf(
      field: "customLists",
      parent: "MediaList",
      arguments: [Argument(name: "asArray", type: "Boolean", value: asArray)]
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try AnyCodable?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Map of advanced scores with name keys

  public func advancedScores() throws -> AnyCodable? {
    let field = GraphQLField.leaf(
      field: "advancedScores",
      parent: "MediaList",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try AnyCodable?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// When the entry was started by the user

  public func startedAt<T>(selection: Selection<T, Objects.FuzzyDate?>) throws -> T {
    let field = GraphQLField.composite(
      field: "startedAt",
      parent: "MediaList",
      type: "FuzzyDate",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// When the entry was completed by the user

  public func completedAt<T>(selection: Selection<T, Objects.FuzzyDate?>) throws -> T {
    let field = GraphQLField.composite(
      field: "completedAt",
      parent: "MediaList",
      type: "FuzzyDate",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// When the entry data was last updated

  public func updatedAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "updatedAt",
      parent: "MediaList",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// When the entry data was created

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "MediaList",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func media<T>(selection: Selection<T, Objects.Media?>) throws -> T {
    let field = GraphQLField.composite(
      field: "media",
      parent: "MediaList",
      type: "Media",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "MediaList",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaList<W> = Selection<W, Objects.MediaList>
}
extension Objects {
  public struct ReviewConnection {}
}

extension Fields where TypeLock == Objects.ReviewConnection {

  public func edges<T>(selection: Selection<T, [Objects.ReviewEdge?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "edges",
      parent: "ReviewConnection",
      type: "ReviewEdge",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func nodes<T>(selection: Selection<T, [Objects.Review?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "nodes",
      parent: "ReviewConnection",
      type: "Review",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The pagination information

  public func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) throws -> T {
    let field = GraphQLField.composite(
      field: "pageInfo",
      parent: "ReviewConnection",
      type: "PageInfo",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias ReviewConnection<W> = Selection<W, Objects.ReviewConnection>
}
extension Objects {
  public struct ReviewEdge {}
}

extension Fields where TypeLock == Objects.ReviewEdge {

  public func node<T>(selection: Selection<T, Objects.Review?>) throws -> T {
    let field = GraphQLField.composite(
      field: "node",
      parent: "ReviewEdge",
      type: "Review",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias ReviewEdge<W> = Selection<W, Objects.ReviewEdge>
}
extension Objects {
  public struct Review {}
}

extension Fields where TypeLock == Objects.Review {
  /// The id of the review

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "Review",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The id of the review's creator

  public func userId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "userId",
      parent: "Review",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The id of the review's media

  public func mediaId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "mediaId",
      parent: "Review",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// For which type of media the review is for

  public func mediaType() throws -> Enums.MediaType? {
    let field = GraphQLField.leaf(
      field: "mediaType",
      parent: "Review",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.MediaType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// A short summary of the review

  public func summary() throws -> String? {
    let field = GraphQLField.leaf(
      field: "summary",
      parent: "Review",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The main review body text

  public func body(asHtml: OptionalArgument<Bool> = .init()) throws -> String? {
    let field = GraphQLField.leaf(
      field: "body",
      parent: "Review",
      arguments: [Argument(name: "asHtml", type: "Boolean", value: asHtml)]
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The total user rating of the review

  public func rating() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "rating",
      parent: "Review",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of user ratings of the review

  public func ratingAmount() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "ratingAmount",
      parent: "Review",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The rating of the review by currently authenticated user

  public func userRating() throws -> Enums.ReviewRating? {
    let field = GraphQLField.leaf(
      field: "userRating",
      parent: "Review",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.ReviewRating?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The review score of the media

  public func score() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "score",
      parent: "Review",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the review is not yet publicly published and is only viewable by creator

  public func `private`() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "private",
      parent: "Review",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The url for the review page on the AniList website

  public func siteUrl() throws -> String? {
    let field = GraphQLField.leaf(
      field: "siteUrl",
      parent: "Review",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time of the thread creation

  public func createdAt() throws -> Int {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "Review",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The time of the thread last update

  public func updatedAt() throws -> Int {
    let field = GraphQLField.leaf(
      field: "updatedAt",
      parent: "Review",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The creator of the review

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "Review",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The media the review is of

  public func media<T>(selection: Selection<T, Objects.Media?>) throws -> T {
    let field = GraphQLField.composite(
      field: "media",
      parent: "Review",
      type: "Media",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias Review<W> = Selection<W, Objects.Review>
}
extension Objects {
  public struct RecommendationConnection {}
}

extension Fields where TypeLock == Objects.RecommendationConnection {

  public func edges<T>(selection: Selection<T, [Objects.RecommendationEdge?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "edges",
      parent: "RecommendationConnection",
      type: "RecommendationEdge",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func nodes<T>(selection: Selection<T, [Objects.Recommendation?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "nodes",
      parent: "RecommendationConnection",
      type: "Recommendation",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The pagination information

  public func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) throws -> T {
    let field = GraphQLField.composite(
      field: "pageInfo",
      parent: "RecommendationConnection",
      type: "PageInfo",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias RecommendationConnection<W> = Selection<W, Objects.RecommendationConnection>
}
extension Objects {
  public struct RecommendationEdge {}
}

extension Fields where TypeLock == Objects.RecommendationEdge {

  public func node<T>(selection: Selection<T, Objects.Recommendation?>) throws -> T {
    let field = GraphQLField.composite(
      field: "node",
      parent: "RecommendationEdge",
      type: "Recommendation",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias RecommendationEdge<W> = Selection<W, Objects.RecommendationEdge>
}
extension Objects {
  public struct Recommendation {}
}

extension Fields where TypeLock == Objects.Recommendation {
  /// The id of the recommendation

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "Recommendation",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// Users rating of the recommendation

  public func rating() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "rating",
      parent: "Recommendation",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The rating of the recommendation by currently authenticated user

  public func userRating() throws -> Enums.RecommendationRating? {
    let field = GraphQLField.leaf(
      field: "userRating",
      parent: "Recommendation",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.RecommendationRating?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The media the recommendation is from

  public func media<T>(selection: Selection<T, Objects.Media?>) throws -> T {
    let field = GraphQLField.composite(
      field: "media",
      parent: "Recommendation",
      type: "Media",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The recommended media

  public func mediaRecommendation<T>(selection: Selection<T, Objects.Media?>) throws -> T {
    let field = GraphQLField.composite(
      field: "mediaRecommendation",
      parent: "Recommendation",
      type: "Media",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The user that first created the recommendation

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "Recommendation",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias Recommendation<W> = Selection<W, Objects.Recommendation>
}
extension Objects {
  public struct MediaStats {}
}

extension Fields where TypeLock == Objects.MediaStats {

  public func scoreDistribution<T>(selection: Selection<T, [Objects.ScoreDistribution?]?>) throws
    -> T
  {
    let field = GraphQLField.composite(
      field: "scoreDistribution",
      parent: "MediaStats",
      type: "ScoreDistribution",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func statusDistribution<T>(selection: Selection<T, [Objects.StatusDistribution?]?>) throws
    -> T
  {
    let field = GraphQLField.composite(
      field: "statusDistribution",
      parent: "MediaStats",
      type: "StatusDistribution",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  @available(*, deprecated, message: "Replaced by MediaTrends")
  public func airingProgression<T>(selection: Selection<T, [Objects.AiringProgression?]?>) throws
    -> T
  {
    let field = GraphQLField.composite(
      field: "airingProgression",
      parent: "MediaStats",
      type: "AiringProgression",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaStats<W> = Selection<W, Objects.MediaStats>
}
extension Objects {
  public struct ScoreDistribution {}
}

extension Fields where TypeLock == Objects.ScoreDistribution {

  public func score() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "score",
      parent: "ScoreDistribution",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of list entries with this score

  public func amount() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "amount",
      parent: "ScoreDistribution",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias ScoreDistribution<W> = Selection<W, Objects.ScoreDistribution>
}
extension Objects {
  public struct StatusDistribution {}
}

extension Fields where TypeLock == Objects.StatusDistribution {
  /// The day the activity took place (Unix timestamp)

  public func status() throws -> Enums.MediaListStatus? {
    let field = GraphQLField.leaf(
      field: "status",
      parent: "StatusDistribution",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.MediaListStatus?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of entries with this status

  public func amount() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "amount",
      parent: "StatusDistribution",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias StatusDistribution<W> = Selection<W, Objects.StatusDistribution>
}
extension Objects {
  public struct AiringProgression {}
}

extension Fields where TypeLock == Objects.AiringProgression {
  /// The episode the stats were recorded at. .5 is the mid point between 2 episodes airing dates.

  public func episode() throws -> Double? {
    let field = GraphQLField.leaf(
      field: "episode",
      parent: "AiringProgression",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Double?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The average score for the media

  public func score() throws -> Double? {
    let field = GraphQLField.leaf(
      field: "score",
      parent: "AiringProgression",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Double?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of users watching the anime

  public func watching() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "watching",
      parent: "AiringProgression",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias AiringProgression<W> = Selection<W, Objects.AiringProgression>
}
extension Objects {
  public struct UserStatisticTypes {}
}

extension Fields where TypeLock == Objects.UserStatisticTypes {

  public func anime<T>(selection: Selection<T, Objects.UserStatistics?>) throws -> T {
    let field = GraphQLField.composite(
      field: "anime",
      parent: "UserStatisticTypes",
      type: "UserStatistics",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func manga<T>(selection: Selection<T, Objects.UserStatistics?>) throws -> T {
    let field = GraphQLField.composite(
      field: "manga",
      parent: "UserStatisticTypes",
      type: "UserStatistics",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias UserStatisticTypes<W> = Selection<W, Objects.UserStatisticTypes>
}
extension Objects {
  public struct UserStatistics {}
}

extension Fields where TypeLock == Objects.UserStatistics {

  public func count() throws -> Int {
    let field = GraphQLField.leaf(
      field: "count",
      parent: "UserStatistics",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func meanScore() throws -> Double {
    let field = GraphQLField.leaf(
      field: "meanScore",
      parent: "UserStatistics",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Double(from: $0) }
    case .selecting:
      return Double.mockValue
    }
  }

  public func standardDeviation() throws -> Double {
    let field = GraphQLField.leaf(
      field: "standardDeviation",
      parent: "UserStatistics",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Double(from: $0) }
    case .selecting:
      return Double.mockValue
    }
  }

  public func minutesWatched() throws -> Int {
    let field = GraphQLField.leaf(
      field: "minutesWatched",
      parent: "UserStatistics",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func episodesWatched() throws -> Int {
    let field = GraphQLField.leaf(
      field: "episodesWatched",
      parent: "UserStatistics",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func chaptersRead() throws -> Int {
    let field = GraphQLField.leaf(
      field: "chaptersRead",
      parent: "UserStatistics",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func volumesRead() throws -> Int {
    let field = GraphQLField.leaf(
      field: "volumesRead",
      parent: "UserStatistics",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func formats<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserFormatStatistic?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "formats",
      parent: "UserStatistics",
      type: "UserFormatStatistic",
      arguments: [
        Argument(name: "limit", type: "Int", value: limit),
        Argument(name: "sort", type: "[UserStatisticsSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func statuses<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserStatusStatistic?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "statuses",
      parent: "UserStatistics",
      type: "UserStatusStatistic",
      arguments: [
        Argument(name: "limit", type: "Int", value: limit),
        Argument(name: "sort", type: "[UserStatisticsSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func scores<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserScoreStatistic?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "scores",
      parent: "UserStatistics",
      type: "UserScoreStatistic",
      arguments: [
        Argument(name: "limit", type: "Int", value: limit),
        Argument(name: "sort", type: "[UserStatisticsSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func lengths<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserLengthStatistic?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "lengths",
      parent: "UserStatistics",
      type: "UserLengthStatistic",
      arguments: [
        Argument(name: "limit", type: "Int", value: limit),
        Argument(name: "sort", type: "[UserStatisticsSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func releaseYears<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserReleaseYearStatistic?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "releaseYears",
      parent: "UserStatistics",
      type: "UserReleaseYearStatistic",
      arguments: [
        Argument(name: "limit", type: "Int", value: limit),
        Argument(name: "sort", type: "[UserStatisticsSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func startYears<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserStartYearStatistic?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "startYears",
      parent: "UserStatistics",
      type: "UserStartYearStatistic",
      arguments: [
        Argument(name: "limit", type: "Int", value: limit),
        Argument(name: "sort", type: "[UserStatisticsSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func genres<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserGenreStatistic?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "genres",
      parent: "UserStatistics",
      type: "UserGenreStatistic",
      arguments: [
        Argument(name: "limit", type: "Int", value: limit),
        Argument(name: "sort", type: "[UserStatisticsSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func tags<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserTagStatistic?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "tags",
      parent: "UserStatistics",
      type: "UserTagStatistic",
      arguments: [
        Argument(name: "limit", type: "Int", value: limit),
        Argument(name: "sort", type: "[UserStatisticsSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func countries<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserCountryStatistic?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "countries",
      parent: "UserStatistics",
      type: "UserCountryStatistic",
      arguments: [
        Argument(name: "limit", type: "Int", value: limit),
        Argument(name: "sort", type: "[UserStatisticsSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func voiceActors<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserVoiceActorStatistic?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "voiceActors",
      parent: "UserStatistics",
      type: "UserVoiceActorStatistic",
      arguments: [
        Argument(name: "limit", type: "Int", value: limit),
        Argument(name: "sort", type: "[UserStatisticsSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func staff<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserStaffStatistic?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "staff",
      parent: "UserStatistics",
      type: "UserStaffStatistic",
      arguments: [
        Argument(name: "limit", type: "Int", value: limit),
        Argument(name: "sort", type: "[UserStatisticsSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func studios<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserStudioStatistic?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "studios",
      parent: "UserStatistics",
      type: "UserStudioStatistic",
      arguments: [
        Argument(name: "limit", type: "Int", value: limit),
        Argument(name: "sort", type: "[UserStatisticsSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias UserStatistics<W> = Selection<W, Objects.UserStatistics>
}
extension Objects {
  public struct UserFormatStatistic {}
}

extension Fields where TypeLock == Objects.UserFormatStatistic {

  public func count() throws -> Int {
    let field = GraphQLField.leaf(
      field: "count",
      parent: "UserFormatStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func meanScore() throws -> Double {
    let field = GraphQLField.leaf(
      field: "meanScore",
      parent: "UserFormatStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Double(from: $0) }
    case .selecting:
      return Double.mockValue
    }
  }

  public func minutesWatched() throws -> Int {
    let field = GraphQLField.leaf(
      field: "minutesWatched",
      parent: "UserFormatStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func chaptersRead() throws -> Int {
    let field = GraphQLField.leaf(
      field: "chaptersRead",
      parent: "UserFormatStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func mediaIds() throws -> [Int?] {
    let field = GraphQLField.leaf(
      field: "mediaIds",
      parent: "UserFormatStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [Int?](from: $0) }
    case .selecting:
      return []
    }
  }

  public func format() throws -> Enums.MediaFormat? {
    let field = GraphQLField.leaf(
      field: "format",
      parent: "UserFormatStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.MediaFormat?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias UserFormatStatistic<W> = Selection<W, Objects.UserFormatStatistic>
}
extension Objects {
  public struct UserStatusStatistic {}
}

extension Fields where TypeLock == Objects.UserStatusStatistic {

  public func count() throws -> Int {
    let field = GraphQLField.leaf(
      field: "count",
      parent: "UserStatusStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func meanScore() throws -> Double {
    let field = GraphQLField.leaf(
      field: "meanScore",
      parent: "UserStatusStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Double(from: $0) }
    case .selecting:
      return Double.mockValue
    }
  }

  public func minutesWatched() throws -> Int {
    let field = GraphQLField.leaf(
      field: "minutesWatched",
      parent: "UserStatusStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func chaptersRead() throws -> Int {
    let field = GraphQLField.leaf(
      field: "chaptersRead",
      parent: "UserStatusStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func mediaIds() throws -> [Int?] {
    let field = GraphQLField.leaf(
      field: "mediaIds",
      parent: "UserStatusStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [Int?](from: $0) }
    case .selecting:
      return []
    }
  }

  public func status() throws -> Enums.MediaListStatus? {
    let field = GraphQLField.leaf(
      field: "status",
      parent: "UserStatusStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.MediaListStatus?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias UserStatusStatistic<W> = Selection<W, Objects.UserStatusStatistic>
}
extension Objects {
  public struct UserScoreStatistic {}
}

extension Fields where TypeLock == Objects.UserScoreStatistic {

  public func count() throws -> Int {
    let field = GraphQLField.leaf(
      field: "count",
      parent: "UserScoreStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func meanScore() throws -> Double {
    let field = GraphQLField.leaf(
      field: "meanScore",
      parent: "UserScoreStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Double(from: $0) }
    case .selecting:
      return Double.mockValue
    }
  }

  public func minutesWatched() throws -> Int {
    let field = GraphQLField.leaf(
      field: "minutesWatched",
      parent: "UserScoreStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func chaptersRead() throws -> Int {
    let field = GraphQLField.leaf(
      field: "chaptersRead",
      parent: "UserScoreStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func mediaIds() throws -> [Int?] {
    let field = GraphQLField.leaf(
      field: "mediaIds",
      parent: "UserScoreStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [Int?](from: $0) }
    case .selecting:
      return []
    }
  }

  public func score() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "score",
      parent: "UserScoreStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias UserScoreStatistic<W> = Selection<W, Objects.UserScoreStatistic>
}
extension Objects {
  public struct UserLengthStatistic {}
}

extension Fields where TypeLock == Objects.UserLengthStatistic {

  public func count() throws -> Int {
    let field = GraphQLField.leaf(
      field: "count",
      parent: "UserLengthStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func meanScore() throws -> Double {
    let field = GraphQLField.leaf(
      field: "meanScore",
      parent: "UserLengthStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Double(from: $0) }
    case .selecting:
      return Double.mockValue
    }
  }

  public func minutesWatched() throws -> Int {
    let field = GraphQLField.leaf(
      field: "minutesWatched",
      parent: "UserLengthStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func chaptersRead() throws -> Int {
    let field = GraphQLField.leaf(
      field: "chaptersRead",
      parent: "UserLengthStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func mediaIds() throws -> [Int?] {
    let field = GraphQLField.leaf(
      field: "mediaIds",
      parent: "UserLengthStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [Int?](from: $0) }
    case .selecting:
      return []
    }
  }

  public func length() throws -> String? {
    let field = GraphQLField.leaf(
      field: "length",
      parent: "UserLengthStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias UserLengthStatistic<W> = Selection<W, Objects.UserLengthStatistic>
}
extension Objects {
  public struct UserReleaseYearStatistic {}
}

extension Fields where TypeLock == Objects.UserReleaseYearStatistic {

  public func count() throws -> Int {
    let field = GraphQLField.leaf(
      field: "count",
      parent: "UserReleaseYearStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func meanScore() throws -> Double {
    let field = GraphQLField.leaf(
      field: "meanScore",
      parent: "UserReleaseYearStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Double(from: $0) }
    case .selecting:
      return Double.mockValue
    }
  }

  public func minutesWatched() throws -> Int {
    let field = GraphQLField.leaf(
      field: "minutesWatched",
      parent: "UserReleaseYearStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func chaptersRead() throws -> Int {
    let field = GraphQLField.leaf(
      field: "chaptersRead",
      parent: "UserReleaseYearStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func mediaIds() throws -> [Int?] {
    let field = GraphQLField.leaf(
      field: "mediaIds",
      parent: "UserReleaseYearStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [Int?](from: $0) }
    case .selecting:
      return []
    }
  }

  public func releaseYear() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "releaseYear",
      parent: "UserReleaseYearStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias UserReleaseYearStatistic<W> = Selection<W, Objects.UserReleaseYearStatistic>
}
extension Objects {
  public struct UserStartYearStatistic {}
}

extension Fields where TypeLock == Objects.UserStartYearStatistic {

  public func count() throws -> Int {
    let field = GraphQLField.leaf(
      field: "count",
      parent: "UserStartYearStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func meanScore() throws -> Double {
    let field = GraphQLField.leaf(
      field: "meanScore",
      parent: "UserStartYearStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Double(from: $0) }
    case .selecting:
      return Double.mockValue
    }
  }

  public func minutesWatched() throws -> Int {
    let field = GraphQLField.leaf(
      field: "minutesWatched",
      parent: "UserStartYearStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func chaptersRead() throws -> Int {
    let field = GraphQLField.leaf(
      field: "chaptersRead",
      parent: "UserStartYearStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func mediaIds() throws -> [Int?] {
    let field = GraphQLField.leaf(
      field: "mediaIds",
      parent: "UserStartYearStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [Int?](from: $0) }
    case .selecting:
      return []
    }
  }

  public func startYear() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "startYear",
      parent: "UserStartYearStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias UserStartYearStatistic<W> = Selection<W, Objects.UserStartYearStatistic>
}
extension Objects {
  public struct UserGenreStatistic {}
}

extension Fields where TypeLock == Objects.UserGenreStatistic {

  public func count() throws -> Int {
    let field = GraphQLField.leaf(
      field: "count",
      parent: "UserGenreStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func meanScore() throws -> Double {
    let field = GraphQLField.leaf(
      field: "meanScore",
      parent: "UserGenreStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Double(from: $0) }
    case .selecting:
      return Double.mockValue
    }
  }

  public func minutesWatched() throws -> Int {
    let field = GraphQLField.leaf(
      field: "minutesWatched",
      parent: "UserGenreStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func chaptersRead() throws -> Int {
    let field = GraphQLField.leaf(
      field: "chaptersRead",
      parent: "UserGenreStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func mediaIds() throws -> [Int?] {
    let field = GraphQLField.leaf(
      field: "mediaIds",
      parent: "UserGenreStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [Int?](from: $0) }
    case .selecting:
      return []
    }
  }

  public func genre() throws -> String? {
    let field = GraphQLField.leaf(
      field: "genre",
      parent: "UserGenreStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias UserGenreStatistic<W> = Selection<W, Objects.UserGenreStatistic>
}
extension Objects {
  public struct UserTagStatistic {}
}

extension Fields where TypeLock == Objects.UserTagStatistic {

  public func count() throws -> Int {
    let field = GraphQLField.leaf(
      field: "count",
      parent: "UserTagStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func meanScore() throws -> Double {
    let field = GraphQLField.leaf(
      field: "meanScore",
      parent: "UserTagStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Double(from: $0) }
    case .selecting:
      return Double.mockValue
    }
  }

  public func minutesWatched() throws -> Int {
    let field = GraphQLField.leaf(
      field: "minutesWatched",
      parent: "UserTagStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func chaptersRead() throws -> Int {
    let field = GraphQLField.leaf(
      field: "chaptersRead",
      parent: "UserTagStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func mediaIds() throws -> [Int?] {
    let field = GraphQLField.leaf(
      field: "mediaIds",
      parent: "UserTagStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [Int?](from: $0) }
    case .selecting:
      return []
    }
  }

  public func tag<T>(selection: Selection<T, Objects.MediaTag?>) throws -> T {
    let field = GraphQLField.composite(
      field: "tag",
      parent: "UserTagStatistic",
      type: "MediaTag",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias UserTagStatistic<W> = Selection<W, Objects.UserTagStatistic>
}
extension Objects {
  public struct UserCountryStatistic {}
}

extension Fields where TypeLock == Objects.UserCountryStatistic {

  public func count() throws -> Int {
    let field = GraphQLField.leaf(
      field: "count",
      parent: "UserCountryStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func meanScore() throws -> Double {
    let field = GraphQLField.leaf(
      field: "meanScore",
      parent: "UserCountryStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Double(from: $0) }
    case .selecting:
      return Double.mockValue
    }
  }

  public func minutesWatched() throws -> Int {
    let field = GraphQLField.leaf(
      field: "minutesWatched",
      parent: "UserCountryStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func chaptersRead() throws -> Int {
    let field = GraphQLField.leaf(
      field: "chaptersRead",
      parent: "UserCountryStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func mediaIds() throws -> [Int?] {
    let field = GraphQLField.leaf(
      field: "mediaIds",
      parent: "UserCountryStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [Int?](from: $0) }
    case .selecting:
      return []
    }
  }

  public func country() throws -> AnyCodable? {
    let field = GraphQLField.leaf(
      field: "country",
      parent: "UserCountryStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try AnyCodable?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias UserCountryStatistic<W> = Selection<W, Objects.UserCountryStatistic>
}
extension Objects {
  public struct UserVoiceActorStatistic {}
}

extension Fields where TypeLock == Objects.UserVoiceActorStatistic {

  public func count() throws -> Int {
    let field = GraphQLField.leaf(
      field: "count",
      parent: "UserVoiceActorStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func meanScore() throws -> Double {
    let field = GraphQLField.leaf(
      field: "meanScore",
      parent: "UserVoiceActorStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Double(from: $0) }
    case .selecting:
      return Double.mockValue
    }
  }

  public func minutesWatched() throws -> Int {
    let field = GraphQLField.leaf(
      field: "minutesWatched",
      parent: "UserVoiceActorStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func chaptersRead() throws -> Int {
    let field = GraphQLField.leaf(
      field: "chaptersRead",
      parent: "UserVoiceActorStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func mediaIds() throws -> [Int?] {
    let field = GraphQLField.leaf(
      field: "mediaIds",
      parent: "UserVoiceActorStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [Int?](from: $0) }
    case .selecting:
      return []
    }
  }

  public func voiceActor<T>(selection: Selection<T, Objects.Staff?>) throws -> T {
    let field = GraphQLField.composite(
      field: "voiceActor",
      parent: "UserVoiceActorStatistic",
      type: "Staff",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func characterIds() throws -> [Int?] {
    let field = GraphQLField.leaf(
      field: "characterIds",
      parent: "UserVoiceActorStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [Int?](from: $0) }
    case .selecting:
      return []
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias UserVoiceActorStatistic<W> = Selection<W, Objects.UserVoiceActorStatistic>
}
extension Objects {
  public struct UserStaffStatistic {}
}

extension Fields where TypeLock == Objects.UserStaffStatistic {

  public func count() throws -> Int {
    let field = GraphQLField.leaf(
      field: "count",
      parent: "UserStaffStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func meanScore() throws -> Double {
    let field = GraphQLField.leaf(
      field: "meanScore",
      parent: "UserStaffStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Double(from: $0) }
    case .selecting:
      return Double.mockValue
    }
  }

  public func minutesWatched() throws -> Int {
    let field = GraphQLField.leaf(
      field: "minutesWatched",
      parent: "UserStaffStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func chaptersRead() throws -> Int {
    let field = GraphQLField.leaf(
      field: "chaptersRead",
      parent: "UserStaffStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func mediaIds() throws -> [Int?] {
    let field = GraphQLField.leaf(
      field: "mediaIds",
      parent: "UserStaffStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [Int?](from: $0) }
    case .selecting:
      return []
    }
  }

  public func staff<T>(selection: Selection<T, Objects.Staff?>) throws -> T {
    let field = GraphQLField.composite(
      field: "staff",
      parent: "UserStaffStatistic",
      type: "Staff",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias UserStaffStatistic<W> = Selection<W, Objects.UserStaffStatistic>
}
extension Objects {
  public struct UserStudioStatistic {}
}

extension Fields where TypeLock == Objects.UserStudioStatistic {

  public func count() throws -> Int {
    let field = GraphQLField.leaf(
      field: "count",
      parent: "UserStudioStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func meanScore() throws -> Double {
    let field = GraphQLField.leaf(
      field: "meanScore",
      parent: "UserStudioStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Double(from: $0) }
    case .selecting:
      return Double.mockValue
    }
  }

  public func minutesWatched() throws -> Int {
    let field = GraphQLField.leaf(
      field: "minutesWatched",
      parent: "UserStudioStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func chaptersRead() throws -> Int {
    let field = GraphQLField.leaf(
      field: "chaptersRead",
      parent: "UserStudioStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func mediaIds() throws -> [Int?] {
    let field = GraphQLField.leaf(
      field: "mediaIds",
      parent: "UserStudioStatistic",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [Int?](from: $0) }
    case .selecting:
      return []
    }
  }

  public func studio<T>(selection: Selection<T, Objects.Studio?>) throws -> T {
    let field = GraphQLField.composite(
      field: "studio",
      parent: "UserStudioStatistic",
      type: "Studio",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias UserStudioStatistic<W> = Selection<W, Objects.UserStudioStatistic>
}
extension Objects {
  public struct UserStats {}
}

extension Fields where TypeLock == Objects.UserStats {
  /// The amount of anime the user has watched in minutes

  public func watchedTime() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "watchedTime",
      parent: "UserStats",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of manga chapters the user has read

  public func chaptersRead() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "chaptersRead",
      parent: "UserStats",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func activityHistory<T>(selection: Selection<T, [Objects.UserActivityHistory?]?>) throws
    -> T
  {
    let field = GraphQLField.composite(
      field: "activityHistory",
      parent: "UserStats",
      type: "UserActivityHistory",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func animeStatusDistribution<T>(selection: Selection<T, [Objects.StatusDistribution?]?>)
    throws -> T
  {
    let field = GraphQLField.composite(
      field: "animeStatusDistribution",
      parent: "UserStats",
      type: "StatusDistribution",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func mangaStatusDistribution<T>(selection: Selection<T, [Objects.StatusDistribution?]?>)
    throws -> T
  {
    let field = GraphQLField.composite(
      field: "mangaStatusDistribution",
      parent: "UserStats",
      type: "StatusDistribution",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func animeScoreDistribution<T>(selection: Selection<T, [Objects.ScoreDistribution?]?>)
    throws -> T
  {
    let field = GraphQLField.composite(
      field: "animeScoreDistribution",
      parent: "UserStats",
      type: "ScoreDistribution",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func mangaScoreDistribution<T>(selection: Selection<T, [Objects.ScoreDistribution?]?>)
    throws -> T
  {
    let field = GraphQLField.composite(
      field: "mangaScoreDistribution",
      parent: "UserStats",
      type: "ScoreDistribution",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func animeListScores<T>(selection: Selection<T, Objects.ListScoreStats?>) throws -> T {
    let field = GraphQLField.composite(
      field: "animeListScores",
      parent: "UserStats",
      type: "ListScoreStats",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func mangaListScores<T>(selection: Selection<T, Objects.ListScoreStats?>) throws -> T {
    let field = GraphQLField.composite(
      field: "mangaListScores",
      parent: "UserStats",
      type: "ListScoreStats",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func favouredGenresOverview<T>(selection: Selection<T, [Objects.GenreStats?]?>) throws -> T
  {
    let field = GraphQLField.composite(
      field: "favouredGenresOverview",
      parent: "UserStats",
      type: "GenreStats",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func favouredGenres<T>(selection: Selection<T, [Objects.GenreStats?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "favouredGenres",
      parent: "UserStats",
      type: "GenreStats",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func favouredTags<T>(selection: Selection<T, [Objects.TagStats?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "favouredTags",
      parent: "UserStats",
      type: "TagStats",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func favouredActors<T>(selection: Selection<T, [Objects.StaffStats?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "favouredActors",
      parent: "UserStats",
      type: "StaffStats",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func favouredStaff<T>(selection: Selection<T, [Objects.StaffStats?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "favouredStaff",
      parent: "UserStats",
      type: "StaffStats",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func favouredStudios<T>(selection: Selection<T, [Objects.StudioStats?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "favouredStudios",
      parent: "UserStats",
      type: "StudioStats",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func favouredYears<T>(selection: Selection<T, [Objects.YearStats?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "favouredYears",
      parent: "UserStats",
      type: "YearStats",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func favouredFormats<T>(selection: Selection<T, [Objects.FormatStats?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "favouredFormats",
      parent: "UserStats",
      type: "FormatStats",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias UserStats<W> = Selection<W, Objects.UserStats>
}
extension Objects {
  public struct UserActivityHistory {}
}

extension Fields where TypeLock == Objects.UserActivityHistory {
  /// The day the activity took place (Unix timestamp)

  public func date() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "date",
      parent: "UserActivityHistory",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of activity on the day

  public func amount() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "amount",
      parent: "UserActivityHistory",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The level of activity represented on a 1-10 scale

  public func level() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "level",
      parent: "UserActivityHistory",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias UserActivityHistory<W> = Selection<W, Objects.UserActivityHistory>
}
extension Objects {
  public struct ListScoreStats {}
}

extension Fields where TypeLock == Objects.ListScoreStats {

  public func meanScore() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "meanScore",
      parent: "ListScoreStats",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func standardDeviation() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "standardDeviation",
      parent: "ListScoreStats",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias ListScoreStats<W> = Selection<W, Objects.ListScoreStats>
}
extension Objects {
  public struct GenreStats {}
}

extension Fields where TypeLock == Objects.GenreStats {

  public func genre() throws -> String? {
    let field = GraphQLField.leaf(
      field: "genre",
      parent: "GenreStats",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func amount() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "amount",
      parent: "GenreStats",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func meanScore() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "meanScore",
      parent: "GenreStats",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of time in minutes the genre has been watched by the user

  public func timeWatched() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "timeWatched",
      parent: "GenreStats",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias GenreStats<W> = Selection<W, Objects.GenreStats>
}
extension Objects {
  public struct TagStats {}
}

extension Fields where TypeLock == Objects.TagStats {

  public func tag<T>(selection: Selection<T, Objects.MediaTag?>) throws -> T {
    let field = GraphQLField.composite(
      field: "tag",
      parent: "TagStats",
      type: "MediaTag",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func amount() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "amount",
      parent: "TagStats",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func meanScore() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "meanScore",
      parent: "TagStats",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of time in minutes the tag has been watched by the user

  public func timeWatched() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "timeWatched",
      parent: "TagStats",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias TagStats<W> = Selection<W, Objects.TagStats>
}
extension Objects {
  public struct StaffStats {}
}

extension Fields where TypeLock == Objects.StaffStats {

  public func staff<T>(selection: Selection<T, Objects.Staff?>) throws -> T {
    let field = GraphQLField.composite(
      field: "staff",
      parent: "StaffStats",
      type: "Staff",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func amount() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "amount",
      parent: "StaffStats",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func meanScore() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "meanScore",
      parent: "StaffStats",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of time in minutes the staff member has been watched by the user

  public func timeWatched() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "timeWatched",
      parent: "StaffStats",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias StaffStats<W> = Selection<W, Objects.StaffStats>
}
extension Objects {
  public struct StudioStats {}
}

extension Fields where TypeLock == Objects.StudioStats {

  public func studio<T>(selection: Selection<T, Objects.Studio?>) throws -> T {
    let field = GraphQLField.composite(
      field: "studio",
      parent: "StudioStats",
      type: "Studio",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func amount() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "amount",
      parent: "StudioStats",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func meanScore() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "meanScore",
      parent: "StudioStats",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of time in minutes the studio's works have been watched by the user

  public func timeWatched() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "timeWatched",
      parent: "StudioStats",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias StudioStats<W> = Selection<W, Objects.StudioStats>
}
extension Objects {
  public struct YearStats {}
}

extension Fields where TypeLock == Objects.YearStats {

  public func year() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "year",
      parent: "YearStats",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func amount() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "amount",
      parent: "YearStats",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func meanScore() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "meanScore",
      parent: "YearStats",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias YearStats<W> = Selection<W, Objects.YearStats>
}
extension Objects {
  public struct FormatStats {}
}

extension Fields where TypeLock == Objects.FormatStats {

  public func format() throws -> Enums.MediaFormat? {
    let field = GraphQLField.leaf(
      field: "format",
      parent: "FormatStats",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.MediaFormat?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func amount() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "amount",
      parent: "FormatStats",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias FormatStats<W> = Selection<W, Objects.FormatStats>
}
extension Objects {
  public struct UserPreviousName {}
}

extension Fields where TypeLock == Objects.UserPreviousName {
  /// A previous name of the user.

  public func name() throws -> String? {
    let field = GraphQLField.leaf(
      field: "name",
      parent: "UserPreviousName",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// When the user first changed from this name.

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "UserPreviousName",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// When the user most recently changed from this name.

  public func updatedAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "updatedAt",
      parent: "UserPreviousName",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias UserPreviousName<W> = Selection<W, Objects.UserPreviousName>
}
extension Objects {
  public struct AiringNotification {}
}

extension Fields where TypeLock == Objects.AiringNotification {
  /// The id of the Notification

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "AiringNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The type of notification

  public func type() throws -> Enums.NotificationType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "AiringNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.NotificationType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The id of the aired anime

  public func animeId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "animeId",
      parent: "AiringNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The episode number that just aired

  public func episode() throws -> Int {
    let field = GraphQLField.leaf(
      field: "episode",
      parent: "AiringNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The notification context text

  public func contexts() throws -> [String?]? {
    let field = GraphQLField.leaf(
      field: "contexts",
      parent: "AiringNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [String?]?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time the notification was created at

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "AiringNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The associated media of the airing schedule

  public func media<T>(selection: Selection<T, Objects.Media?>) throws -> T {
    let field = GraphQLField.composite(
      field: "media",
      parent: "AiringNotification",
      type: "Media",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias AiringNotification<W> = Selection<W, Objects.AiringNotification>
}
extension Objects {
  public struct FollowingNotification {}
}

extension Fields where TypeLock == Objects.FollowingNotification {
  /// The id of the Notification

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "FollowingNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The id of the user who followed the authenticated user

  public func userId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "userId",
      parent: "FollowingNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The type of notification

  public func type() throws -> Enums.NotificationType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "FollowingNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.NotificationType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The notification context text

  public func context() throws -> String? {
    let field = GraphQLField.leaf(
      field: "context",
      parent: "FollowingNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time the notification was created at

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "FollowingNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The liked activity

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "FollowingNotification",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias FollowingNotification<W> = Selection<W, Objects.FollowingNotification>
}
extension Objects {
  public struct ActivityMessageNotification {}
}

extension Fields where TypeLock == Objects.ActivityMessageNotification {
  /// The id of the Notification

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "ActivityMessageNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The if of the user who send the message

  public func userId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "userId",
      parent: "ActivityMessageNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The type of notification

  public func type() throws -> Enums.NotificationType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "ActivityMessageNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.NotificationType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The id of the activity message

  public func activityId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "activityId",
      parent: "ActivityMessageNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The notification context text

  public func context() throws -> String? {
    let field = GraphQLField.leaf(
      field: "context",
      parent: "ActivityMessageNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time the notification was created at

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "ActivityMessageNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The message activity

  public func message<T>(selection: Selection<T, Objects.MessageActivity?>) throws -> T {
    let field = GraphQLField.composite(
      field: "message",
      parent: "ActivityMessageNotification",
      type: "MessageActivity",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The user who sent the message

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "ActivityMessageNotification",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias ActivityMessageNotification<W> = Selection<
    W, Objects.ActivityMessageNotification
  >
}
extension Objects {
  public struct MessageActivity {}
}

extension Fields where TypeLock == Objects.MessageActivity {
  /// The id of the activity

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "MessageActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The user id of the activity's recipient

  public func recipientId() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "recipientId",
      parent: "MessageActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The user id of the activity's sender

  public func messengerId() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "messengerId",
      parent: "MessageActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The type of the activity

  public func type() throws -> Enums.ActivityType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "MessageActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.ActivityType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The number of activity replies

  public func replyCount() throws -> Int {
    let field = GraphQLField.leaf(
      field: "replyCount",
      parent: "MessageActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The message text (Markdown)

  public func message(asHtml: OptionalArgument<Bool> = .init()) throws -> String? {
    let field = GraphQLField.leaf(
      field: "message",
      parent: "MessageActivity",
      arguments: [Argument(name: "asHtml", type: "Boolean", value: asHtml)]
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the activity is locked and can receive replies

  public func isLocked() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isLocked",
      parent: "MessageActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the currently authenticated user is subscribed to the activity

  public func isSubscribed() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isSubscribed",
      parent: "MessageActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of likes the activity has

  public func likeCount() throws -> Int {
    let field = GraphQLField.leaf(
      field: "likeCount",
      parent: "MessageActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// If the currently authenticated user liked the activity

  public func isLiked() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isLiked",
      parent: "MessageActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the message is private and only viewable to the sender and recipients

  public func isPrivate() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isPrivate",
      parent: "MessageActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The url for the activity page on the AniList website

  public func siteUrl() throws -> String? {
    let field = GraphQLField.leaf(
      field: "siteUrl",
      parent: "MessageActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time the activity was created at

  public func createdAt() throws -> Int {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "MessageActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The user who the activity message was sent to

  public func recipient<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "recipient",
      parent: "MessageActivity",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The user who sent the activity message

  public func messenger<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "messenger",
      parent: "MessageActivity",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The written replies to the activity

  public func replies<T>(selection: Selection<T, [Objects.ActivityReply?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "replies",
      parent: "MessageActivity",
      type: "ActivityReply",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The users who liked the activity

  public func likes<T>(selection: Selection<T, [Objects.User?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "likes",
      parent: "MessageActivity",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MessageActivity<W> = Selection<W, Objects.MessageActivity>
}
extension Objects {
  public struct ActivityReply {}
}

extension Fields where TypeLock == Objects.ActivityReply {
  /// The id of the reply

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "ActivityReply",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The id of the replies creator

  public func userId() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "userId",
      parent: "ActivityReply",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The id of the parent activity

  public func activityId() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "activityId",
      parent: "ActivityReply",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The reply text

  public func text(asHtml: OptionalArgument<Bool> = .init()) throws -> String? {
    let field = GraphQLField.leaf(
      field: "text",
      parent: "ActivityReply",
      arguments: [Argument(name: "asHtml", type: "Boolean", value: asHtml)]
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of likes the reply has

  public func likeCount() throws -> Int {
    let field = GraphQLField.leaf(
      field: "likeCount",
      parent: "ActivityReply",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// If the currently authenticated user liked the reply

  public func isLiked() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isLiked",
      parent: "ActivityReply",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time the reply was created at

  public func createdAt() throws -> Int {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "ActivityReply",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The user who created reply

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "ActivityReply",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The users who liked the reply

  public func likes<T>(selection: Selection<T, [Objects.User?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "likes",
      parent: "ActivityReply",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias ActivityReply<W> = Selection<W, Objects.ActivityReply>
}
extension Objects {
  public struct ActivityMentionNotification {}
}

extension Fields where TypeLock == Objects.ActivityMentionNotification {
  /// The id of the Notification

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "ActivityMentionNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The id of the user who mentioned the authenticated user

  public func userId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "userId",
      parent: "ActivityMentionNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The type of notification

  public func type() throws -> Enums.NotificationType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "ActivityMentionNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.NotificationType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The id of the activity where mentioned

  public func activityId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "activityId",
      parent: "ActivityMentionNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The notification context text

  public func context() throws -> String? {
    let field = GraphQLField.leaf(
      field: "context",
      parent: "ActivityMentionNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time the notification was created at

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "ActivityMentionNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The liked activity

  public func activity<T>(selection: Selection<T, Unions.ActivityUnion?>) throws -> T {
    let field = GraphQLField.composite(
      field: "activity",
      parent: "ActivityMentionNotification",
      type: "ActivityUnion",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The user who mentioned the authenticated user

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "ActivityMentionNotification",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias ActivityMentionNotification<W> = Selection<
    W, Objects.ActivityMentionNotification
  >
}
extension Objects {
  public struct TextActivity {}
}

extension Fields where TypeLock == Objects.TextActivity {
  /// The id of the activity

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "TextActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The user id of the activity's creator

  public func userId() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "userId",
      parent: "TextActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The type of activity

  public func type() throws -> Enums.ActivityType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "TextActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.ActivityType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The number of activity replies

  public func replyCount() throws -> Int {
    let field = GraphQLField.leaf(
      field: "replyCount",
      parent: "TextActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The status text (Markdown)

  public func text(asHtml: OptionalArgument<Bool> = .init()) throws -> String? {
    let field = GraphQLField.leaf(
      field: "text",
      parent: "TextActivity",
      arguments: [Argument(name: "asHtml", type: "Boolean", value: asHtml)]
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The url for the activity page on the AniList website

  public func siteUrl() throws -> String? {
    let field = GraphQLField.leaf(
      field: "siteUrl",
      parent: "TextActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the activity is locked and can receive replies

  public func isLocked() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isLocked",
      parent: "TextActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the currently authenticated user is subscribed to the activity

  public func isSubscribed() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isSubscribed",
      parent: "TextActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of likes the activity has

  public func likeCount() throws -> Int {
    let field = GraphQLField.leaf(
      field: "likeCount",
      parent: "TextActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// If the currently authenticated user liked the activity

  public func isLiked() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isLiked",
      parent: "TextActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the activity is pinned to the top of the users activity feed

  public func isPinned() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isPinned",
      parent: "TextActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time the activity was created at

  public func createdAt() throws -> Int {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "TextActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The user who created the activity

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "TextActivity",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The written replies to the activity

  public func replies<T>(selection: Selection<T, [Objects.ActivityReply?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "replies",
      parent: "TextActivity",
      type: "ActivityReply",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The users who liked the activity

  public func likes<T>(selection: Selection<T, [Objects.User?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "likes",
      parent: "TextActivity",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias TextActivity<W> = Selection<W, Objects.TextActivity>
}
extension Objects {
  public struct ListActivity {}
}

extension Fields where TypeLock == Objects.ListActivity {
  /// The id of the activity

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "ListActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The user id of the activity's creator

  public func userId() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "userId",
      parent: "ListActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The type of activity

  public func type() throws -> Enums.ActivityType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "ListActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.ActivityType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The number of activity replies

  public func replyCount() throws -> Int {
    let field = GraphQLField.leaf(
      field: "replyCount",
      parent: "ListActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The list item's textual status

  public func status() throws -> String? {
    let field = GraphQLField.leaf(
      field: "status",
      parent: "ListActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The list progress made

  public func progress() throws -> String? {
    let field = GraphQLField.leaf(
      field: "progress",
      parent: "ListActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the activity is locked and can receive replies

  public func isLocked() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isLocked",
      parent: "ListActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the currently authenticated user is subscribed to the activity

  public func isSubscribed() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isSubscribed",
      parent: "ListActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of likes the activity has

  public func likeCount() throws -> Int {
    let field = GraphQLField.leaf(
      field: "likeCount",
      parent: "ListActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// If the currently authenticated user liked the activity

  public func isLiked() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isLiked",
      parent: "ListActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the activity is pinned to the top of the users activity feed

  public func isPinned() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isPinned",
      parent: "ListActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The url for the activity page on the AniList website

  public func siteUrl() throws -> String? {
    let field = GraphQLField.leaf(
      field: "siteUrl",
      parent: "ListActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time the activity was created at

  public func createdAt() throws -> Int {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "ListActivity",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The owner of the activity

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "ListActivity",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The associated media to the activity update

  public func media<T>(selection: Selection<T, Objects.Media?>) throws -> T {
    let field = GraphQLField.composite(
      field: "media",
      parent: "ListActivity",
      type: "Media",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The written replies to the activity

  public func replies<T>(selection: Selection<T, [Objects.ActivityReply?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "replies",
      parent: "ListActivity",
      type: "ActivityReply",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The users who liked the activity

  public func likes<T>(selection: Selection<T, [Objects.User?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "likes",
      parent: "ListActivity",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias ListActivity<W> = Selection<W, Objects.ListActivity>
}
extension Objects {
  public struct ActivityReplyNotification {}
}

extension Fields where TypeLock == Objects.ActivityReplyNotification {
  /// The id of the Notification

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "ActivityReplyNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The id of the user who replied to the activity

  public func userId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "userId",
      parent: "ActivityReplyNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The type of notification

  public func type() throws -> Enums.NotificationType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "ActivityReplyNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.NotificationType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The id of the activity which was replied too

  public func activityId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "activityId",
      parent: "ActivityReplyNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The notification context text

  public func context() throws -> String? {
    let field = GraphQLField.leaf(
      field: "context",
      parent: "ActivityReplyNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time the notification was created at

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "ActivityReplyNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The liked activity

  public func activity<T>(selection: Selection<T, Unions.ActivityUnion?>) throws -> T {
    let field = GraphQLField.composite(
      field: "activity",
      parent: "ActivityReplyNotification",
      type: "ActivityUnion",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The user who replied to the activity

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "ActivityReplyNotification",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias ActivityReplyNotification<W> = Selection<W, Objects.ActivityReplyNotification>
}
extension Objects {
  public struct ActivityReplySubscribedNotification {}
}

extension Fields where TypeLock == Objects.ActivityReplySubscribedNotification {
  /// The id of the Notification

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "ActivityReplySubscribedNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The id of the user who replied to the activity

  public func userId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "userId",
      parent: "ActivityReplySubscribedNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The type of notification

  public func type() throws -> Enums.NotificationType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "ActivityReplySubscribedNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.NotificationType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The id of the activity which was replied too

  public func activityId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "activityId",
      parent: "ActivityReplySubscribedNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The notification context text

  public func context() throws -> String? {
    let field = GraphQLField.leaf(
      field: "context",
      parent: "ActivityReplySubscribedNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time the notification was created at

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "ActivityReplySubscribedNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The liked activity

  public func activity<T>(selection: Selection<T, Unions.ActivityUnion?>) throws -> T {
    let field = GraphQLField.composite(
      field: "activity",
      parent: "ActivityReplySubscribedNotification",
      type: "ActivityUnion",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The user who replied to the activity

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "ActivityReplySubscribedNotification",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias ActivityReplySubscribedNotification<W> = Selection<
    W, Objects.ActivityReplySubscribedNotification
  >
}
extension Objects {
  public struct ActivityLikeNotification {}
}

extension Fields where TypeLock == Objects.ActivityLikeNotification {
  /// The id of the Notification

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "ActivityLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The id of the user who liked to the activity

  public func userId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "userId",
      parent: "ActivityLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The type of notification

  public func type() throws -> Enums.NotificationType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "ActivityLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.NotificationType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The id of the activity which was liked

  public func activityId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "activityId",
      parent: "ActivityLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The notification context text

  public func context() throws -> String? {
    let field = GraphQLField.leaf(
      field: "context",
      parent: "ActivityLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time the notification was created at

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "ActivityLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The liked activity

  public func activity<T>(selection: Selection<T, Unions.ActivityUnion?>) throws -> T {
    let field = GraphQLField.composite(
      field: "activity",
      parent: "ActivityLikeNotification",
      type: "ActivityUnion",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The user who liked the activity

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "ActivityLikeNotification",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias ActivityLikeNotification<W> = Selection<W, Objects.ActivityLikeNotification>
}
extension Objects {
  public struct ActivityReplyLikeNotification {}
}

extension Fields where TypeLock == Objects.ActivityReplyLikeNotification {
  /// The id of the Notification

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "ActivityReplyLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The id of the user who liked to the activity reply

  public func userId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "userId",
      parent: "ActivityReplyLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The type of notification

  public func type() throws -> Enums.NotificationType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "ActivityReplyLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.NotificationType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The id of the activity where the reply which was liked

  public func activityId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "activityId",
      parent: "ActivityReplyLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The notification context text

  public func context() throws -> String? {
    let field = GraphQLField.leaf(
      field: "context",
      parent: "ActivityReplyLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time the notification was created at

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "ActivityReplyLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The liked activity

  public func activity<T>(selection: Selection<T, Unions.ActivityUnion?>) throws -> T {
    let field = GraphQLField.composite(
      field: "activity",
      parent: "ActivityReplyLikeNotification",
      type: "ActivityUnion",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The user who liked the activity reply

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "ActivityReplyLikeNotification",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias ActivityReplyLikeNotification<W> = Selection<
    W, Objects.ActivityReplyLikeNotification
  >
}
extension Objects {
  public struct ThreadCommentMentionNotification {}
}

extension Fields where TypeLock == Objects.ThreadCommentMentionNotification {
  /// The id of the Notification

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "ThreadCommentMentionNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The id of the user who mentioned the authenticated user

  public func userId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "userId",
      parent: "ThreadCommentMentionNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The type of notification

  public func type() throws -> Enums.NotificationType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "ThreadCommentMentionNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.NotificationType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The id of the comment where mentioned

  public func commentId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "commentId",
      parent: "ThreadCommentMentionNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The notification context text

  public func context() throws -> String? {
    let field = GraphQLField.leaf(
      field: "context",
      parent: "ThreadCommentMentionNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time the notification was created at

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "ThreadCommentMentionNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The thread that the relevant comment belongs to

  public func thread<T>(selection: Selection<T, Objects.Thread?>) throws -> T {
    let field = GraphQLField.composite(
      field: "thread",
      parent: "ThreadCommentMentionNotification",
      type: "Thread",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The thread comment that included the @ mention

  public func comment<T>(selection: Selection<T, Objects.ThreadComment?>) throws -> T {
    let field = GraphQLField.composite(
      field: "comment",
      parent: "ThreadCommentMentionNotification",
      type: "ThreadComment",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The user who mentioned the authenticated user

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "ThreadCommentMentionNotification",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias ThreadCommentMentionNotification<W> = Selection<
    W, Objects.ThreadCommentMentionNotification
  >
}
extension Objects {
  public struct Thread {}
}

extension Fields where TypeLock == Objects.Thread {
  /// The id of the thread

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "Thread",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The title of the thread

  public func title() throws -> String? {
    let field = GraphQLField.leaf(
      field: "title",
      parent: "Thread",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The text body of the thread (Markdown)

  public func body(asHtml: OptionalArgument<Bool> = .init()) throws -> String? {
    let field = GraphQLField.leaf(
      field: "body",
      parent: "Thread",
      arguments: [Argument(name: "asHtml", type: "Boolean", value: asHtml)]
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The id of the thread owner user

  public func userId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "userId",
      parent: "Thread",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The id of the user who most recently commented on the thread

  public func replyUserId() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "replyUserId",
      parent: "Thread",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The id of the most recent comment on the thread

  public func replyCommentId() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "replyCommentId",
      parent: "Thread",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The number of comments on the thread

  public func replyCount() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "replyCount",
      parent: "Thread",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The number of times users have viewed the thread

  public func viewCount() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "viewCount",
      parent: "Thread",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the thread is locked and can receive comments

  public func isLocked() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isLocked",
      parent: "Thread",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the thread is stickied and should be displayed at the top of the page

  public func isSticky() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isSticky",
      parent: "Thread",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the currently authenticated user is subscribed to the thread

  public func isSubscribed() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isSubscribed",
      parent: "Thread",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of likes the thread has

  public func likeCount() throws -> Int {
    let field = GraphQLField.leaf(
      field: "likeCount",
      parent: "Thread",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// If the currently authenticated user liked the thread

  public func isLiked() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isLiked",
      parent: "Thread",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time of the last reply

  public func repliedAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "repliedAt",
      parent: "Thread",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time of the thread creation

  public func createdAt() throws -> Int {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "Thread",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The time of the thread last update

  public func updatedAt() throws -> Int {
    let field = GraphQLField.leaf(
      field: "updatedAt",
      parent: "Thread",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The owner of the thread

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "Thread",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The user to last reply to the thread

  public func replyUser<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "replyUser",
      parent: "Thread",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The users who liked the thread

  public func likes<T>(selection: Selection<T, [Objects.User?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "likes",
      parent: "Thread",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The url for the thread page on the AniList website

  public func siteUrl() throws -> String? {
    let field = GraphQLField.leaf(
      field: "siteUrl",
      parent: "Thread",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The categories of the thread

  public func categories<T>(selection: Selection<T, [Objects.ThreadCategory?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "categories",
      parent: "Thread",
      type: "ThreadCategory",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The media categories of the thread

  public func mediaCategories<T>(selection: Selection<T, [Objects.Media?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "mediaCategories",
      parent: "Thread",
      type: "Media",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias Thread<W> = Selection<W, Objects.Thread>
}
extension Objects {
  public struct ThreadCategory {}
}

extension Fields where TypeLock == Objects.ThreadCategory {
  /// The id of the category

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "ThreadCategory",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The name of the category

  public func name() throws -> String {
    let field = GraphQLField.leaf(
      field: "name",
      parent: "ThreadCategory",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String(from: $0) }
    case .selecting:
      return String.mockValue
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias ThreadCategory<W> = Selection<W, Objects.ThreadCategory>
}
extension Objects {
  public struct ThreadComment {}
}

extension Fields where TypeLock == Objects.ThreadComment {
  /// The id of the comment

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "ThreadComment",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The user id of the comment's owner

  public func userId() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "userId",
      parent: "ThreadComment",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The id of thread the comment belongs to

  public func threadId() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "threadId",
      parent: "ThreadComment",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The text content of the comment (Markdown)

  public func comment(asHtml: OptionalArgument<Bool> = .init()) throws -> String? {
    let field = GraphQLField.leaf(
      field: "comment",
      parent: "ThreadComment",
      arguments: [Argument(name: "asHtml", type: "Boolean", value: asHtml)]
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The amount of likes the comment has

  public func likeCount() throws -> Int {
    let field = GraphQLField.leaf(
      field: "likeCount",
      parent: "ThreadComment",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// If the currently authenticated user liked the comment

  public func isLiked() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isLiked",
      parent: "ThreadComment",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The url for the comment page on the AniList website

  public func siteUrl() throws -> String? {
    let field = GraphQLField.leaf(
      field: "siteUrl",
      parent: "ThreadComment",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time of the comments creation

  public func createdAt() throws -> Int {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "ThreadComment",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The time of the comments last update

  public func updatedAt() throws -> Int {
    let field = GraphQLField.leaf(
      field: "updatedAt",
      parent: "ThreadComment",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The thread the comment belongs to

  public func thread<T>(selection: Selection<T, Objects.Thread?>) throws -> T {
    let field = GraphQLField.composite(
      field: "thread",
      parent: "ThreadComment",
      type: "Thread",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The user who created the comment

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "ThreadComment",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The users who liked the comment

  public func likes<T>(selection: Selection<T, [Objects.User?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "likes",
      parent: "ThreadComment",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The comment's child reply comments

  public func childComments() throws -> AnyCodable? {
    let field = GraphQLField.leaf(
      field: "childComments",
      parent: "ThreadComment",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try AnyCodable?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// If the comment tree is locked and may not receive replies or edits

  public func isLocked() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isLocked",
      parent: "ThreadComment",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias ThreadComment<W> = Selection<W, Objects.ThreadComment>
}
extension Objects {
  public struct ThreadCommentReplyNotification {}
}

extension Fields where TypeLock == Objects.ThreadCommentReplyNotification {
  /// The id of the Notification

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "ThreadCommentReplyNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The id of the user who create the comment reply

  public func userId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "userId",
      parent: "ThreadCommentReplyNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The type of notification

  public func type() throws -> Enums.NotificationType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "ThreadCommentReplyNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.NotificationType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The id of the reply comment

  public func commentId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "commentId",
      parent: "ThreadCommentReplyNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The notification context text

  public func context() throws -> String? {
    let field = GraphQLField.leaf(
      field: "context",
      parent: "ThreadCommentReplyNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time the notification was created at

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "ThreadCommentReplyNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The thread that the relevant comment belongs to

  public func thread<T>(selection: Selection<T, Objects.Thread?>) throws -> T {
    let field = GraphQLField.composite(
      field: "thread",
      parent: "ThreadCommentReplyNotification",
      type: "Thread",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The reply thread comment

  public func comment<T>(selection: Selection<T, Objects.ThreadComment?>) throws -> T {
    let field = GraphQLField.composite(
      field: "comment",
      parent: "ThreadCommentReplyNotification",
      type: "ThreadComment",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The user who replied to the activity

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "ThreadCommentReplyNotification",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias ThreadCommentReplyNotification<W> = Selection<
    W, Objects.ThreadCommentReplyNotification
  >
}
extension Objects {
  public struct ThreadCommentSubscribedNotification {}
}

extension Fields where TypeLock == Objects.ThreadCommentSubscribedNotification {
  /// The id of the Notification

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "ThreadCommentSubscribedNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The id of the user who commented on the thread

  public func userId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "userId",
      parent: "ThreadCommentSubscribedNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The type of notification

  public func type() throws -> Enums.NotificationType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "ThreadCommentSubscribedNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.NotificationType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The id of the new comment in the subscribed thread

  public func commentId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "commentId",
      parent: "ThreadCommentSubscribedNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The notification context text

  public func context() throws -> String? {
    let field = GraphQLField.leaf(
      field: "context",
      parent: "ThreadCommentSubscribedNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time the notification was created at

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "ThreadCommentSubscribedNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The thread that the relevant comment belongs to

  public func thread<T>(selection: Selection<T, Objects.Thread?>) throws -> T {
    let field = GraphQLField.composite(
      field: "thread",
      parent: "ThreadCommentSubscribedNotification",
      type: "Thread",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The reply thread comment

  public func comment<T>(selection: Selection<T, Objects.ThreadComment?>) throws -> T {
    let field = GraphQLField.composite(
      field: "comment",
      parent: "ThreadCommentSubscribedNotification",
      type: "ThreadComment",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The user who replied to the subscribed thread

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "ThreadCommentSubscribedNotification",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias ThreadCommentSubscribedNotification<W> = Selection<
    W, Objects.ThreadCommentSubscribedNotification
  >
}
extension Objects {
  public struct ThreadCommentLikeNotification {}
}

extension Fields where TypeLock == Objects.ThreadCommentLikeNotification {
  /// The id of the Notification

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "ThreadCommentLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The id of the user who liked to the activity

  public func userId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "userId",
      parent: "ThreadCommentLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The type of notification

  public func type() throws -> Enums.NotificationType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "ThreadCommentLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.NotificationType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The id of the activity which was liked

  public func commentId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "commentId",
      parent: "ThreadCommentLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The notification context text

  public func context() throws -> String? {
    let field = GraphQLField.leaf(
      field: "context",
      parent: "ThreadCommentLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time the notification was created at

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "ThreadCommentLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The thread that the relevant comment belongs to

  public func thread<T>(selection: Selection<T, Objects.Thread?>) throws -> T {
    let field = GraphQLField.composite(
      field: "thread",
      parent: "ThreadCommentLikeNotification",
      type: "Thread",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The thread comment that was liked

  public func comment<T>(selection: Selection<T, Objects.ThreadComment?>) throws -> T {
    let field = GraphQLField.composite(
      field: "comment",
      parent: "ThreadCommentLikeNotification",
      type: "ThreadComment",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The user who liked the activity

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "ThreadCommentLikeNotification",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias ThreadCommentLikeNotification<W> = Selection<
    W, Objects.ThreadCommentLikeNotification
  >
}
extension Objects {
  public struct ThreadLikeNotification {}
}

extension Fields where TypeLock == Objects.ThreadLikeNotification {
  /// The id of the Notification

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "ThreadLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The id of the user who liked to the activity

  public func userId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "userId",
      parent: "ThreadLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The type of notification

  public func type() throws -> Enums.NotificationType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "ThreadLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.NotificationType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The id of the thread which was liked

  public func threadId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "threadId",
      parent: "ThreadLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The notification context text

  public func context() throws -> String? {
    let field = GraphQLField.leaf(
      field: "context",
      parent: "ThreadLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time the notification was created at

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "ThreadLikeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The thread that the relevant comment belongs to

  public func thread<T>(selection: Selection<T, Objects.Thread?>) throws -> T {
    let field = GraphQLField.composite(
      field: "thread",
      parent: "ThreadLikeNotification",
      type: "Thread",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The liked thread comment

  public func comment<T>(selection: Selection<T, Objects.ThreadComment?>) throws -> T {
    let field = GraphQLField.composite(
      field: "comment",
      parent: "ThreadLikeNotification",
      type: "ThreadComment",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The user who liked the activity

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "ThreadLikeNotification",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias ThreadLikeNotification<W> = Selection<W, Objects.ThreadLikeNotification>
}
extension Objects {
  public struct RelatedMediaAdditionNotification {}
}

extension Fields where TypeLock == Objects.RelatedMediaAdditionNotification {
  /// The id of the Notification

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "RelatedMediaAdditionNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The type of notification

  public func type() throws -> Enums.NotificationType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "RelatedMediaAdditionNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.NotificationType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The id of the new media

  public func mediaId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "mediaId",
      parent: "RelatedMediaAdditionNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The notification context text

  public func context() throws -> String? {
    let field = GraphQLField.leaf(
      field: "context",
      parent: "RelatedMediaAdditionNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time the notification was created at

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "RelatedMediaAdditionNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The associated media of the airing schedule

  public func media<T>(selection: Selection<T, Objects.Media?>) throws -> T {
    let field = GraphQLField.composite(
      field: "media",
      parent: "RelatedMediaAdditionNotification",
      type: "Media",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias RelatedMediaAdditionNotification<W> = Selection<
    W, Objects.RelatedMediaAdditionNotification
  >
}
extension Objects {
  public struct MediaDataChangeNotification {}
}

extension Fields where TypeLock == Objects.MediaDataChangeNotification {
  /// The id of the Notification

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "MediaDataChangeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The type of notification

  public func type() throws -> Enums.NotificationType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "MediaDataChangeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.NotificationType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The id of the media that received data changes

  public func mediaId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "mediaId",
      parent: "MediaDataChangeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The reason for the media data change

  public func context() throws -> String? {
    let field = GraphQLField.leaf(
      field: "context",
      parent: "MediaDataChangeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The reason for the media data change

  public func reason() throws -> String? {
    let field = GraphQLField.leaf(
      field: "reason",
      parent: "MediaDataChangeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time the notification was created at

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "MediaDataChangeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The media that received data changes

  public func media<T>(selection: Selection<T, Objects.Media?>) throws -> T {
    let field = GraphQLField.composite(
      field: "media",
      parent: "MediaDataChangeNotification",
      type: "Media",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaDataChangeNotification<W> = Selection<
    W, Objects.MediaDataChangeNotification
  >
}
extension Objects {
  public struct MediaMergeNotification {}
}

extension Fields where TypeLock == Objects.MediaMergeNotification {
  /// The id of the Notification

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "MediaMergeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The type of notification

  public func type() throws -> Enums.NotificationType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "MediaMergeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.NotificationType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The id of the media that was merged into

  public func mediaId() throws -> Int {
    let field = GraphQLField.leaf(
      field: "mediaId",
      parent: "MediaMergeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The title of the deleted media

  public func deletedMediaTitles() throws -> [String?]? {
    let field = GraphQLField.leaf(
      field: "deletedMediaTitles",
      parent: "MediaMergeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [String?]?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The reason for the media data change

  public func context() throws -> String? {
    let field = GraphQLField.leaf(
      field: "context",
      parent: "MediaMergeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The reason for the media merge

  public func reason() throws -> String? {
    let field = GraphQLField.leaf(
      field: "reason",
      parent: "MediaMergeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time the notification was created at

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "MediaMergeNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The media that was merged into

  public func media<T>(selection: Selection<T, Objects.Media?>) throws -> T {
    let field = GraphQLField.composite(
      field: "media",
      parent: "MediaMergeNotification",
      type: "Media",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaMergeNotification<W> = Selection<W, Objects.MediaMergeNotification>
}
extension Objects {
  public struct MediaDeletionNotification {}
}

extension Fields where TypeLock == Objects.MediaDeletionNotification {
  /// The id of the Notification

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "MediaDeletionNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The type of notification

  public func type() throws -> Enums.NotificationType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "MediaDeletionNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.NotificationType?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The title of the deleted media

  public func deletedMediaTitle() throws -> String? {
    let field = GraphQLField.leaf(
      field: "deletedMediaTitle",
      parent: "MediaDeletionNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The reason for the media deletion

  public func context() throws -> String? {
    let field = GraphQLField.leaf(
      field: "context",
      parent: "MediaDeletionNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The reason for the media deletion

  public func reason() throws -> String? {
    let field = GraphQLField.leaf(
      field: "reason",
      parent: "MediaDeletionNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The time the notification was created at

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "MediaDeletionNotification",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaDeletionNotification<W> = Selection<W, Objects.MediaDeletionNotification>
}
extension Objects {
  public struct MediaListCollection {}
}

extension Fields where TypeLock == Objects.MediaListCollection {
  /// Grouped media list entries

  public func lists<T>(selection: Selection<T, [Objects.MediaListGroup?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "lists",
      parent: "MediaListCollection",
      type: "MediaListGroup",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The owner of the list

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "MediaListCollection",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// If there is another chunk

  public func hasNextChunk() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "hasNextChunk",
      parent: "MediaListCollection",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// A map of media list entry arrays grouped by status
  @available(*, deprecated, message: "Not GraphQL spec compliant, use lists field instead.")
  public func statusLists<T>(
    asArray: OptionalArgument<Bool> = .init(), selection: Selection<T, [[Objects.MediaList?]?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "statusLists",
      parent: "MediaListCollection",
      type: "MediaList",
      arguments: [Argument(name: "asArray", type: "Boolean", value: asArray)],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// A map of media list entry arrays grouped by custom lists
  @available(*, deprecated, message: "Not GraphQL spec compliant, use lists field instead.")
  public func customLists<T>(
    asArray: OptionalArgument<Bool> = .init(), selection: Selection<T, [[Objects.MediaList?]?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "customLists",
      parent: "MediaListCollection",
      type: "MediaList",
      arguments: [Argument(name: "asArray", type: "Boolean", value: asArray)],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaListCollection<W> = Selection<W, Objects.MediaListCollection>
}
extension Objects {
  public struct MediaListGroup {}
}

extension Fields where TypeLock == Objects.MediaListGroup {
  /// Media list entries

  public func entries<T>(selection: Selection<T, [Objects.MediaList?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "entries",
      parent: "MediaListGroup",
      type: "MediaList",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func name() throws -> String? {
    let field = GraphQLField.leaf(
      field: "name",
      parent: "MediaListGroup",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func isCustomList() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isCustomList",
      parent: "MediaListGroup",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func isSplitCompletedList() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isSplitCompletedList",
      parent: "MediaListGroup",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func status() throws -> Enums.MediaListStatus? {
    let field = GraphQLField.leaf(
      field: "status",
      parent: "MediaListGroup",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.MediaListStatus?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaListGroup<W> = Selection<W, Objects.MediaListGroup>
}
extension Objects {
  public struct ParsedMarkdown {}
}

extension Fields where TypeLock == Objects.ParsedMarkdown {
  /// The parsed markdown as html

  public func html() throws -> String? {
    let field = GraphQLField.leaf(
      field: "html",
      parent: "ParsedMarkdown",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias ParsedMarkdown<W> = Selection<W, Objects.ParsedMarkdown>
}
extension Objects {
  public struct AniChartUser {}
}

extension Fields where TypeLock == Objects.AniChartUser {

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "AniChartUser",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func settings() throws -> AnyCodable? {
    let field = GraphQLField.leaf(
      field: "settings",
      parent: "AniChartUser",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try AnyCodable?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func highlights() throws -> AnyCodable? {
    let field = GraphQLField.leaf(
      field: "highlights",
      parent: "AniChartUser",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try AnyCodable?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias AniChartUser<W> = Selection<W, Objects.AniChartUser>
}
extension Objects {
  public struct SiteStatistics {}
}

extension Fields where TypeLock == Objects.SiteStatistics {

  public func users<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.SiteTrendSort>]> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.SiteTrendConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "users",
      parent: "SiteStatistics",
      type: "SiteTrendConnection",
      arguments: [
        Argument(name: "sort", type: "[SiteTrendSort]", value: sort),
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func anime<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.SiteTrendSort>]> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.SiteTrendConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "anime",
      parent: "SiteStatistics",
      type: "SiteTrendConnection",
      arguments: [
        Argument(name: "sort", type: "[SiteTrendSort]", value: sort),
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func manga<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.SiteTrendSort>]> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.SiteTrendConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "manga",
      parent: "SiteStatistics",
      type: "SiteTrendConnection",
      arguments: [
        Argument(name: "sort", type: "[SiteTrendSort]", value: sort),
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func characters<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.SiteTrendSort>]> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.SiteTrendConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "characters",
      parent: "SiteStatistics",
      type: "SiteTrendConnection",
      arguments: [
        Argument(name: "sort", type: "[SiteTrendSort]", value: sort),
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func staff<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.SiteTrendSort>]> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.SiteTrendConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "staff",
      parent: "SiteStatistics",
      type: "SiteTrendConnection",
      arguments: [
        Argument(name: "sort", type: "[SiteTrendSort]", value: sort),
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func studios<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.SiteTrendSort>]> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.SiteTrendConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "studios",
      parent: "SiteStatistics",
      type: "SiteTrendConnection",
      arguments: [
        Argument(name: "sort", type: "[SiteTrendSort]", value: sort),
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func reviews<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.SiteTrendSort>]> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.SiteTrendConnection?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "reviews",
      parent: "SiteStatistics",
      type: "SiteTrendConnection",
      arguments: [
        Argument(name: "sort", type: "[SiteTrendSort]", value: sort),
        Argument(name: "page", type: "Int", value: page),
        Argument(name: "perPage", type: "Int", value: perPage),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias SiteStatistics<W> = Selection<W, Objects.SiteStatistics>
}
extension Objects {
  public struct SiteTrendConnection {}
}

extension Fields where TypeLock == Objects.SiteTrendConnection {

  public func edges<T>(selection: Selection<T, [Objects.SiteTrendEdge?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "edges",
      parent: "SiteTrendConnection",
      type: "SiteTrendEdge",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func nodes<T>(selection: Selection<T, [Objects.SiteTrend?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "nodes",
      parent: "SiteTrendConnection",
      type: "SiteTrend",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The pagination information

  public func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) throws -> T {
    let field = GraphQLField.composite(
      field: "pageInfo",
      parent: "SiteTrendConnection",
      type: "PageInfo",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias SiteTrendConnection<W> = Selection<W, Objects.SiteTrendConnection>
}
extension Objects {
  public struct SiteTrendEdge {}
}

extension Fields where TypeLock == Objects.SiteTrendEdge {

  public func node<T>(selection: Selection<T, Objects.SiteTrend?>) throws -> T {
    let field = GraphQLField.composite(
      field: "node",
      parent: "SiteTrendEdge",
      type: "SiteTrend",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias SiteTrendEdge<W> = Selection<W, Objects.SiteTrendEdge>
}
extension Objects {
  public struct SiteTrend {}
}

extension Fields where TypeLock == Objects.SiteTrend {
  /// The day the data was recorded (timestamp)

  public func date() throws -> Int {
    let field = GraphQLField.leaf(
      field: "date",
      parent: "SiteTrend",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func count() throws -> Int {
    let field = GraphQLField.leaf(
      field: "count",
      parent: "SiteTrend",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The change from yesterday

  public func change() throws -> Int {
    let field = GraphQLField.leaf(
      field: "change",
      parent: "SiteTrend",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias SiteTrend<W> = Selection<W, Objects.SiteTrend>
}
extension Objects {
  public struct Mutation {}
}

extension Fields where TypeLock == Objects.Mutation {

  public func updateUser<T>(
    about: OptionalArgument<String> = .init(),
    titleLanguage: OptionalArgument<Enums.UserTitleLanguage> = .init(),
    displayAdultContent: OptionalArgument<Bool> = .init(),
    airingNotifications: OptionalArgument<Bool> = .init(),
    scoreFormat: OptionalArgument<Enums.ScoreFormat> = .init(),
    rowOrder: OptionalArgument<String> = .init(), profileColor: OptionalArgument<String> = .init(),
    donatorBadge: OptionalArgument<String> = .init(),
    notificationOptions: OptionalArgument<
      [OptionalArgument<InputObjects.NotificationOptionInput>]
    > = .init(), timezone: OptionalArgument<String> = .init(),
    activityMergeTime: OptionalArgument<Int> = .init(),
    animeListOptions: OptionalArgument<InputObjects.MediaListOptionsInput> = .init(),
    mangaListOptions: OptionalArgument<InputObjects.MediaListOptionsInput> = .init(),
    staffNameLanguage: OptionalArgument<Enums.UserStaffNameLanguage> = .init(),
    restrictMessagesToFollowing: OptionalArgument<Bool> = .init(),
    disabledListActivity: OptionalArgument<
      [OptionalArgument<InputObjects.ListActivityOptionInput>]
    > = .init(), selection: Selection<T, Objects.User?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "UpdateUser",
      parent: "Mutation",
      type: "User",
      arguments: [
        Argument(name: "about", type: "String", value: about),
        Argument(name: "titleLanguage", type: "UserTitleLanguage", value: titleLanguage),
        Argument(name: "displayAdultContent", type: "Boolean", value: displayAdultContent),
        Argument(name: "airingNotifications", type: "Boolean", value: airingNotifications),
        Argument(name: "scoreFormat", type: "ScoreFormat", value: scoreFormat),
        Argument(name: "rowOrder", type: "String", value: rowOrder),
        Argument(name: "profileColor", type: "String", value: profileColor),
        Argument(name: "donatorBadge", type: "String", value: donatorBadge),
        Argument(
          name: "notificationOptions", type: "[NotificationOptionInput]", value: notificationOptions
        ), Argument(name: "timezone", type: "String", value: timezone),
        Argument(name: "activityMergeTime", type: "Int", value: activityMergeTime),
        Argument(name: "animeListOptions", type: "MediaListOptionsInput", value: animeListOptions),
        Argument(name: "mangaListOptions", type: "MediaListOptionsInput", value: mangaListOptions),
        Argument(
          name: "staffNameLanguage", type: "UserStaffNameLanguage", value: staffNameLanguage),
        Argument(
          name: "restrictMessagesToFollowing", type: "Boolean", value: restrictMessagesToFollowing),
        Argument(
          name: "disabledListActivity", type: "[ListActivityOptionInput]",
          value: disabledListActivity),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Create or update a media list entry

  public func saveMediaListEntry<T>(
    id: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    status: OptionalArgument<Enums.MediaListStatus> = .init(),
    score: OptionalArgument<Double> = .init(), scoreRaw: OptionalArgument<Int> = .init(),
    progress: OptionalArgument<Int> = .init(), progressVolumes: OptionalArgument<Int> = .init(),
    `repeat`: OptionalArgument<Int> = .init(), priority: OptionalArgument<Int> = .init(),
    `private`: OptionalArgument<Bool> = .init(), notes: OptionalArgument<String> = .init(),
    hiddenFromStatusLists: OptionalArgument<Bool> = .init(),
    customLists: OptionalArgument<[OptionalArgument<String>]> = .init(),
    advancedScores: OptionalArgument<[OptionalArgument<Double>]> = .init(),
    startedAt: OptionalArgument<InputObjects.FuzzyDateInput> = .init(),
    completedAt: OptionalArgument<InputObjects.FuzzyDateInput> = .init(),
    selection: Selection<T, Objects.MediaList?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "SaveMediaListEntry",
      parent: "Mutation",
      type: "MediaList",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "mediaId", type: "Int", value: mediaId),
        Argument(name: "status", type: "MediaListStatus", value: status),
        Argument(name: "score", type: "Float", value: score),
        Argument(name: "scoreRaw", type: "Int", value: scoreRaw),
        Argument(name: "progress", type: "Int", value: progress),
        Argument(name: "progressVolumes", type: "Int", value: progressVolumes),
        Argument(name: "repeat", type: "Int", value: `repeat`),
        Argument(name: "priority", type: "Int", value: priority),
        Argument(name: "private", type: "Boolean", value: `private`),
        Argument(name: "notes", type: "String", value: notes),
        Argument(name: "hiddenFromStatusLists", type: "Boolean", value: hiddenFromStatusLists),
        Argument(name: "customLists", type: "[String]", value: customLists),
        Argument(name: "advancedScores", type: "[Float]", value: advancedScores),
        Argument(name: "startedAt", type: "FuzzyDateInput", value: startedAt),
        Argument(name: "completedAt", type: "FuzzyDateInput", value: completedAt),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Update multiple media list entries to the same values

  public func updateMediaListEntries<T>(
    status: OptionalArgument<Enums.MediaListStatus> = .init(),
    score: OptionalArgument<Double> = .init(), scoreRaw: OptionalArgument<Int> = .init(),
    progress: OptionalArgument<Int> = .init(), progressVolumes: OptionalArgument<Int> = .init(),
    `repeat`: OptionalArgument<Int> = .init(), priority: OptionalArgument<Int> = .init(),
    `private`: OptionalArgument<Bool> = .init(), notes: OptionalArgument<String> = .init(),
    hiddenFromStatusLists: OptionalArgument<Bool> = .init(),
    advancedScores: OptionalArgument<[OptionalArgument<Double>]> = .init(),
    startedAt: OptionalArgument<InputObjects.FuzzyDateInput> = .init(),
    completedAt: OptionalArgument<InputObjects.FuzzyDateInput> = .init(),
    ids: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    selection: Selection<T, [Objects.MediaList?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "UpdateMediaListEntries",
      parent: "Mutation",
      type: "MediaList",
      arguments: [
        Argument(name: "status", type: "MediaListStatus", value: status),
        Argument(name: "score", type: "Float", value: score),
        Argument(name: "scoreRaw", type: "Int", value: scoreRaw),
        Argument(name: "progress", type: "Int", value: progress),
        Argument(name: "progressVolumes", type: "Int", value: progressVolumes),
        Argument(name: "repeat", type: "Int", value: `repeat`),
        Argument(name: "priority", type: "Int", value: priority),
        Argument(name: "private", type: "Boolean", value: `private`),
        Argument(name: "notes", type: "String", value: notes),
        Argument(name: "hiddenFromStatusLists", type: "Boolean", value: hiddenFromStatusLists),
        Argument(name: "advancedScores", type: "[Float]", value: advancedScores),
        Argument(name: "startedAt", type: "FuzzyDateInput", value: startedAt),
        Argument(name: "completedAt", type: "FuzzyDateInput", value: completedAt),
        Argument(name: "ids", type: "[Int]", value: ids),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Delete a media list entry

  public func deleteMediaListEntry<T>(
    id: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.Deleted?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "DeleteMediaListEntry",
      parent: "Mutation",
      type: "Deleted",
      arguments: [Argument(name: "id", type: "Int", value: id)],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Delete a custom list and remove the list entries from it

  public func deleteCustomList<T>(
    customList: OptionalArgument<String> = .init(),
    type: OptionalArgument<Enums.MediaType> = .init(), selection: Selection<T, Objects.Deleted?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "DeleteCustomList",
      parent: "Mutation",
      type: "Deleted",
      arguments: [
        Argument(name: "customList", type: "String", value: customList),
        Argument(name: "type", type: "MediaType", value: type),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Create or update text activity for the currently authenticated user

  public func saveTextActivity<T>(
    id: OptionalArgument<Int> = .init(), text: OptionalArgument<String> = .init(),
    locked: OptionalArgument<Bool> = .init(), selection: Selection<T, Objects.TextActivity?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "SaveTextActivity",
      parent: "Mutation",
      type: "TextActivity",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "text", type: "String", value: text),
        Argument(name: "locked", type: "Boolean", value: locked),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Create or update message activity for the currently authenticated user

  public func saveMessageActivity<T>(
    id: OptionalArgument<Int> = .init(), message: OptionalArgument<String> = .init(),
    recipientId: OptionalArgument<Int> = .init(), `private`: OptionalArgument<Bool> = .init(),
    locked: OptionalArgument<Bool> = .init(), asMod: OptionalArgument<Bool> = .init(),
    selection: Selection<T, Objects.MessageActivity?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "SaveMessageActivity",
      parent: "Mutation",
      type: "MessageActivity",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "message", type: "String", value: message),
        Argument(name: "recipientId", type: "Int", value: recipientId),
        Argument(name: "private", type: "Boolean", value: `private`),
        Argument(name: "locked", type: "Boolean", value: locked),
        Argument(name: "asMod", type: "Boolean", value: asMod),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Update list activity (Mod Only)

  public func saveListActivity<T>(
    id: OptionalArgument<Int> = .init(), locked: OptionalArgument<Bool> = .init(),
    selection: Selection<T, Objects.ListActivity?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "SaveListActivity",
      parent: "Mutation",
      type: "ListActivity",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "locked", type: "Boolean", value: locked),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Delete an activity item of the authenticated users

  public func deleteActivity<T>(
    id: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.Deleted?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "DeleteActivity",
      parent: "Mutation",
      type: "Deleted",
      arguments: [Argument(name: "id", type: "Int", value: id)],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Toggle activity to be pinned to the top of the user's activity feed

  public func toggleActivityPin<T>(
    id: OptionalArgument<Int> = .init(), pinned: OptionalArgument<Bool> = .init(),
    selection: Selection<T, Unions.ActivityUnion?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "ToggleActivityPin",
      parent: "Mutation",
      type: "ActivityUnion",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "pinned", type: "Boolean", value: pinned),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Toggle the subscription of an activity item

  public func toggleActivitySubscription<T>(
    activityId: OptionalArgument<Int> = .init(), subscribe: OptionalArgument<Bool> = .init(),
    selection: Selection<T, Unions.ActivityUnion?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "ToggleActivitySubscription",
      parent: "Mutation",
      type: "ActivityUnion",
      arguments: [
        Argument(name: "activityId", type: "Int", value: activityId),
        Argument(name: "subscribe", type: "Boolean", value: subscribe),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Create or update an activity reply

  public func saveActivityReply<T>(
    id: OptionalArgument<Int> = .init(), activityId: OptionalArgument<Int> = .init(),
    text: OptionalArgument<String> = .init(), asMod: OptionalArgument<Bool> = .init(),
    selection: Selection<T, Objects.ActivityReply?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "SaveActivityReply",
      parent: "Mutation",
      type: "ActivityReply",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "activityId", type: "Int", value: activityId),
        Argument(name: "text", type: "String", value: text),
        Argument(name: "asMod", type: "Boolean", value: asMod),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Delete an activity reply of the authenticated users

  public func deleteActivityReply<T>(
    id: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.Deleted?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "DeleteActivityReply",
      parent: "Mutation",
      type: "Deleted",
      arguments: [Argument(name: "id", type: "Int", value: id)],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Add or remove a like from a likeable type.
  ///                           Returns all the users who liked the same model

  public func toggleLike<T>(
    id: OptionalArgument<Int> = .init(), type: OptionalArgument<Enums.LikeableType> = .init(),
    selection: Selection<T, [Objects.User?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "ToggleLike",
      parent: "Mutation",
      type: "User",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "type", type: "LikeableType", value: type),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Add or remove a like from a likeable type.

  public func toggleLikeV2<T>(
    id: OptionalArgument<Int> = .init(), type: OptionalArgument<Enums.LikeableType> = .init(),
    selection: Selection<T, Unions.LikeableUnion?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "ToggleLikeV2",
      parent: "Mutation",
      type: "LikeableUnion",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "type", type: "LikeableType", value: type),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Toggle the un/following of a user

  public func toggleFollow<T>(
    userId: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.User?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "ToggleFollow",
      parent: "Mutation",
      type: "User",
      arguments: [Argument(name: "userId", type: "Int", value: userId)],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Favourite or unfavourite an anime, manga, character, staff member, or studio

  public func toggleFavourite<T>(
    animeId: OptionalArgument<Int> = .init(), mangaId: OptionalArgument<Int> = .init(),
    characterId: OptionalArgument<Int> = .init(), staffId: OptionalArgument<Int> = .init(),
    studioId: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.Favourites?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "ToggleFavourite",
      parent: "Mutation",
      type: "Favourites",
      arguments: [
        Argument(name: "animeId", type: "Int", value: animeId),
        Argument(name: "mangaId", type: "Int", value: mangaId),
        Argument(name: "characterId", type: "Int", value: characterId),
        Argument(name: "staffId", type: "Int", value: staffId),
        Argument(name: "studioId", type: "Int", value: studioId),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Update the order favourites are displayed in

  public func updateFavouriteOrder<T>(
    animeIds: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mangaIds: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    characterIds: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    staffIds: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    studioIds: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    animeOrder: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mangaOrder: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    characterOrder: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    staffOrder: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    studioOrder: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    selection: Selection<T, Objects.Favourites?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "UpdateFavouriteOrder",
      parent: "Mutation",
      type: "Favourites",
      arguments: [
        Argument(name: "animeIds", type: "[Int]", value: animeIds),
        Argument(name: "mangaIds", type: "[Int]", value: mangaIds),
        Argument(name: "characterIds", type: "[Int]", value: characterIds),
        Argument(name: "staffIds", type: "[Int]", value: staffIds),
        Argument(name: "studioIds", type: "[Int]", value: studioIds),
        Argument(name: "animeOrder", type: "[Int]", value: animeOrder),
        Argument(name: "mangaOrder", type: "[Int]", value: mangaOrder),
        Argument(name: "characterOrder", type: "[Int]", value: characterOrder),
        Argument(name: "staffOrder", type: "[Int]", value: staffOrder),
        Argument(name: "studioOrder", type: "[Int]", value: studioOrder),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Create or update a review

  public func saveReview<T>(
    id: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    body: OptionalArgument<String> = .init(), summary: OptionalArgument<String> = .init(),
    score: OptionalArgument<Int> = .init(), `private`: OptionalArgument<Bool> = .init(),
    selection: Selection<T, Objects.Review?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "SaveReview",
      parent: "Mutation",
      type: "Review",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "mediaId", type: "Int", value: mediaId),
        Argument(name: "body", type: "String", value: body),
        Argument(name: "summary", type: "String", value: summary),
        Argument(name: "score", type: "Int", value: score),
        Argument(name: "private", type: "Boolean", value: `private`),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Delete a review

  public func deleteReview<T>(
    id: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.Deleted?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "DeleteReview",
      parent: "Mutation",
      type: "Deleted",
      arguments: [Argument(name: "id", type: "Int", value: id)],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Rate a review

  public func rateReview<T>(
    reviewId: OptionalArgument<Int> = .init(),
    rating: OptionalArgument<Enums.ReviewRating> = .init(), selection: Selection<T, Objects.Review?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "RateReview",
      parent: "Mutation",
      type: "Review",
      arguments: [
        Argument(name: "reviewId", type: "Int", value: reviewId),
        Argument(name: "rating", type: "ReviewRating", value: rating),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Recommendation a media

  public func saveRecommendation<T>(
    mediaId: OptionalArgument<Int> = .init(),
    mediaRecommendationId: OptionalArgument<Int> = .init(),
    rating: OptionalArgument<Enums.RecommendationRating> = .init(),
    selection: Selection<T, Objects.Recommendation?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "SaveRecommendation",
      parent: "Mutation",
      type: "Recommendation",
      arguments: [
        Argument(name: "mediaId", type: "Int", value: mediaId),
        Argument(name: "mediaRecommendationId", type: "Int", value: mediaRecommendationId),
        Argument(name: "rating", type: "RecommendationRating", value: rating),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Create or update a forum thread

  public func saveThread<T>(
    id: OptionalArgument<Int> = .init(), title: OptionalArgument<String> = .init(),
    body: OptionalArgument<String> = .init(),
    categories: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaCategories: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sticky: OptionalArgument<Bool> = .init(), locked: OptionalArgument<Bool> = .init(),
    selection: Selection<T, Objects.Thread?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "SaveThread",
      parent: "Mutation",
      type: "Thread",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "title", type: "String", value: title),
        Argument(name: "body", type: "String", value: body),
        Argument(name: "categories", type: "[Int]", value: categories),
        Argument(name: "mediaCategories", type: "[Int]", value: mediaCategories),
        Argument(name: "sticky", type: "Boolean", value: sticky),
        Argument(name: "locked", type: "Boolean", value: locked),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Delete a thread

  public func deleteThread<T>(
    id: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.Deleted?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "DeleteThread",
      parent: "Mutation",
      type: "Deleted",
      arguments: [Argument(name: "id", type: "Int", value: id)],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Toggle the subscription of a forum thread

  public func toggleThreadSubscription<T>(
    threadId: OptionalArgument<Int> = .init(), subscribe: OptionalArgument<Bool> = .init(),
    selection: Selection<T, Objects.Thread?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "ToggleThreadSubscription",
      parent: "Mutation",
      type: "Thread",
      arguments: [
        Argument(name: "threadId", type: "Int", value: threadId),
        Argument(name: "subscribe", type: "Boolean", value: subscribe),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Create or update a thread comment

  public func saveThreadComment<T>(
    id: OptionalArgument<Int> = .init(), threadId: OptionalArgument<Int> = .init(),
    parentCommentId: OptionalArgument<Int> = .init(), comment: OptionalArgument<String> = .init(),
    locked: OptionalArgument<Bool> = .init(), selection: Selection<T, Objects.ThreadComment?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "SaveThreadComment",
      parent: "Mutation",
      type: "ThreadComment",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "threadId", type: "Int", value: threadId),
        Argument(name: "parentCommentId", type: "Int", value: parentCommentId),
        Argument(name: "comment", type: "String", value: comment),
        Argument(name: "locked", type: "Boolean", value: locked),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Delete a thread comment

  public func deleteThreadComment<T>(
    id: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.Deleted?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "DeleteThreadComment",
      parent: "Mutation",
      type: "Deleted",
      arguments: [Argument(name: "id", type: "Int", value: id)],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func updateAniChartSettings(
    titleLanguage: OptionalArgument<String> = .init(),
    outgoingLinkProvider: OptionalArgument<String> = .init(),
    theme: OptionalArgument<String> = .init(), sort: OptionalArgument<String> = .init()
  ) throws -> AnyCodable? {
    let field = GraphQLField.leaf(
      field: "UpdateAniChartSettings",
      parent: "Mutation",
      arguments: [
        Argument(name: "titleLanguage", type: "String", value: titleLanguage),
        Argument(name: "outgoingLinkProvider", type: "String", value: outgoingLinkProvider),
        Argument(name: "theme", type: "String", value: theme),
        Argument(name: "sort", type: "String", value: sort),
      ]
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try AnyCodable?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func updateAniChartHighlights(
    highlights: OptionalArgument<[OptionalArgument<InputObjects.AniChartHighlightInput>]> = .init()
  ) throws -> AnyCodable? {
    let field = GraphQLField.leaf(
      field: "UpdateAniChartHighlights",
      parent: "Mutation",
      arguments: [Argument(name: "highlights", type: "[AniChartHighlightInput]", value: highlights)]
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try AnyCodable?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias Mutation<W> = Selection<W, Objects.Mutation>
}
extension Objects {
  public struct Deleted {}
}

extension Fields where TypeLock == Objects.Deleted {
  /// If an item has been successfully deleted

  public func deleted() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "deleted",
      parent: "Deleted",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias Deleted<W> = Selection<W, Objects.Deleted>
}
extension Objects {
  public struct InternalPage {}
}

extension Fields where TypeLock == Objects.InternalPage {

  public func mediaSubmissions<T>(
    mediaId: OptionalArgument<Int> = .init(), submissionId: OptionalArgument<Int> = .init(),
    userId: OptionalArgument<Int> = .init(), assigneeId: OptionalArgument<Int> = .init(),
    status: OptionalArgument<Enums.SubmissionStatus> = .init(),
    type: OptionalArgument<Enums.MediaType> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.SubmissionSort>]> = .init(),
    selection: Selection<T, [Objects.MediaSubmission?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "mediaSubmissions",
      parent: "InternalPage",
      type: "MediaSubmission",
      arguments: [
        Argument(name: "mediaId", type: "Int", value: mediaId),
        Argument(name: "submissionId", type: "Int", value: submissionId),
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "assigneeId", type: "Int", value: assigneeId),
        Argument(name: "status", type: "SubmissionStatus", value: status),
        Argument(name: "type", type: "MediaType", value: type),
        Argument(name: "sort", type: "[SubmissionSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func characterSubmissions<T>(
    characterId: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    assigneeId: OptionalArgument<Int> = .init(),
    status: OptionalArgument<Enums.SubmissionStatus> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.SubmissionSort>]> = .init(),
    selection: Selection<T, [Objects.CharacterSubmission?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "characterSubmissions",
      parent: "InternalPage",
      type: "CharacterSubmission",
      arguments: [
        Argument(name: "characterId", type: "Int", value: characterId),
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "assigneeId", type: "Int", value: assigneeId),
        Argument(name: "status", type: "SubmissionStatus", value: status),
        Argument(name: "sort", type: "[SubmissionSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func staffSubmissions<T>(
    staffId: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    assigneeId: OptionalArgument<Int> = .init(),
    status: OptionalArgument<Enums.SubmissionStatus> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.SubmissionSort>]> = .init(),
    selection: Selection<T, [Objects.StaffSubmission?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "staffSubmissions",
      parent: "InternalPage",
      type: "StaffSubmission",
      arguments: [
        Argument(name: "staffId", type: "Int", value: staffId),
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "assigneeId", type: "Int", value: assigneeId),
        Argument(name: "status", type: "SubmissionStatus", value: status),
        Argument(name: "sort", type: "[SubmissionSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func revisionHistory<T>(
    userId: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    characterId: OptionalArgument<Int> = .init(), staffId: OptionalArgument<Int> = .init(),
    studioId: OptionalArgument<Int> = .init(), selection: Selection<T, [Objects.RevisionHistory?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "revisionHistory",
      parent: "InternalPage",
      type: "RevisionHistory",
      arguments: [
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "mediaId", type: "Int", value: mediaId),
        Argument(name: "characterId", type: "Int", value: characterId),
        Argument(name: "staffId", type: "Int", value: staffId),
        Argument(name: "studioId", type: "Int", value: studioId),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func reports<T>(
    reporterId: OptionalArgument<Int> = .init(), reportedId: OptionalArgument<Int> = .init(),
    selection: Selection<T, [Objects.Report?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "reports",
      parent: "InternalPage",
      type: "Report",
      arguments: [
        Argument(name: "reporterId", type: "Int", value: reporterId),
        Argument(name: "reportedId", type: "Int", value: reportedId),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func modActions<T>(
    userId: OptionalArgument<Int> = .init(), modId: OptionalArgument<Int> = .init(),
    selection: Selection<T, [Objects.ModAction?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "modActions",
      parent: "InternalPage",
      type: "ModAction",
      arguments: [
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "modId", type: "Int", value: modId),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func userBlockSearch<T>(
    search: OptionalArgument<String> = .init(), selection: Selection<T, [Objects.User?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "userBlockSearch",
      parent: "InternalPage",
      type: "User",
      arguments: [Argument(name: "search", type: "String", value: search)],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The pagination information

  public func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) throws -> T {
    let field = GraphQLField.composite(
      field: "pageInfo",
      parent: "InternalPage",
      type: "PageInfo",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func users<T>(
    id: OptionalArgument<Int> = .init(), name: OptionalArgument<String> = .init(),
    isModerator: OptionalArgument<Bool> = .init(), search: OptionalArgument<String> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserSort>]> = .init(),
    selection: Selection<T, [Objects.User?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "users",
      parent: "InternalPage",
      type: "User",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "name", type: "String", value: name),
        Argument(name: "isModerator", type: "Boolean", value: isModerator),
        Argument(name: "search", type: "String", value: search),
        Argument(name: "sort", type: "[UserSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func media<T>(
    id: OptionalArgument<Int> = .init(), idMal: OptionalArgument<Int> = .init(),
    startDate: OptionalArgument<AnyCodable> = .init(),
    endDate: OptionalArgument<AnyCodable> = .init(),
    season: OptionalArgument<Enums.MediaSeason> = .init(),
    seasonYear: OptionalArgument<Int> = .init(), type: OptionalArgument<Enums.MediaType> = .init(),
    format: OptionalArgument<Enums.MediaFormat> = .init(),
    status: OptionalArgument<Enums.MediaStatus> = .init(),
    episodes: OptionalArgument<Int> = .init(), duration: OptionalArgument<Int> = .init(),
    chapters: OptionalArgument<Int> = .init(), volumes: OptionalArgument<Int> = .init(),
    isAdult: OptionalArgument<Bool> = .init(), genre: OptionalArgument<String> = .init(),
    tag: OptionalArgument<String> = .init(), minimumTagRank: OptionalArgument<Int> = .init(),
    tagCategory: OptionalArgument<String> = .init(), onList: OptionalArgument<Bool> = .init(),
    licensedBy: OptionalArgument<String> = .init(), licensedById: OptionalArgument<Int> = .init(),
    averageScore: OptionalArgument<Int> = .init(), popularity: OptionalArgument<Int> = .init(),
    source: OptionalArgument<Enums.MediaSource> = .init(),
    countryOfOrigin: OptionalArgument<AnyCodable> = .init(),
    isLicensed: OptionalArgument<Bool> = .init(), search: OptionalArgument<String> = .init(),
    idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idMalNot: OptionalArgument<Int> = .init(),
    idMalIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idMalNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    startDateGreater: OptionalArgument<AnyCodable> = .init(),
    startDateLesser: OptionalArgument<AnyCodable> = .init(),
    startDateLike: OptionalArgument<String> = .init(),
    endDateGreater: OptionalArgument<AnyCodable> = .init(),
    endDateLesser: OptionalArgument<AnyCodable> = .init(),
    endDateLike: OptionalArgument<String> = .init(),
    formatIn: OptionalArgument<[OptionalArgument<Enums.MediaFormat>]> = .init(),
    formatNot: OptionalArgument<Enums.MediaFormat> = .init(),
    formatNotIn: OptionalArgument<[OptionalArgument<Enums.MediaFormat>]> = .init(),
    statusIn: OptionalArgument<[OptionalArgument<Enums.MediaStatus>]> = .init(),
    statusNot: OptionalArgument<Enums.MediaStatus> = .init(),
    statusNotIn: OptionalArgument<[OptionalArgument<Enums.MediaStatus>]> = .init(),
    episodesGreater: OptionalArgument<Int> = .init(),
    episodesLesser: OptionalArgument<Int> = .init(),
    durationGreater: OptionalArgument<Int> = .init(),
    durationLesser: OptionalArgument<Int> = .init(),
    chaptersGreater: OptionalArgument<Int> = .init(),
    chaptersLesser: OptionalArgument<Int> = .init(),
    volumesGreater: OptionalArgument<Int> = .init(), volumesLesser: OptionalArgument<Int> = .init(),
    genreIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    genreNotIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagNotIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagCategoryIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagCategoryNotIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    licensedByIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    licensedByIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    averageScoreNot: OptionalArgument<Int> = .init(),
    averageScoreGreater: OptionalArgument<Int> = .init(),
    averageScoreLesser: OptionalArgument<Int> = .init(),
    popularityNot: OptionalArgument<Int> = .init(),
    popularityGreater: OptionalArgument<Int> = .init(),
    popularityLesser: OptionalArgument<Int> = .init(),
    sourceIn: OptionalArgument<[OptionalArgument<Enums.MediaSource>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.MediaSort>]> = .init(),
    selection: Selection<T, [Objects.Media?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "media",
      parent: "InternalPage",
      type: "Media",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "idMal", type: "Int", value: idMal),
        Argument(name: "startDate", type: "FuzzyDateInt", value: startDate),
        Argument(name: "endDate", type: "FuzzyDateInt", value: endDate),
        Argument(name: "season", type: "MediaSeason", value: season),
        Argument(name: "seasonYear", type: "Int", value: seasonYear),
        Argument(name: "type", type: "MediaType", value: type),
        Argument(name: "format", type: "MediaFormat", value: format),
        Argument(name: "status", type: "MediaStatus", value: status),
        Argument(name: "episodes", type: "Int", value: episodes),
        Argument(name: "duration", type: "Int", value: duration),
        Argument(name: "chapters", type: "Int", value: chapters),
        Argument(name: "volumes", type: "Int", value: volumes),
        Argument(name: "isAdult", type: "Boolean", value: isAdult),
        Argument(name: "genre", type: "String", value: genre),
        Argument(name: "tag", type: "String", value: tag),
        Argument(name: "minimumTagRank", type: "Int", value: minimumTagRank),
        Argument(name: "tagCategory", type: "String", value: tagCategory),
        Argument(name: "onList", type: "Boolean", value: onList),
        Argument(name: "licensedBy", type: "String", value: licensedBy),
        Argument(name: "licensedById", type: "Int", value: licensedById),
        Argument(name: "averageScore", type: "Int", value: averageScore),
        Argument(name: "popularity", type: "Int", value: popularity),
        Argument(name: "source", type: "MediaSource", value: source),
        Argument(name: "countryOfOrigin", type: "CountryCode", value: countryOfOrigin),
        Argument(name: "isLicensed", type: "Boolean", value: isLicensed),
        Argument(name: "search", type: "String", value: search),
        Argument(name: "id_not", type: "Int", value: idNot),
        Argument(name: "id_in", type: "[Int]", value: idIn),
        Argument(name: "id_not_in", type: "[Int]", value: idNotIn),
        Argument(name: "idMal_not", type: "Int", value: idMalNot),
        Argument(name: "idMal_in", type: "[Int]", value: idMalIn),
        Argument(name: "idMal_not_in", type: "[Int]", value: idMalNotIn),
        Argument(name: "startDate_greater", type: "FuzzyDateInt", value: startDateGreater),
        Argument(name: "startDate_lesser", type: "FuzzyDateInt", value: startDateLesser),
        Argument(name: "startDate_like", type: "String", value: startDateLike),
        Argument(name: "endDate_greater", type: "FuzzyDateInt", value: endDateGreater),
        Argument(name: "endDate_lesser", type: "FuzzyDateInt", value: endDateLesser),
        Argument(name: "endDate_like", type: "String", value: endDateLike),
        Argument(name: "format_in", type: "[MediaFormat]", value: formatIn),
        Argument(name: "format_not", type: "MediaFormat", value: formatNot),
        Argument(name: "format_not_in", type: "[MediaFormat]", value: formatNotIn),
        Argument(name: "status_in", type: "[MediaStatus]", value: statusIn),
        Argument(name: "status_not", type: "MediaStatus", value: statusNot),
        Argument(name: "status_not_in", type: "[MediaStatus]", value: statusNotIn),
        Argument(name: "episodes_greater", type: "Int", value: episodesGreater),
        Argument(name: "episodes_lesser", type: "Int", value: episodesLesser),
        Argument(name: "duration_greater", type: "Int", value: durationGreater),
        Argument(name: "duration_lesser", type: "Int", value: durationLesser),
        Argument(name: "chapters_greater", type: "Int", value: chaptersGreater),
        Argument(name: "chapters_lesser", type: "Int", value: chaptersLesser),
        Argument(name: "volumes_greater", type: "Int", value: volumesGreater),
        Argument(name: "volumes_lesser", type: "Int", value: volumesLesser),
        Argument(name: "genre_in", type: "[String]", value: genreIn),
        Argument(name: "genre_not_in", type: "[String]", value: genreNotIn),
        Argument(name: "tag_in", type: "[String]", value: tagIn),
        Argument(name: "tag_not_in", type: "[String]", value: tagNotIn),
        Argument(name: "tagCategory_in", type: "[String]", value: tagCategoryIn),
        Argument(name: "tagCategory_not_in", type: "[String]", value: tagCategoryNotIn),
        Argument(name: "licensedBy_in", type: "[String]", value: licensedByIn),
        Argument(name: "licensedById_in", type: "[Int]", value: licensedByIdIn),
        Argument(name: "averageScore_not", type: "Int", value: averageScoreNot),
        Argument(name: "averageScore_greater", type: "Int", value: averageScoreGreater),
        Argument(name: "averageScore_lesser", type: "Int", value: averageScoreLesser),
        Argument(name: "popularity_not", type: "Int", value: popularityNot),
        Argument(name: "popularity_greater", type: "Int", value: popularityGreater),
        Argument(name: "popularity_lesser", type: "Int", value: popularityLesser),
        Argument(name: "source_in", type: "[MediaSource]", value: sourceIn),
        Argument(name: "sort", type: "[MediaSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func characters<T>(
    id: OptionalArgument<Int> = .init(), isBirthday: OptionalArgument<Bool> = .init(),
    search: OptionalArgument<String> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.CharacterSort>]> = .init(),
    selection: Selection<T, [Objects.Character?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "characters",
      parent: "InternalPage",
      type: "Character",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "isBirthday", type: "Boolean", value: isBirthday),
        Argument(name: "search", type: "String", value: search),
        Argument(name: "id_not", type: "Int", value: idNot),
        Argument(name: "id_in", type: "[Int]", value: idIn),
        Argument(name: "id_not_in", type: "[Int]", value: idNotIn),
        Argument(name: "sort", type: "[CharacterSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func staff<T>(
    id: OptionalArgument<Int> = .init(), isBirthday: OptionalArgument<Bool> = .init(),
    search: OptionalArgument<String> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.StaffSort>]> = .init(),
    selection: Selection<T, [Objects.Staff?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "staff",
      parent: "InternalPage",
      type: "Staff",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "isBirthday", type: "Boolean", value: isBirthday),
        Argument(name: "search", type: "String", value: search),
        Argument(name: "id_not", type: "Int", value: idNot),
        Argument(name: "id_in", type: "[Int]", value: idIn),
        Argument(name: "id_not_in", type: "[Int]", value: idNotIn),
        Argument(name: "sort", type: "[StaffSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func studios<T>(
    id: OptionalArgument<Int> = .init(), search: OptionalArgument<String> = .init(),
    idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.StudioSort>]> = .init(),
    selection: Selection<T, [Objects.Studio?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "studios",
      parent: "InternalPage",
      type: "Studio",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "search", type: "String", value: search),
        Argument(name: "id_not", type: "Int", value: idNot),
        Argument(name: "id_in", type: "[Int]", value: idIn),
        Argument(name: "id_not_in", type: "[Int]", value: idNotIn),
        Argument(name: "sort", type: "[StudioSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func mediaList<T>(
    id: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    userName: OptionalArgument<String> = .init(), type: OptionalArgument<Enums.MediaType> = .init(),
    status: OptionalArgument<Enums.MediaListStatus> = .init(),
    mediaId: OptionalArgument<Int> = .init(), isFollowing: OptionalArgument<Bool> = .init(),
    notes: OptionalArgument<String> = .init(), startedAt: OptionalArgument<AnyCodable> = .init(),
    completedAt: OptionalArgument<AnyCodable> = .init(),
    compareWithAuthList: OptionalArgument<Bool> = .init(),
    userIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    statusIn: OptionalArgument<[OptionalArgument<Enums.MediaListStatus>]> = .init(),
    statusNotIn: OptionalArgument<[OptionalArgument<Enums.MediaListStatus>]> = .init(),
    statusNot: OptionalArgument<Enums.MediaListStatus> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    notesLike: OptionalArgument<String> = .init(),
    startedAtGreater: OptionalArgument<AnyCodable> = .init(),
    startedAtLesser: OptionalArgument<AnyCodable> = .init(),
    startedAtLike: OptionalArgument<String> = .init(),
    completedAtGreater: OptionalArgument<AnyCodable> = .init(),
    completedAtLesser: OptionalArgument<AnyCodable> = .init(),
    completedAtLike: OptionalArgument<String> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.MediaListSort>]> = .init(),
    selection: Selection<T, [Objects.MediaList?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "mediaList",
      parent: "InternalPage",
      type: "MediaList",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "userName", type: "String", value: userName),
        Argument(name: "type", type: "MediaType", value: type),
        Argument(name: "status", type: "MediaListStatus", value: status),
        Argument(name: "mediaId", type: "Int", value: mediaId),
        Argument(name: "isFollowing", type: "Boolean", value: isFollowing),
        Argument(name: "notes", type: "String", value: notes),
        Argument(name: "startedAt", type: "FuzzyDateInt", value: startedAt),
        Argument(name: "completedAt", type: "FuzzyDateInt", value: completedAt),
        Argument(name: "compareWithAuthList", type: "Boolean", value: compareWithAuthList),
        Argument(name: "userId_in", type: "[Int]", value: userIdIn),
        Argument(name: "status_in", type: "[MediaListStatus]", value: statusIn),
        Argument(name: "status_not_in", type: "[MediaListStatus]", value: statusNotIn),
        Argument(name: "status_not", type: "MediaListStatus", value: statusNot),
        Argument(name: "mediaId_in", type: "[Int]", value: mediaIdIn),
        Argument(name: "mediaId_not_in", type: "[Int]", value: mediaIdNotIn),
        Argument(name: "notes_like", type: "String", value: notesLike),
        Argument(name: "startedAt_greater", type: "FuzzyDateInt", value: startedAtGreater),
        Argument(name: "startedAt_lesser", type: "FuzzyDateInt", value: startedAtLesser),
        Argument(name: "startedAt_like", type: "String", value: startedAtLike),
        Argument(name: "completedAt_greater", type: "FuzzyDateInt", value: completedAtGreater),
        Argument(name: "completedAt_lesser", type: "FuzzyDateInt", value: completedAtLesser),
        Argument(name: "completedAt_like", type: "String", value: completedAtLike),
        Argument(name: "sort", type: "[MediaListSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func airingSchedules<T>(
    id: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    episode: OptionalArgument<Int> = .init(), airingAt: OptionalArgument<Int> = .init(),
    notYetAired: OptionalArgument<Bool> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNot: OptionalArgument<Int> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    episodeNot: OptionalArgument<Int> = .init(),
    episodeIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    episodeNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    episodeGreater: OptionalArgument<Int> = .init(), episodeLesser: OptionalArgument<Int> = .init(),
    airingAtGreater: OptionalArgument<Int> = .init(),
    airingAtLesser: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.AiringSort>]> = .init(),
    selection: Selection<T, [Objects.AiringSchedule?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "airingSchedules",
      parent: "InternalPage",
      type: "AiringSchedule",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "mediaId", type: "Int", value: mediaId),
        Argument(name: "episode", type: "Int", value: episode),
        Argument(name: "airingAt", type: "Int", value: airingAt),
        Argument(name: "notYetAired", type: "Boolean", value: notYetAired),
        Argument(name: "id_not", type: "Int", value: idNot),
        Argument(name: "id_in", type: "[Int]", value: idIn),
        Argument(name: "id_not_in", type: "[Int]", value: idNotIn),
        Argument(name: "mediaId_not", type: "Int", value: mediaIdNot),
        Argument(name: "mediaId_in", type: "[Int]", value: mediaIdIn),
        Argument(name: "mediaId_not_in", type: "[Int]", value: mediaIdNotIn),
        Argument(name: "episode_not", type: "Int", value: episodeNot),
        Argument(name: "episode_in", type: "[Int]", value: episodeIn),
        Argument(name: "episode_not_in", type: "[Int]", value: episodeNotIn),
        Argument(name: "episode_greater", type: "Int", value: episodeGreater),
        Argument(name: "episode_lesser", type: "Int", value: episodeLesser),
        Argument(name: "airingAt_greater", type: "Int", value: airingAtGreater),
        Argument(name: "airingAt_lesser", type: "Int", value: airingAtLesser),
        Argument(name: "sort", type: "[AiringSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func mediaTrends<T>(
    mediaId: OptionalArgument<Int> = .init(), date: OptionalArgument<Int> = .init(),
    trending: OptionalArgument<Int> = .init(), averageScore: OptionalArgument<Int> = .init(),
    popularity: OptionalArgument<Int> = .init(), episode: OptionalArgument<Int> = .init(),
    releasing: OptionalArgument<Bool> = .init(), mediaIdNot: OptionalArgument<Int> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    dateGreater: OptionalArgument<Int> = .init(), dateLesser: OptionalArgument<Int> = .init(),
    trendingGreater: OptionalArgument<Int> = .init(),
    trendingLesser: OptionalArgument<Int> = .init(), trendingNot: OptionalArgument<Int> = .init(),
    averageScoreGreater: OptionalArgument<Int> = .init(),
    averageScoreLesser: OptionalArgument<Int> = .init(),
    averageScoreNot: OptionalArgument<Int> = .init(),
    popularityGreater: OptionalArgument<Int> = .init(),
    popularityLesser: OptionalArgument<Int> = .init(),
    popularityNot: OptionalArgument<Int> = .init(), episodeGreater: OptionalArgument<Int> = .init(),
    episodeLesser: OptionalArgument<Int> = .init(), episodeNot: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.MediaTrendSort>]> = .init(),
    selection: Selection<T, [Objects.MediaTrend?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "mediaTrends",
      parent: "InternalPage",
      type: "MediaTrend",
      arguments: [
        Argument(name: "mediaId", type: "Int", value: mediaId),
        Argument(name: "date", type: "Int", value: date),
        Argument(name: "trending", type: "Int", value: trending),
        Argument(name: "averageScore", type: "Int", value: averageScore),
        Argument(name: "popularity", type: "Int", value: popularity),
        Argument(name: "episode", type: "Int", value: episode),
        Argument(name: "releasing", type: "Boolean", value: releasing),
        Argument(name: "mediaId_not", type: "Int", value: mediaIdNot),
        Argument(name: "mediaId_in", type: "[Int]", value: mediaIdIn),
        Argument(name: "mediaId_not_in", type: "[Int]", value: mediaIdNotIn),
        Argument(name: "date_greater", type: "Int", value: dateGreater),
        Argument(name: "date_lesser", type: "Int", value: dateLesser),
        Argument(name: "trending_greater", type: "Int", value: trendingGreater),
        Argument(name: "trending_lesser", type: "Int", value: trendingLesser),
        Argument(name: "trending_not", type: "Int", value: trendingNot),
        Argument(name: "averageScore_greater", type: "Int", value: averageScoreGreater),
        Argument(name: "averageScore_lesser", type: "Int", value: averageScoreLesser),
        Argument(name: "averageScore_not", type: "Int", value: averageScoreNot),
        Argument(name: "popularity_greater", type: "Int", value: popularityGreater),
        Argument(name: "popularity_lesser", type: "Int", value: popularityLesser),
        Argument(name: "popularity_not", type: "Int", value: popularityNot),
        Argument(name: "episode_greater", type: "Int", value: episodeGreater),
        Argument(name: "episode_lesser", type: "Int", value: episodeLesser),
        Argument(name: "episode_not", type: "Int", value: episodeNot),
        Argument(name: "sort", type: "[MediaTrendSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func notifications<T>(
    type: OptionalArgument<Enums.NotificationType> = .init(),
    resetNotificationCount: OptionalArgument<Bool> = .init(),
    typeIn: OptionalArgument<[OptionalArgument<Enums.NotificationType>]> = .init(),
    selection: Selection<T, [Unions.NotificationUnion?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "notifications",
      parent: "InternalPage",
      type: "NotificationUnion",
      arguments: [
        Argument(name: "type", type: "NotificationType", value: type),
        Argument(name: "resetNotificationCount", type: "Boolean", value: resetNotificationCount),
        Argument(name: "type_in", type: "[NotificationType]", value: typeIn),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func followers<T>(
    userId: Int, sort: OptionalArgument<[OptionalArgument<Enums.UserSort>]> = .init(),
    selection: Selection<T, [Objects.User?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "followers",
      parent: "InternalPage",
      type: "User",
      arguments: [
        Argument(name: "userId", type: "Int!", value: userId),
        Argument(name: "sort", type: "[UserSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func following<T>(
    userId: Int, sort: OptionalArgument<[OptionalArgument<Enums.UserSort>]> = .init(),
    selection: Selection<T, [Objects.User?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "following",
      parent: "InternalPage",
      type: "User",
      arguments: [
        Argument(name: "userId", type: "Int!", value: userId),
        Argument(name: "sort", type: "[UserSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func activities<T>(
    id: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    messengerId: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    type: OptionalArgument<Enums.ActivityType> = .init(),
    isFollowing: OptionalArgument<Bool> = .init(), hasReplies: OptionalArgument<Bool> = .init(),
    hasRepliesOrTypeText: OptionalArgument<Bool> = .init(),
    createdAt: OptionalArgument<Int> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    userIdNot: OptionalArgument<Int> = .init(),
    userIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    userIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    messengerIdNot: OptionalArgument<Int> = .init(),
    messengerIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    messengerIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNot: OptionalArgument<Int> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    typeNot: OptionalArgument<Enums.ActivityType> = .init(),
    typeIn: OptionalArgument<[OptionalArgument<Enums.ActivityType>]> = .init(),
    typeNotIn: OptionalArgument<[OptionalArgument<Enums.ActivityType>]> = .init(),
    createdAtGreater: OptionalArgument<Int> = .init(),
    createdAtLesser: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ActivitySort>]> = .init(),
    selection: Selection<T, [Unions.ActivityUnion?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "activities",
      parent: "InternalPage",
      type: "ActivityUnion",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "messengerId", type: "Int", value: messengerId),
        Argument(name: "mediaId", type: "Int", value: mediaId),
        Argument(name: "type", type: "ActivityType", value: type),
        Argument(name: "isFollowing", type: "Boolean", value: isFollowing),
        Argument(name: "hasReplies", type: "Boolean", value: hasReplies),
        Argument(name: "hasRepliesOrTypeText", type: "Boolean", value: hasRepliesOrTypeText),
        Argument(name: "createdAt", type: "Int", value: createdAt),
        Argument(name: "id_not", type: "Int", value: idNot),
        Argument(name: "id_in", type: "[Int]", value: idIn),
        Argument(name: "id_not_in", type: "[Int]", value: idNotIn),
        Argument(name: "userId_not", type: "Int", value: userIdNot),
        Argument(name: "userId_in", type: "[Int]", value: userIdIn),
        Argument(name: "userId_not_in", type: "[Int]", value: userIdNotIn),
        Argument(name: "messengerId_not", type: "Int", value: messengerIdNot),
        Argument(name: "messengerId_in", type: "[Int]", value: messengerIdIn),
        Argument(name: "messengerId_not_in", type: "[Int]", value: messengerIdNotIn),
        Argument(name: "mediaId_not", type: "Int", value: mediaIdNot),
        Argument(name: "mediaId_in", type: "[Int]", value: mediaIdIn),
        Argument(name: "mediaId_not_in", type: "[Int]", value: mediaIdNotIn),
        Argument(name: "type_not", type: "ActivityType", value: typeNot),
        Argument(name: "type_in", type: "[ActivityType]", value: typeIn),
        Argument(name: "type_not_in", type: "[ActivityType]", value: typeNotIn),
        Argument(name: "createdAt_greater", type: "Int", value: createdAtGreater),
        Argument(name: "createdAt_lesser", type: "Int", value: createdAtLesser),
        Argument(name: "sort", type: "[ActivitySort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func activityReplies<T>(
    id: OptionalArgument<Int> = .init(), activityId: OptionalArgument<Int> = .init(),
    selection: Selection<T, [Objects.ActivityReply?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "activityReplies",
      parent: "InternalPage",
      type: "ActivityReply",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "activityId", type: "Int", value: activityId),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func threads<T>(
    id: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    replyUserId: OptionalArgument<Int> = .init(), subscribed: OptionalArgument<Bool> = .init(),
    categoryId: OptionalArgument<Int> = .init(), mediaCategoryId: OptionalArgument<Int> = .init(),
    search: OptionalArgument<String> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ThreadSort>]> = .init(),
    selection: Selection<T, [Objects.Thread?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "threads",
      parent: "InternalPage",
      type: "Thread",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "replyUserId", type: "Int", value: replyUserId),
        Argument(name: "subscribed", type: "Boolean", value: subscribed),
        Argument(name: "categoryId", type: "Int", value: categoryId),
        Argument(name: "mediaCategoryId", type: "Int", value: mediaCategoryId),
        Argument(name: "search", type: "String", value: search),
        Argument(name: "id_in", type: "[Int]", value: idIn),
        Argument(name: "sort", type: "[ThreadSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func threadComments<T>(
    id: OptionalArgument<Int> = .init(), threadId: OptionalArgument<Int> = .init(),
    userId: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ThreadCommentSort>]> = .init(),
    selection: Selection<T, [Objects.ThreadComment?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "threadComments",
      parent: "InternalPage",
      type: "ThreadComment",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "threadId", type: "Int", value: threadId),
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "sort", type: "[ThreadCommentSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func reviews<T>(
    id: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    userId: OptionalArgument<Int> = .init(), mediaType: OptionalArgument<Enums.MediaType> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ReviewSort>]> = .init(),
    selection: Selection<T, [Objects.Review?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "reviews",
      parent: "InternalPage",
      type: "Review",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "mediaId", type: "Int", value: mediaId),
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "mediaType", type: "MediaType", value: mediaType),
        Argument(name: "sort", type: "[ReviewSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func recommendations<T>(
    id: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    mediaRecommendationId: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    rating: OptionalArgument<Int> = .init(), onList: OptionalArgument<Bool> = .init(),
    ratingGreater: OptionalArgument<Int> = .init(), ratingLesser: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.RecommendationSort>]> = .init(),
    selection: Selection<T, [Objects.Recommendation?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "recommendations",
      parent: "InternalPage",
      type: "Recommendation",
      arguments: [
        Argument(name: "id", type: "Int", value: id),
        Argument(name: "mediaId", type: "Int", value: mediaId),
        Argument(name: "mediaRecommendationId", type: "Int", value: mediaRecommendationId),
        Argument(name: "userId", type: "Int", value: userId),
        Argument(name: "rating", type: "Int", value: rating),
        Argument(name: "onList", type: "Boolean", value: onList),
        Argument(name: "rating_greater", type: "Int", value: ratingGreater),
        Argument(name: "rating_lesser", type: "Int", value: ratingLesser),
        Argument(name: "sort", type: "[RecommendationSort]", value: sort),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func likes<T>(
    likeableId: OptionalArgument<Int> = .init(),
    type: OptionalArgument<Enums.LikeableType> = .init(), selection: Selection<T, [Objects.User?]?>
  ) throws -> T {
    let field = GraphQLField.composite(
      field: "likes",
      parent: "InternalPage",
      type: "User",
      arguments: [
        Argument(name: "likeableId", type: "Int", value: likeableId),
        Argument(name: "type", type: "LikeableType", value: type),
      ],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias InternalPage<W> = Selection<W, Objects.InternalPage>
}
extension Objects {
  public struct MediaSubmission {}
}

extension Fields where TypeLock == Objects.MediaSubmission {
  /// The id of the submission

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "MediaSubmission",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// User submitter of the submission

  public func submitter<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "submitter",
      parent: "MediaSubmission",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Data Mod assigned to handle the submission

  public func assignee<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "assignee",
      parent: "MediaSubmission",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Status of the submission

  public func status() throws -> Enums.SubmissionStatus? {
    let field = GraphQLField.leaf(
      field: "status",
      parent: "MediaSubmission",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.SubmissionStatus?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func submitterStats() throws -> AnyCodable? {
    let field = GraphQLField.leaf(
      field: "submitterStats",
      parent: "MediaSubmission",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try AnyCodable?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func notes() throws -> String? {
    let field = GraphQLField.leaf(
      field: "notes",
      parent: "MediaSubmission",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func source() throws -> String? {
    let field = GraphQLField.leaf(
      field: "source",
      parent: "MediaSubmission",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func changes() throws -> [String?]? {
    let field = GraphQLField.leaf(
      field: "changes",
      parent: "MediaSubmission",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try [String?]?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Whether the submission is locked

  public func locked() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "locked",
      parent: "MediaSubmission",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func media<T>(selection: Selection<T, Objects.Media?>) throws -> T {
    let field = GraphQLField.composite(
      field: "media",
      parent: "MediaSubmission",
      type: "Media",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func submission<T>(selection: Selection<T, Objects.Media?>) throws -> T {
    let field = GraphQLField.composite(
      field: "submission",
      parent: "MediaSubmission",
      type: "Media",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func characters<T>(selection: Selection<T, [Objects.MediaSubmissionComparison?]?>) throws
    -> T
  {
    let field = GraphQLField.composite(
      field: "characters",
      parent: "MediaSubmission",
      type: "MediaSubmissionComparison",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func staff<T>(selection: Selection<T, [Objects.MediaSubmissionComparison?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "staff",
      parent: "MediaSubmission",
      type: "MediaSubmissionComparison",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func studios<T>(selection: Selection<T, [Objects.MediaSubmissionComparison?]?>) throws -> T
  {
    let field = GraphQLField.composite(
      field: "studios",
      parent: "MediaSubmission",
      type: "MediaSubmissionComparison",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func relations<T>(selection: Selection<T, [Objects.MediaEdge?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "relations",
      parent: "MediaSubmission",
      type: "MediaEdge",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func externalLinks<T>(selection: Selection<T, [Objects.MediaSubmissionComparison?]?>)
    throws -> T
  {
    let field = GraphQLField.composite(
      field: "externalLinks",
      parent: "MediaSubmission",
      type: "MediaSubmissionComparison",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "MediaSubmission",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaSubmission<W> = Selection<W, Objects.MediaSubmission>
}
extension Objects {
  public struct MediaSubmissionComparison {}
}

extension Fields where TypeLock == Objects.MediaSubmissionComparison {

  public func submission<T>(selection: Selection<T, Objects.MediaSubmissionEdge?>) throws -> T {
    let field = GraphQLField.composite(
      field: "submission",
      parent: "MediaSubmissionComparison",
      type: "MediaSubmissionEdge",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func character<T>(selection: Selection<T, Objects.MediaCharacter?>) throws -> T {
    let field = GraphQLField.composite(
      field: "character",
      parent: "MediaSubmissionComparison",
      type: "MediaCharacter",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func staff<T>(selection: Selection<T, Objects.StaffEdge?>) throws -> T {
    let field = GraphQLField.composite(
      field: "staff",
      parent: "MediaSubmissionComparison",
      type: "StaffEdge",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func studio<T>(selection: Selection<T, Objects.StudioEdge?>) throws -> T {
    let field = GraphQLField.composite(
      field: "studio",
      parent: "MediaSubmissionComparison",
      type: "StudioEdge",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func externalLink<T>(selection: Selection<T, Objects.MediaExternalLink?>) throws -> T {
    let field = GraphQLField.composite(
      field: "externalLink",
      parent: "MediaSubmissionComparison",
      type: "MediaExternalLink",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaSubmissionComparison<W> = Selection<W, Objects.MediaSubmissionComparison>
}
extension Objects {
  public struct MediaSubmissionEdge {}
}

extension Fields where TypeLock == Objects.MediaSubmissionEdge {
  /// The id of the direct submission

  public func id() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "MediaSubmissionEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func characterRole() throws -> Enums.CharacterRole? {
    let field = GraphQLField.leaf(
      field: "characterRole",
      parent: "MediaSubmissionEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.CharacterRole?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func staffRole() throws -> String? {
    let field = GraphQLField.leaf(
      field: "staffRole",
      parent: "MediaSubmissionEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func roleNotes() throws -> String? {
    let field = GraphQLField.leaf(
      field: "roleNotes",
      parent: "MediaSubmissionEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func dubGroup() throws -> String? {
    let field = GraphQLField.leaf(
      field: "dubGroup",
      parent: "MediaSubmissionEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func characterName() throws -> String? {
    let field = GraphQLField.leaf(
      field: "characterName",
      parent: "MediaSubmissionEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func isMain() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "isMain",
      parent: "MediaSubmissionEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func character<T>(selection: Selection<T, Objects.Character?>) throws -> T {
    let field = GraphQLField.composite(
      field: "character",
      parent: "MediaSubmissionEdge",
      type: "Character",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func characterSubmission<T>(selection: Selection<T, Objects.Character?>) throws -> T {
    let field = GraphQLField.composite(
      field: "characterSubmission",
      parent: "MediaSubmissionEdge",
      type: "Character",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func voiceActor<T>(selection: Selection<T, Objects.Staff?>) throws -> T {
    let field = GraphQLField.composite(
      field: "voiceActor",
      parent: "MediaSubmissionEdge",
      type: "Staff",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func voiceActorSubmission<T>(selection: Selection<T, Objects.Staff?>) throws -> T {
    let field = GraphQLField.composite(
      field: "voiceActorSubmission",
      parent: "MediaSubmissionEdge",
      type: "Staff",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func staff<T>(selection: Selection<T, Objects.Staff?>) throws -> T {
    let field = GraphQLField.composite(
      field: "staff",
      parent: "MediaSubmissionEdge",
      type: "Staff",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func staffSubmission<T>(selection: Selection<T, Objects.Staff?>) throws -> T {
    let field = GraphQLField.composite(
      field: "staffSubmission",
      parent: "MediaSubmissionEdge",
      type: "Staff",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func studio<T>(selection: Selection<T, Objects.Studio?>) throws -> T {
    let field = GraphQLField.composite(
      field: "studio",
      parent: "MediaSubmissionEdge",
      type: "Studio",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func externalLink<T>(selection: Selection<T, Objects.MediaExternalLink?>) throws -> T {
    let field = GraphQLField.composite(
      field: "externalLink",
      parent: "MediaSubmissionEdge",
      type: "MediaExternalLink",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func media<T>(selection: Selection<T, Objects.Media?>) throws -> T {
    let field = GraphQLField.composite(
      field: "media",
      parent: "MediaSubmissionEdge",
      type: "Media",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaSubmissionEdge<W> = Selection<W, Objects.MediaSubmissionEdge>
}
extension Objects {
  public struct MediaCharacter {}
}

extension Fields where TypeLock == Objects.MediaCharacter {
  /// The id of the connection

  public func id() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "MediaCharacter",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The characters role in the media

  public func role() throws -> Enums.CharacterRole? {
    let field = GraphQLField.leaf(
      field: "role",
      parent: "MediaCharacter",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.CharacterRole?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func roleNotes() throws -> String? {
    let field = GraphQLField.leaf(
      field: "roleNotes",
      parent: "MediaCharacter",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func dubGroup() throws -> String? {
    let field = GraphQLField.leaf(
      field: "dubGroup",
      parent: "MediaCharacter",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Media specific character name

  public func characterName() throws -> String? {
    let field = GraphQLField.leaf(
      field: "characterName",
      parent: "MediaCharacter",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The characters in the media voiced by the parent actor

  public func character<T>(selection: Selection<T, Objects.Character?>) throws -> T {
    let field = GraphQLField.composite(
      field: "character",
      parent: "MediaCharacter",
      type: "Character",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The voice actor of the character

  public func voiceActor<T>(selection: Selection<T, Objects.Staff?>) throws -> T {
    let field = GraphQLField.composite(
      field: "voiceActor",
      parent: "MediaCharacter",
      type: "Staff",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias MediaCharacter<W> = Selection<W, Objects.MediaCharacter>
}
extension Objects {
  public struct CharacterSubmission {}
}

extension Fields where TypeLock == Objects.CharacterSubmission {
  /// The id of the submission

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "CharacterSubmission",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// Character that the submission is referencing

  public func character<T>(selection: Selection<T, Objects.Character?>) throws -> T {
    let field = GraphQLField.composite(
      field: "character",
      parent: "CharacterSubmission",
      type: "Character",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The character submission changes

  public func submission<T>(selection: Selection<T, Objects.Character?>) throws -> T {
    let field = GraphQLField.composite(
      field: "submission",
      parent: "CharacterSubmission",
      type: "Character",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Submitter for the submission

  public func submitter<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "submitter",
      parent: "CharacterSubmission",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Data Mod assigned to handle the submission

  public func assignee<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "assignee",
      parent: "CharacterSubmission",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Status of the submission

  public func status() throws -> Enums.SubmissionStatus? {
    let field = GraphQLField.leaf(
      field: "status",
      parent: "CharacterSubmission",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.SubmissionStatus?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Inner details of submission status

  public func notes() throws -> String? {
    let field = GraphQLField.leaf(
      field: "notes",
      parent: "CharacterSubmission",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func source() throws -> String? {
    let field = GraphQLField.leaf(
      field: "source",
      parent: "CharacterSubmission",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Whether the submission is locked

  public func locked() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "locked",
      parent: "CharacterSubmission",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "CharacterSubmission",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias CharacterSubmission<W> = Selection<W, Objects.CharacterSubmission>
}
extension Objects {
  public struct StaffSubmission {}
}

extension Fields where TypeLock == Objects.StaffSubmission {
  /// The id of the submission

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "StaffSubmission",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// Staff that the submission is referencing

  public func staff<T>(selection: Selection<T, Objects.Staff?>) throws -> T {
    let field = GraphQLField.composite(
      field: "staff",
      parent: "StaffSubmission",
      type: "Staff",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The staff submission changes

  public func submission<T>(selection: Selection<T, Objects.Staff?>) throws -> T {
    let field = GraphQLField.composite(
      field: "submission",
      parent: "StaffSubmission",
      type: "Staff",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Submitter for the submission

  public func submitter<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "submitter",
      parent: "StaffSubmission",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Data Mod assigned to handle the submission

  public func assignee<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "assignee",
      parent: "StaffSubmission",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// Status of the submission

  public func status() throws -> Enums.SubmissionStatus? {
    let field = GraphQLField.leaf(
      field: "status",
      parent: "StaffSubmission",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.SubmissionStatus?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Inner details of submission status

  public func notes() throws -> String? {
    let field = GraphQLField.leaf(
      field: "notes",
      parent: "StaffSubmission",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func source() throws -> String? {
    let field = GraphQLField.leaf(
      field: "source",
      parent: "StaffSubmission",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// Whether the submission is locked

  public func locked() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "locked",
      parent: "StaffSubmission",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "StaffSubmission",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias StaffSubmission<W> = Selection<W, Objects.StaffSubmission>
}
extension Objects {
  public struct RevisionHistory {}
}

extension Fields where TypeLock == Objects.RevisionHistory {
  /// The id of the media

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "RevisionHistory",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
  /// The action taken on the objects

  public func action() throws -> Enums.RevisionHistoryAction? {
    let field = GraphQLField.leaf(
      field: "action",
      parent: "RevisionHistory",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.RevisionHistoryAction?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// A JSON object of the fields that changed

  public func changes() throws -> AnyCodable? {
    let field = GraphQLField.leaf(
      field: "changes",
      parent: "RevisionHistory",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try AnyCodable?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The user who made the edit to the object

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "RevisionHistory",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The media the mod feed entry references

  public func media<T>(selection: Selection<T, Objects.Media?>) throws -> T {
    let field = GraphQLField.composite(
      field: "media",
      parent: "RevisionHistory",
      type: "Media",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The character the mod feed entry references

  public func character<T>(selection: Selection<T, Objects.Character?>) throws -> T {
    let field = GraphQLField.composite(
      field: "character",
      parent: "RevisionHistory",
      type: "Character",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The staff member the mod feed entry references

  public func staff<T>(selection: Selection<T, Objects.Staff?>) throws -> T {
    let field = GraphQLField.composite(
      field: "staff",
      parent: "RevisionHistory",
      type: "Staff",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The studio the mod feed entry references

  public func studio<T>(selection: Selection<T, Objects.Studio?>) throws -> T {
    let field = GraphQLField.composite(
      field: "studio",
      parent: "RevisionHistory",
      type: "Studio",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The external link source the mod feed entry references

  public func externalLink<T>(selection: Selection<T, Objects.MediaExternalLink?>) throws -> T {
    let field = GraphQLField.composite(
      field: "externalLink",
      parent: "RevisionHistory",
      type: "MediaExternalLink",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// When the mod feed entry was created

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "RevisionHistory",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias RevisionHistory<W> = Selection<W, Objects.RevisionHistory>
}
extension Objects {
  public struct Report {}
}

extension Fields where TypeLock == Objects.Report {

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "Report",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func reporter<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "reporter",
      parent: "Report",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func reported<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "reported",
      parent: "Report",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func reason() throws -> String? {
    let field = GraphQLField.leaf(
      field: "reason",
      parent: "Report",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// When the entry data was created

  public func createdAt() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "Report",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func cleared() throws -> Bool? {
    let field = GraphQLField.leaf(
      field: "cleared",
      parent: "Report",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Bool?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias Report<W> = Selection<W, Objects.Report>
}
extension Objects {
  public struct ModAction {}
}

extension Fields where TypeLock == Objects.ModAction {
  /// The id of the action

  public func id() throws -> Int {
    let field = GraphQLField.leaf(
      field: "id",
      parent: "ModAction",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }

  public func user<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "user",
      parent: "ModAction",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func mod<T>(selection: Selection<T, Objects.User?>) throws -> T {
    let field = GraphQLField.composite(
      field: "mod",
      parent: "ModAction",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func type() throws -> Enums.ModActionType? {
    let field = GraphQLField.leaf(
      field: "type",
      parent: "ModAction",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.ModActionType?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func objectId() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "objectId",
      parent: "ModAction",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func objectType() throws -> String? {
    let field = GraphQLField.leaf(
      field: "objectType",
      parent: "ModAction",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func data() throws -> String? {
    let field = GraphQLField.leaf(
      field: "data",
      parent: "ModAction",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func createdAt() throws -> Int {
    let field = GraphQLField.leaf(
      field: "createdAt",
      parent: "ModAction",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int(from: $0) }
    case .selecting:
      return Int.mockValue
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias ModAction<W> = Selection<W, Objects.ModAction>
}
extension Objects {
  public struct CharacterSubmissionConnection {}
}

extension Fields where TypeLock == Objects.CharacterSubmissionConnection {

  public func edges<T>(selection: Selection<T, [Objects.CharacterSubmissionEdge?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "edges",
      parent: "CharacterSubmissionConnection",
      type: "CharacterSubmissionEdge",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func nodes<T>(selection: Selection<T, [Objects.CharacterSubmission?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "nodes",
      parent: "CharacterSubmissionConnection",
      type: "CharacterSubmission",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The pagination information

  public func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) throws -> T {
    let field = GraphQLField.composite(
      field: "pageInfo",
      parent: "CharacterSubmissionConnection",
      type: "PageInfo",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias CharacterSubmissionConnection<W> = Selection<
    W, Objects.CharacterSubmissionConnection
  >
}
extension Objects {
  public struct CharacterSubmissionEdge {}
}

extension Fields where TypeLock == Objects.CharacterSubmissionEdge {

  public func node<T>(selection: Selection<T, Objects.CharacterSubmission?>) throws -> T {
    let field = GraphQLField.composite(
      field: "node",
      parent: "CharacterSubmissionEdge",
      type: "CharacterSubmission",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The characters role in the media

  public func role() throws -> Enums.CharacterRole? {
    let field = GraphQLField.leaf(
      field: "role",
      parent: "CharacterSubmissionEdge",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Enums.CharacterRole?(from: $0) }
    case .selecting:
      return nil
    }
  }
  /// The voice actors of the character

  public func voiceActors<T>(selection: Selection<T, [Objects.Staff?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "voiceActors",
      parent: "CharacterSubmissionEdge",
      type: "Staff",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
  /// The submitted voice actors of the character

  public func submittedVoiceActors<T>(selection: Selection<T, [Objects.StaffSubmission?]?>) throws
    -> T
  {
    let field = GraphQLField.composite(
      field: "submittedVoiceActors",
      parent: "CharacterSubmissionEdge",
      type: "StaffSubmission",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias CharacterSubmissionEdge<W> = Selection<W, Objects.CharacterSubmissionEdge>
}
extension Objects {
  public struct UserModData {}
}

extension Fields where TypeLock == Objects.UserModData {

  public func alts<T>(selection: Selection<T, [Objects.User?]?>) throws -> T {
    let field = GraphQLField.composite(
      field: "alts",
      parent: "UserModData",
      type: "User",
      arguments: [],
      selection: selection.__selection()
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try selection.__decode(data: $0) }
    case .selecting:
      return try selection.__mock()
    }
  }

  public func bans() throws -> AnyCodable? {
    let field = GraphQLField.leaf(
      field: "bans",
      parent: "UserModData",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try AnyCodable?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func ip() throws -> AnyCodable? {
    let field = GraphQLField.leaf(
      field: "ip",
      parent: "UserModData",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try AnyCodable?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func counts() throws -> AnyCodable? {
    let field = GraphQLField.leaf(
      field: "counts",
      parent: "UserModData",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try AnyCodable?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func privacy() throws -> Int? {
    let field = GraphQLField.leaf(
      field: "privacy",
      parent: "UserModData",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try Int?(from: $0) }
    case .selecting:
      return nil
    }
  }

  public func email() throws -> String? {
    let field = GraphQLField.leaf(
      field: "email",
      parent: "UserModData",
      arguments: []
    )
    self.__select(field)

    switch self.__state {
    case .decoding:
      return try self.__decode(field: field.alias!) { try String?(from: $0) }
    case .selecting:
      return nil
    }
  }
}
extension Selection where T == Never, TypeLock == Never {
  public typealias UserModData<W> = Selection<W, Objects.UserModData>
}
extension Objects.Query {

  public static func page<T>(
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.Page?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.page(page: page, perPage: perPage, selection: selection)
    }
  }
  /// Media query

  public static func media<T>(
    id: OptionalArgument<Int> = .init(), idMal: OptionalArgument<Int> = .init(),
    startDate: OptionalArgument<AnyCodable> = .init(),
    endDate: OptionalArgument<AnyCodable> = .init(),
    season: OptionalArgument<Enums.MediaSeason> = .init(),
    seasonYear: OptionalArgument<Int> = .init(), type: OptionalArgument<Enums.MediaType> = .init(),
    format: OptionalArgument<Enums.MediaFormat> = .init(),
    status: OptionalArgument<Enums.MediaStatus> = .init(),
    episodes: OptionalArgument<Int> = .init(), duration: OptionalArgument<Int> = .init(),
    chapters: OptionalArgument<Int> = .init(), volumes: OptionalArgument<Int> = .init(),
    isAdult: OptionalArgument<Bool> = .init(), genre: OptionalArgument<String> = .init(),
    tag: OptionalArgument<String> = .init(), minimumTagRank: OptionalArgument<Int> = .init(),
    tagCategory: OptionalArgument<String> = .init(), onList: OptionalArgument<Bool> = .init(),
    licensedBy: OptionalArgument<String> = .init(), licensedById: OptionalArgument<Int> = .init(),
    averageScore: OptionalArgument<Int> = .init(), popularity: OptionalArgument<Int> = .init(),
    source: OptionalArgument<Enums.MediaSource> = .init(),
    countryOfOrigin: OptionalArgument<AnyCodable> = .init(),
    isLicensed: OptionalArgument<Bool> = .init(), search: OptionalArgument<String> = .init(),
    idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idMalNot: OptionalArgument<Int> = .init(),
    idMalIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idMalNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    startDateGreater: OptionalArgument<AnyCodable> = .init(),
    startDateLesser: OptionalArgument<AnyCodable> = .init(),
    startDateLike: OptionalArgument<String> = .init(),
    endDateGreater: OptionalArgument<AnyCodable> = .init(),
    endDateLesser: OptionalArgument<AnyCodable> = .init(),
    endDateLike: OptionalArgument<String> = .init(),
    formatIn: OptionalArgument<[OptionalArgument<Enums.MediaFormat>]> = .init(),
    formatNot: OptionalArgument<Enums.MediaFormat> = .init(),
    formatNotIn: OptionalArgument<[OptionalArgument<Enums.MediaFormat>]> = .init(),
    statusIn: OptionalArgument<[OptionalArgument<Enums.MediaStatus>]> = .init(),
    statusNot: OptionalArgument<Enums.MediaStatus> = .init(),
    statusNotIn: OptionalArgument<[OptionalArgument<Enums.MediaStatus>]> = .init(),
    episodesGreater: OptionalArgument<Int> = .init(),
    episodesLesser: OptionalArgument<Int> = .init(),
    durationGreater: OptionalArgument<Int> = .init(),
    durationLesser: OptionalArgument<Int> = .init(),
    chaptersGreater: OptionalArgument<Int> = .init(),
    chaptersLesser: OptionalArgument<Int> = .init(),
    volumesGreater: OptionalArgument<Int> = .init(), volumesLesser: OptionalArgument<Int> = .init(),
    genreIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    genreNotIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagNotIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagCategoryIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagCategoryNotIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    licensedByIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    licensedByIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    averageScoreNot: OptionalArgument<Int> = .init(),
    averageScoreGreater: OptionalArgument<Int> = .init(),
    averageScoreLesser: OptionalArgument<Int> = .init(),
    popularityNot: OptionalArgument<Int> = .init(),
    popularityGreater: OptionalArgument<Int> = .init(),
    popularityLesser: OptionalArgument<Int> = .init(),
    sourceIn: OptionalArgument<[OptionalArgument<Enums.MediaSource>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.MediaSort>]> = .init(),
    selection: Selection<T, Objects.Media?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.media(
        id: id, idMal: idMal, startDate: startDate, endDate: endDate, season: season,
        seasonYear: seasonYear, type: type, format: format, status: status, episodes: episodes,
        duration: duration, chapters: chapters, volumes: volumes, isAdult: isAdult, genre: genre,
        tag: tag, minimumTagRank: minimumTagRank, tagCategory: tagCategory, onList: onList,
        licensedBy: licensedBy, licensedById: licensedById, averageScore: averageScore,
        popularity: popularity, source: source, countryOfOrigin: countryOfOrigin,
        isLicensed: isLicensed, search: search, idNot: idNot, idIn: idIn, idNotIn: idNotIn,
        idMalNot: idMalNot, idMalIn: idMalIn, idMalNotIn: idMalNotIn,
        startDateGreater: startDateGreater, startDateLesser: startDateLesser,
        startDateLike: startDateLike, endDateGreater: endDateGreater, endDateLesser: endDateLesser,
        endDateLike: endDateLike, formatIn: formatIn, formatNot: formatNot,
        formatNotIn: formatNotIn, statusIn: statusIn, statusNot: statusNot,
        statusNotIn: statusNotIn, episodesGreater: episodesGreater, episodesLesser: episodesLesser,
        durationGreater: durationGreater, durationLesser: durationLesser,
        chaptersGreater: chaptersGreater, chaptersLesser: chaptersLesser,
        volumesGreater: volumesGreater, volumesLesser: volumesLesser, genreIn: genreIn,
        genreNotIn: genreNotIn, tagIn: tagIn, tagNotIn: tagNotIn, tagCategoryIn: tagCategoryIn,
        tagCategoryNotIn: tagCategoryNotIn, licensedByIn: licensedByIn,
        licensedByIdIn: licensedByIdIn, averageScoreNot: averageScoreNot,
        averageScoreGreater: averageScoreGreater, averageScoreLesser: averageScoreLesser,
        popularityNot: popularityNot, popularityGreater: popularityGreater,
        popularityLesser: popularityLesser, sourceIn: sourceIn, sort: sort, selection: selection)
    }
  }
  /// Media Trend query

  public static func mediaTrend<T>(
    mediaId: OptionalArgument<Int> = .init(), date: OptionalArgument<Int> = .init(),
    trending: OptionalArgument<Int> = .init(), averageScore: OptionalArgument<Int> = .init(),
    popularity: OptionalArgument<Int> = .init(), episode: OptionalArgument<Int> = .init(),
    releasing: OptionalArgument<Bool> = .init(), mediaIdNot: OptionalArgument<Int> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    dateGreater: OptionalArgument<Int> = .init(), dateLesser: OptionalArgument<Int> = .init(),
    trendingGreater: OptionalArgument<Int> = .init(),
    trendingLesser: OptionalArgument<Int> = .init(), trendingNot: OptionalArgument<Int> = .init(),
    averageScoreGreater: OptionalArgument<Int> = .init(),
    averageScoreLesser: OptionalArgument<Int> = .init(),
    averageScoreNot: OptionalArgument<Int> = .init(),
    popularityGreater: OptionalArgument<Int> = .init(),
    popularityLesser: OptionalArgument<Int> = .init(),
    popularityNot: OptionalArgument<Int> = .init(), episodeGreater: OptionalArgument<Int> = .init(),
    episodeLesser: OptionalArgument<Int> = .init(), episodeNot: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.MediaTrendSort>]> = .init(),
    selection: Selection<T, Objects.MediaTrend?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.mediaTrend(
        mediaId: mediaId, date: date, trending: trending, averageScore: averageScore,
        popularity: popularity, episode: episode, releasing: releasing, mediaIdNot: mediaIdNot,
        mediaIdIn: mediaIdIn, mediaIdNotIn: mediaIdNotIn, dateGreater: dateGreater,
        dateLesser: dateLesser, trendingGreater: trendingGreater, trendingLesser: trendingLesser,
        trendingNot: trendingNot, averageScoreGreater: averageScoreGreater,
        averageScoreLesser: averageScoreLesser, averageScoreNot: averageScoreNot,
        popularityGreater: popularityGreater, popularityLesser: popularityLesser,
        popularityNot: popularityNot, episodeGreater: episodeGreater, episodeLesser: episodeLesser,
        episodeNot: episodeNot, sort: sort, selection: selection)
    }
  }
  /// Airing schedule query

  public static func airingSchedule<T>(
    id: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    episode: OptionalArgument<Int> = .init(), airingAt: OptionalArgument<Int> = .init(),
    notYetAired: OptionalArgument<Bool> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNot: OptionalArgument<Int> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    episodeNot: OptionalArgument<Int> = .init(),
    episodeIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    episodeNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    episodeGreater: OptionalArgument<Int> = .init(), episodeLesser: OptionalArgument<Int> = .init(),
    airingAtGreater: OptionalArgument<Int> = .init(),
    airingAtLesser: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.AiringSort>]> = .init(),
    selection: Selection<T, Objects.AiringSchedule?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.airingSchedule(
        id: id, mediaId: mediaId, episode: episode, airingAt: airingAt, notYetAired: notYetAired,
        idNot: idNot, idIn: idIn, idNotIn: idNotIn, mediaIdNot: mediaIdNot, mediaIdIn: mediaIdIn,
        mediaIdNotIn: mediaIdNotIn, episodeNot: episodeNot, episodeIn: episodeIn,
        episodeNotIn: episodeNotIn, episodeGreater: episodeGreater, episodeLesser: episodeLesser,
        airingAtGreater: airingAtGreater, airingAtLesser: airingAtLesser, sort: sort,
        selection: selection)
    }
  }
  /// Character query

  public static func character<T>(
    id: OptionalArgument<Int> = .init(), isBirthday: OptionalArgument<Bool> = .init(),
    search: OptionalArgument<String> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.CharacterSort>]> = .init(),
    selection: Selection<T, Objects.Character?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.character(
        id: id, isBirthday: isBirthday, search: search, idNot: idNot, idIn: idIn, idNotIn: idNotIn,
        sort: sort, selection: selection)
    }
  }
  /// Staff query

  public static func staff<T>(
    id: OptionalArgument<Int> = .init(), isBirthday: OptionalArgument<Bool> = .init(),
    search: OptionalArgument<String> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.StaffSort>]> = .init(),
    selection: Selection<T, Objects.Staff?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.staff(
        id: id, isBirthday: isBirthday, search: search, idNot: idNot, idIn: idIn, idNotIn: idNotIn,
        sort: sort, selection: selection)
    }
  }
  /// Media list query

  public static func mediaList<T>(
    id: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    userName: OptionalArgument<String> = .init(), type: OptionalArgument<Enums.MediaType> = .init(),
    status: OptionalArgument<Enums.MediaListStatus> = .init(),
    mediaId: OptionalArgument<Int> = .init(), isFollowing: OptionalArgument<Bool> = .init(),
    notes: OptionalArgument<String> = .init(), startedAt: OptionalArgument<AnyCodable> = .init(),
    completedAt: OptionalArgument<AnyCodable> = .init(),
    compareWithAuthList: OptionalArgument<Bool> = .init(),
    userIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    statusIn: OptionalArgument<[OptionalArgument<Enums.MediaListStatus>]> = .init(),
    statusNotIn: OptionalArgument<[OptionalArgument<Enums.MediaListStatus>]> = .init(),
    statusNot: OptionalArgument<Enums.MediaListStatus> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    notesLike: OptionalArgument<String> = .init(),
    startedAtGreater: OptionalArgument<AnyCodable> = .init(),
    startedAtLesser: OptionalArgument<AnyCodable> = .init(),
    startedAtLike: OptionalArgument<String> = .init(),
    completedAtGreater: OptionalArgument<AnyCodable> = .init(),
    completedAtLesser: OptionalArgument<AnyCodable> = .init(),
    completedAtLike: OptionalArgument<String> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.MediaListSort>]> = .init(),
    selection: Selection<T, Objects.MediaList?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.mediaList(
        id: id, userId: userId, userName: userName, type: type, status: status, mediaId: mediaId,
        isFollowing: isFollowing, notes: notes, startedAt: startedAt, completedAt: completedAt,
        compareWithAuthList: compareWithAuthList, userIdIn: userIdIn, statusIn: statusIn,
        statusNotIn: statusNotIn, statusNot: statusNot, mediaIdIn: mediaIdIn,
        mediaIdNotIn: mediaIdNotIn, notesLike: notesLike, startedAtGreater: startedAtGreater,
        startedAtLesser: startedAtLesser, startedAtLike: startedAtLike,
        completedAtGreater: completedAtGreater, completedAtLesser: completedAtLesser,
        completedAtLike: completedAtLike, sort: sort, selection: selection)
    }
  }
  /// Media list collection query, provides list pre-grouped by status & custom lists. User ID and Media Type arguments required.

  public static func mediaListCollection<T>(
    userId: OptionalArgument<Int> = .init(), userName: OptionalArgument<String> = .init(),
    type: OptionalArgument<Enums.MediaType> = .init(),
    status: OptionalArgument<Enums.MediaListStatus> = .init(),
    notes: OptionalArgument<String> = .init(), startedAt: OptionalArgument<AnyCodable> = .init(),
    completedAt: OptionalArgument<AnyCodable> = .init(),
    forceSingleCompletedList: OptionalArgument<Bool> = .init(),
    chunk: OptionalArgument<Int> = .init(), perChunk: OptionalArgument<Int> = .init(),
    statusIn: OptionalArgument<[OptionalArgument<Enums.MediaListStatus>]> = .init(),
    statusNotIn: OptionalArgument<[OptionalArgument<Enums.MediaListStatus>]> = .init(),
    statusNot: OptionalArgument<Enums.MediaListStatus> = .init(),
    notesLike: OptionalArgument<String> = .init(),
    startedAtGreater: OptionalArgument<AnyCodable> = .init(),
    startedAtLesser: OptionalArgument<AnyCodable> = .init(),
    startedAtLike: OptionalArgument<String> = .init(),
    completedAtGreater: OptionalArgument<AnyCodable> = .init(),
    completedAtLesser: OptionalArgument<AnyCodable> = .init(),
    completedAtLike: OptionalArgument<String> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.MediaListSort>]> = .init(),
    selection: Selection<T, Objects.MediaListCollection?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.mediaListCollection(
        userId: userId, userName: userName, type: type, status: status, notes: notes,
        startedAt: startedAt, completedAt: completedAt,
        forceSingleCompletedList: forceSingleCompletedList, chunk: chunk, perChunk: perChunk,
        statusIn: statusIn, statusNotIn: statusNotIn, statusNot: statusNot, notesLike: notesLike,
        startedAtGreater: startedAtGreater, startedAtLesser: startedAtLesser,
        startedAtLike: startedAtLike, completedAtGreater: completedAtGreater,
        completedAtLesser: completedAtLesser, completedAtLike: completedAtLike, sort: sort,
        selection: selection)
    }
  }
  /// Collection of all the possible media genres

  public static func genreCollection() -> Selection<[String?]?, Objects.Query> {
    Selection<[String?]?, Objects.Query> {
      try $0.genreCollection()
    }
  }
  /// Collection of all the possible media tags

  public static func mediaTagCollection<T>(
    status: OptionalArgument<Int> = .init(), selection: Selection<T, [Objects.MediaTag?]?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.mediaTagCollection(status: status, selection: selection)
    }
  }
  /// User query

  public static func user<T>(
    id: OptionalArgument<Int> = .init(), name: OptionalArgument<String> = .init(),
    isModerator: OptionalArgument<Bool> = .init(), search: OptionalArgument<String> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserSort>]> = .init(),
    selection: Selection<T, Objects.User?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.user(
        id: id, name: name, isModerator: isModerator, search: search, sort: sort,
        selection: selection)
    }
  }
  /// Get the currently authenticated user

  public static func viewer<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.Query
  > {
    Selection<T, Objects.Query> {
      try $0.viewer(selection: selection)
    }
  }
  /// Notification query

  public static func notification<T>(
    type: OptionalArgument<Enums.NotificationType> = .init(),
    resetNotificationCount: OptionalArgument<Bool> = .init(),
    typeIn: OptionalArgument<[OptionalArgument<Enums.NotificationType>]> = .init(),
    selection: Selection<T, Unions.NotificationUnion?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.notification(
        type: type, resetNotificationCount: resetNotificationCount, typeIn: typeIn,
        selection: selection)
    }
  }
  /// Studio query

  public static func studio<T>(
    id: OptionalArgument<Int> = .init(), search: OptionalArgument<String> = .init(),
    idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.StudioSort>]> = .init(),
    selection: Selection<T, Objects.Studio?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.studio(
        id: id, search: search, idNot: idNot, idIn: idIn, idNotIn: idNotIn, sort: sort,
        selection: selection)
    }
  }
  /// Review query

  public static func review<T>(
    id: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    userId: OptionalArgument<Int> = .init(), mediaType: OptionalArgument<Enums.MediaType> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ReviewSort>]> = .init(),
    selection: Selection<T, Objects.Review?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.review(
        id: id, mediaId: mediaId, userId: userId, mediaType: mediaType, sort: sort,
        selection: selection)
    }
  }
  /// Activity query

  public static func activity<T>(
    id: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    messengerId: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    type: OptionalArgument<Enums.ActivityType> = .init(),
    isFollowing: OptionalArgument<Bool> = .init(), hasReplies: OptionalArgument<Bool> = .init(),
    hasRepliesOrTypeText: OptionalArgument<Bool> = .init(),
    createdAt: OptionalArgument<Int> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    userIdNot: OptionalArgument<Int> = .init(),
    userIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    userIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    messengerIdNot: OptionalArgument<Int> = .init(),
    messengerIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    messengerIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNot: OptionalArgument<Int> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    typeNot: OptionalArgument<Enums.ActivityType> = .init(),
    typeIn: OptionalArgument<[OptionalArgument<Enums.ActivityType>]> = .init(),
    typeNotIn: OptionalArgument<[OptionalArgument<Enums.ActivityType>]> = .init(),
    createdAtGreater: OptionalArgument<Int> = .init(),
    createdAtLesser: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ActivitySort>]> = .init(),
    selection: Selection<T, Unions.ActivityUnion?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.activity(
        id: id, userId: userId, messengerId: messengerId, mediaId: mediaId, type: type,
        isFollowing: isFollowing, hasReplies: hasReplies,
        hasRepliesOrTypeText: hasRepliesOrTypeText, createdAt: createdAt, idNot: idNot, idIn: idIn,
        idNotIn: idNotIn, userIdNot: userIdNot, userIdIn: userIdIn, userIdNotIn: userIdNotIn,
        messengerIdNot: messengerIdNot, messengerIdIn: messengerIdIn,
        messengerIdNotIn: messengerIdNotIn, mediaIdNot: mediaIdNot, mediaIdIn: mediaIdIn,
        mediaIdNotIn: mediaIdNotIn, typeNot: typeNot, typeIn: typeIn, typeNotIn: typeNotIn,
        createdAtGreater: createdAtGreater, createdAtLesser: createdAtLesser, sort: sort,
        selection: selection)
    }
  }
  /// Activity reply query

  public static func activityReply<T>(
    id: OptionalArgument<Int> = .init(), activityId: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.ActivityReply?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.activityReply(id: id, activityId: activityId, selection: selection)
    }
  }
  /// Follow query

  public static func following<T>(
    userId: Int, sort: OptionalArgument<[OptionalArgument<Enums.UserSort>]> = .init(),
    selection: Selection<T, Objects.User?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.following(userId: userId, sort: sort, selection: selection)
    }
  }
  /// Follow query

  public static func follower<T>(
    userId: Int, sort: OptionalArgument<[OptionalArgument<Enums.UserSort>]> = .init(),
    selection: Selection<T, Objects.User?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.follower(userId: userId, sort: sort, selection: selection)
    }
  }
  /// Thread query

  public static func thread<T>(
    id: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    replyUserId: OptionalArgument<Int> = .init(), subscribed: OptionalArgument<Bool> = .init(),
    categoryId: OptionalArgument<Int> = .init(), mediaCategoryId: OptionalArgument<Int> = .init(),
    search: OptionalArgument<String> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ThreadSort>]> = .init(),
    selection: Selection<T, Objects.Thread?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.thread(
        id: id, userId: userId, replyUserId: replyUserId, subscribed: subscribed,
        categoryId: categoryId, mediaCategoryId: mediaCategoryId, search: search, idIn: idIn,
        sort: sort, selection: selection)
    }
  }
  /// Comment query

  public static func threadComment<T>(
    id: OptionalArgument<Int> = .init(), threadId: OptionalArgument<Int> = .init(),
    userId: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ThreadCommentSort>]> = .init(),
    selection: Selection<T, [Objects.ThreadComment?]?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.threadComment(
        id: id, threadId: threadId, userId: userId, sort: sort, selection: selection)
    }
  }
  /// Recommendation query

  public static func recommendation<T>(
    id: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    mediaRecommendationId: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    rating: OptionalArgument<Int> = .init(), onList: OptionalArgument<Bool> = .init(),
    ratingGreater: OptionalArgument<Int> = .init(), ratingLesser: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.RecommendationSort>]> = .init(),
    selection: Selection<T, Objects.Recommendation?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.recommendation(
        id: id, mediaId: mediaId, mediaRecommendationId: mediaRecommendationId, userId: userId,
        rating: rating, onList: onList, ratingGreater: ratingGreater, ratingLesser: ratingLesser,
        sort: sort, selection: selection)
    }
  }
  /// Like query

  public static func like<T>(
    likeableId: OptionalArgument<Int> = .init(),
    type: OptionalArgument<Enums.LikeableType> = .init(), selection: Selection<T, Objects.User?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.like(likeableId: likeableId, type: type, selection: selection)
    }
  }
  /// Provide AniList markdown to be converted to html (Requires auth)

  public static func markdown<T>(markdown: String, selection: Selection<T, Objects.ParsedMarkdown?>)
    -> Selection<T, Objects.Query>
  {
    Selection<T, Objects.Query> {
      try $0.markdown(markdown: markdown, selection: selection)
    }
  }

  public static func aniChartUser<T>(selection: Selection<T, Objects.AniChartUser?>) -> Selection<
    T, Objects.Query
  > {
    Selection<T, Objects.Query> {
      try $0.aniChartUser(selection: selection)
    }
  }
  /// Site statistics query

  public static func siteStatistics<T>(selection: Selection<T, Objects.SiteStatistics?>)
    -> Selection<T, Objects.Query>
  {
    Selection<T, Objects.Query> {
      try $0.siteStatistics(selection: selection)
    }
  }
  /// ExternalLinkSource collection query

  public static func externalLinkSourceCollection<T>(
    id: OptionalArgument<Int> = .init(), type: OptionalArgument<Enums.ExternalLinkType> = .init(),
    mediaType: OptionalArgument<Enums.ExternalLinkMediaType> = .init(),
    selection: Selection<T, [Objects.MediaExternalLink?]?>
  ) -> Selection<T, Objects.Query> {
    Selection<T, Objects.Query> {
      try $0.externalLinkSourceCollection(
        id: id, type: type, mediaType: mediaType, selection: selection)
    }
  }
}
extension Objects.Page {
  /// The pagination information

  public static func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) -> Selection<
    T, Objects.Page
  > {
    Selection<T, Objects.Page> {
      try $0.pageInfo(selection: selection)
    }
  }

  public static func users<T>(
    id: OptionalArgument<Int> = .init(), name: OptionalArgument<String> = .init(),
    isModerator: OptionalArgument<Bool> = .init(), search: OptionalArgument<String> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserSort>]> = .init(),
    selection: Selection<T, [Objects.User?]?>
  ) -> Selection<T, Objects.Page> {
    Selection<T, Objects.Page> {
      try $0.users(
        id: id, name: name, isModerator: isModerator, search: search, sort: sort,
        selection: selection)
    }
  }

  public static func media<T>(
    id: OptionalArgument<Int> = .init(), idMal: OptionalArgument<Int> = .init(),
    startDate: OptionalArgument<AnyCodable> = .init(),
    endDate: OptionalArgument<AnyCodable> = .init(),
    season: OptionalArgument<Enums.MediaSeason> = .init(),
    seasonYear: OptionalArgument<Int> = .init(), type: OptionalArgument<Enums.MediaType> = .init(),
    format: OptionalArgument<Enums.MediaFormat> = .init(),
    status: OptionalArgument<Enums.MediaStatus> = .init(),
    episodes: OptionalArgument<Int> = .init(), duration: OptionalArgument<Int> = .init(),
    chapters: OptionalArgument<Int> = .init(), volumes: OptionalArgument<Int> = .init(),
    isAdult: OptionalArgument<Bool> = .init(), genre: OptionalArgument<String> = .init(),
    tag: OptionalArgument<String> = .init(), minimumTagRank: OptionalArgument<Int> = .init(),
    tagCategory: OptionalArgument<String> = .init(), onList: OptionalArgument<Bool> = .init(),
    licensedBy: OptionalArgument<String> = .init(), licensedById: OptionalArgument<Int> = .init(),
    averageScore: OptionalArgument<Int> = .init(), popularity: OptionalArgument<Int> = .init(),
    source: OptionalArgument<Enums.MediaSource> = .init(),
    countryOfOrigin: OptionalArgument<AnyCodable> = .init(),
    isLicensed: OptionalArgument<Bool> = .init(), search: OptionalArgument<String> = .init(),
    idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idMalNot: OptionalArgument<Int> = .init(),
    idMalIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idMalNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    startDateGreater: OptionalArgument<AnyCodable> = .init(),
    startDateLesser: OptionalArgument<AnyCodable> = .init(),
    startDateLike: OptionalArgument<String> = .init(),
    endDateGreater: OptionalArgument<AnyCodable> = .init(),
    endDateLesser: OptionalArgument<AnyCodable> = .init(),
    endDateLike: OptionalArgument<String> = .init(),
    formatIn: OptionalArgument<[OptionalArgument<Enums.MediaFormat>]> = .init(),
    formatNot: OptionalArgument<Enums.MediaFormat> = .init(),
    formatNotIn: OptionalArgument<[OptionalArgument<Enums.MediaFormat>]> = .init(),
    statusIn: OptionalArgument<[OptionalArgument<Enums.MediaStatus>]> = .init(),
    statusNot: OptionalArgument<Enums.MediaStatus> = .init(),
    statusNotIn: OptionalArgument<[OptionalArgument<Enums.MediaStatus>]> = .init(),
    episodesGreater: OptionalArgument<Int> = .init(),
    episodesLesser: OptionalArgument<Int> = .init(),
    durationGreater: OptionalArgument<Int> = .init(),
    durationLesser: OptionalArgument<Int> = .init(),
    chaptersGreater: OptionalArgument<Int> = .init(),
    chaptersLesser: OptionalArgument<Int> = .init(),
    volumesGreater: OptionalArgument<Int> = .init(), volumesLesser: OptionalArgument<Int> = .init(),
    genreIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    genreNotIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagNotIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagCategoryIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagCategoryNotIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    licensedByIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    licensedByIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    averageScoreNot: OptionalArgument<Int> = .init(),
    averageScoreGreater: OptionalArgument<Int> = .init(),
    averageScoreLesser: OptionalArgument<Int> = .init(),
    popularityNot: OptionalArgument<Int> = .init(),
    popularityGreater: OptionalArgument<Int> = .init(),
    popularityLesser: OptionalArgument<Int> = .init(),
    sourceIn: OptionalArgument<[OptionalArgument<Enums.MediaSource>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.MediaSort>]> = .init(),
    selection: Selection<T, [Objects.Media?]?>
  ) -> Selection<T, Objects.Page> {
    Selection<T, Objects.Page> {
      try $0.media(
        id: id, idMal: idMal, startDate: startDate, endDate: endDate, season: season,
        seasonYear: seasonYear, type: type, format: format, status: status, episodes: episodes,
        duration: duration, chapters: chapters, volumes: volumes, isAdult: isAdult, genre: genre,
        tag: tag, minimumTagRank: minimumTagRank, tagCategory: tagCategory, onList: onList,
        licensedBy: licensedBy, licensedById: licensedById, averageScore: averageScore,
        popularity: popularity, source: source, countryOfOrigin: countryOfOrigin,
        isLicensed: isLicensed, search: search, idNot: idNot, idIn: idIn, idNotIn: idNotIn,
        idMalNot: idMalNot, idMalIn: idMalIn, idMalNotIn: idMalNotIn,
        startDateGreater: startDateGreater, startDateLesser: startDateLesser,
        startDateLike: startDateLike, endDateGreater: endDateGreater, endDateLesser: endDateLesser,
        endDateLike: endDateLike, formatIn: formatIn, formatNot: formatNot,
        formatNotIn: formatNotIn, statusIn: statusIn, statusNot: statusNot,
        statusNotIn: statusNotIn, episodesGreater: episodesGreater, episodesLesser: episodesLesser,
        durationGreater: durationGreater, durationLesser: durationLesser,
        chaptersGreater: chaptersGreater, chaptersLesser: chaptersLesser,
        volumesGreater: volumesGreater, volumesLesser: volumesLesser, genreIn: genreIn,
        genreNotIn: genreNotIn, tagIn: tagIn, tagNotIn: tagNotIn, tagCategoryIn: tagCategoryIn,
        tagCategoryNotIn: tagCategoryNotIn, licensedByIn: licensedByIn,
        licensedByIdIn: licensedByIdIn, averageScoreNot: averageScoreNot,
        averageScoreGreater: averageScoreGreater, averageScoreLesser: averageScoreLesser,
        popularityNot: popularityNot, popularityGreater: popularityGreater,
        popularityLesser: popularityLesser, sourceIn: sourceIn, sort: sort, selection: selection)
    }
  }

  public static func characters<T>(
    id: OptionalArgument<Int> = .init(), isBirthday: OptionalArgument<Bool> = .init(),
    search: OptionalArgument<String> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.CharacterSort>]> = .init(),
    selection: Selection<T, [Objects.Character?]?>
  ) -> Selection<T, Objects.Page> {
    Selection<T, Objects.Page> {
      try $0.characters(
        id: id, isBirthday: isBirthday, search: search, idNot: idNot, idIn: idIn, idNotIn: idNotIn,
        sort: sort, selection: selection)
    }
  }

  public static func staff<T>(
    id: OptionalArgument<Int> = .init(), isBirthday: OptionalArgument<Bool> = .init(),
    search: OptionalArgument<String> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.StaffSort>]> = .init(),
    selection: Selection<T, [Objects.Staff?]?>
  ) -> Selection<T, Objects.Page> {
    Selection<T, Objects.Page> {
      try $0.staff(
        id: id, isBirthday: isBirthday, search: search, idNot: idNot, idIn: idIn, idNotIn: idNotIn,
        sort: sort, selection: selection)
    }
  }

  public static func studios<T>(
    id: OptionalArgument<Int> = .init(), search: OptionalArgument<String> = .init(),
    idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.StudioSort>]> = .init(),
    selection: Selection<T, [Objects.Studio?]?>
  ) -> Selection<T, Objects.Page> {
    Selection<T, Objects.Page> {
      try $0.studios(
        id: id, search: search, idNot: idNot, idIn: idIn, idNotIn: idNotIn, sort: sort,
        selection: selection)
    }
  }

  public static func mediaList<T>(
    id: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    userName: OptionalArgument<String> = .init(), type: OptionalArgument<Enums.MediaType> = .init(),
    status: OptionalArgument<Enums.MediaListStatus> = .init(),
    mediaId: OptionalArgument<Int> = .init(), isFollowing: OptionalArgument<Bool> = .init(),
    notes: OptionalArgument<String> = .init(), startedAt: OptionalArgument<AnyCodable> = .init(),
    completedAt: OptionalArgument<AnyCodable> = .init(),
    compareWithAuthList: OptionalArgument<Bool> = .init(),
    userIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    statusIn: OptionalArgument<[OptionalArgument<Enums.MediaListStatus>]> = .init(),
    statusNotIn: OptionalArgument<[OptionalArgument<Enums.MediaListStatus>]> = .init(),
    statusNot: OptionalArgument<Enums.MediaListStatus> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    notesLike: OptionalArgument<String> = .init(),
    startedAtGreater: OptionalArgument<AnyCodable> = .init(),
    startedAtLesser: OptionalArgument<AnyCodable> = .init(),
    startedAtLike: OptionalArgument<String> = .init(),
    completedAtGreater: OptionalArgument<AnyCodable> = .init(),
    completedAtLesser: OptionalArgument<AnyCodable> = .init(),
    completedAtLike: OptionalArgument<String> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.MediaListSort>]> = .init(),
    selection: Selection<T, [Objects.MediaList?]?>
  ) -> Selection<T, Objects.Page> {
    Selection<T, Objects.Page> {
      try $0.mediaList(
        id: id, userId: userId, userName: userName, type: type, status: status, mediaId: mediaId,
        isFollowing: isFollowing, notes: notes, startedAt: startedAt, completedAt: completedAt,
        compareWithAuthList: compareWithAuthList, userIdIn: userIdIn, statusIn: statusIn,
        statusNotIn: statusNotIn, statusNot: statusNot, mediaIdIn: mediaIdIn,
        mediaIdNotIn: mediaIdNotIn, notesLike: notesLike, startedAtGreater: startedAtGreater,
        startedAtLesser: startedAtLesser, startedAtLike: startedAtLike,
        completedAtGreater: completedAtGreater, completedAtLesser: completedAtLesser,
        completedAtLike: completedAtLike, sort: sort, selection: selection)
    }
  }

  public static func airingSchedules<T>(
    id: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    episode: OptionalArgument<Int> = .init(), airingAt: OptionalArgument<Int> = .init(),
    notYetAired: OptionalArgument<Bool> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNot: OptionalArgument<Int> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    episodeNot: OptionalArgument<Int> = .init(),
    episodeIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    episodeNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    episodeGreater: OptionalArgument<Int> = .init(), episodeLesser: OptionalArgument<Int> = .init(),
    airingAtGreater: OptionalArgument<Int> = .init(),
    airingAtLesser: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.AiringSort>]> = .init(),
    selection: Selection<T, [Objects.AiringSchedule?]?>
  ) -> Selection<T, Objects.Page> {
    Selection<T, Objects.Page> {
      try $0.airingSchedules(
        id: id, mediaId: mediaId, episode: episode, airingAt: airingAt, notYetAired: notYetAired,
        idNot: idNot, idIn: idIn, idNotIn: idNotIn, mediaIdNot: mediaIdNot, mediaIdIn: mediaIdIn,
        mediaIdNotIn: mediaIdNotIn, episodeNot: episodeNot, episodeIn: episodeIn,
        episodeNotIn: episodeNotIn, episodeGreater: episodeGreater, episodeLesser: episodeLesser,
        airingAtGreater: airingAtGreater, airingAtLesser: airingAtLesser, sort: sort,
        selection: selection)
    }
  }

  public static func mediaTrends<T>(
    mediaId: OptionalArgument<Int> = .init(), date: OptionalArgument<Int> = .init(),
    trending: OptionalArgument<Int> = .init(), averageScore: OptionalArgument<Int> = .init(),
    popularity: OptionalArgument<Int> = .init(), episode: OptionalArgument<Int> = .init(),
    releasing: OptionalArgument<Bool> = .init(), mediaIdNot: OptionalArgument<Int> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    dateGreater: OptionalArgument<Int> = .init(), dateLesser: OptionalArgument<Int> = .init(),
    trendingGreater: OptionalArgument<Int> = .init(),
    trendingLesser: OptionalArgument<Int> = .init(), trendingNot: OptionalArgument<Int> = .init(),
    averageScoreGreater: OptionalArgument<Int> = .init(),
    averageScoreLesser: OptionalArgument<Int> = .init(),
    averageScoreNot: OptionalArgument<Int> = .init(),
    popularityGreater: OptionalArgument<Int> = .init(),
    popularityLesser: OptionalArgument<Int> = .init(),
    popularityNot: OptionalArgument<Int> = .init(), episodeGreater: OptionalArgument<Int> = .init(),
    episodeLesser: OptionalArgument<Int> = .init(), episodeNot: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.MediaTrendSort>]> = .init(),
    selection: Selection<T, [Objects.MediaTrend?]?>
  ) -> Selection<T, Objects.Page> {
    Selection<T, Objects.Page> {
      try $0.mediaTrends(
        mediaId: mediaId, date: date, trending: trending, averageScore: averageScore,
        popularity: popularity, episode: episode, releasing: releasing, mediaIdNot: mediaIdNot,
        mediaIdIn: mediaIdIn, mediaIdNotIn: mediaIdNotIn, dateGreater: dateGreater,
        dateLesser: dateLesser, trendingGreater: trendingGreater, trendingLesser: trendingLesser,
        trendingNot: trendingNot, averageScoreGreater: averageScoreGreater,
        averageScoreLesser: averageScoreLesser, averageScoreNot: averageScoreNot,
        popularityGreater: popularityGreater, popularityLesser: popularityLesser,
        popularityNot: popularityNot, episodeGreater: episodeGreater, episodeLesser: episodeLesser,
        episodeNot: episodeNot, sort: sort, selection: selection)
    }
  }

  public static func notifications<T>(
    type: OptionalArgument<Enums.NotificationType> = .init(),
    resetNotificationCount: OptionalArgument<Bool> = .init(),
    typeIn: OptionalArgument<[OptionalArgument<Enums.NotificationType>]> = .init(),
    selection: Selection<T, [Unions.NotificationUnion?]?>
  ) -> Selection<T, Objects.Page> {
    Selection<T, Objects.Page> {
      try $0.notifications(
        type: type, resetNotificationCount: resetNotificationCount, typeIn: typeIn,
        selection: selection)
    }
  }

  public static func followers<T>(
    userId: Int, sort: OptionalArgument<[OptionalArgument<Enums.UserSort>]> = .init(),
    selection: Selection<T, [Objects.User?]?>
  ) -> Selection<T, Objects.Page> {
    Selection<T, Objects.Page> {
      try $0.followers(userId: userId, sort: sort, selection: selection)
    }
  }

  public static func following<T>(
    userId: Int, sort: OptionalArgument<[OptionalArgument<Enums.UserSort>]> = .init(),
    selection: Selection<T, [Objects.User?]?>
  ) -> Selection<T, Objects.Page> {
    Selection<T, Objects.Page> {
      try $0.following(userId: userId, sort: sort, selection: selection)
    }
  }

  public static func activities<T>(
    id: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    messengerId: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    type: OptionalArgument<Enums.ActivityType> = .init(),
    isFollowing: OptionalArgument<Bool> = .init(), hasReplies: OptionalArgument<Bool> = .init(),
    hasRepliesOrTypeText: OptionalArgument<Bool> = .init(),
    createdAt: OptionalArgument<Int> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    userIdNot: OptionalArgument<Int> = .init(),
    userIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    userIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    messengerIdNot: OptionalArgument<Int> = .init(),
    messengerIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    messengerIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNot: OptionalArgument<Int> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    typeNot: OptionalArgument<Enums.ActivityType> = .init(),
    typeIn: OptionalArgument<[OptionalArgument<Enums.ActivityType>]> = .init(),
    typeNotIn: OptionalArgument<[OptionalArgument<Enums.ActivityType>]> = .init(),
    createdAtGreater: OptionalArgument<Int> = .init(),
    createdAtLesser: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ActivitySort>]> = .init(),
    selection: Selection<T, [Unions.ActivityUnion?]?>
  ) -> Selection<T, Objects.Page> {
    Selection<T, Objects.Page> {
      try $0.activities(
        id: id, userId: userId, messengerId: messengerId, mediaId: mediaId, type: type,
        isFollowing: isFollowing, hasReplies: hasReplies,
        hasRepliesOrTypeText: hasRepliesOrTypeText, createdAt: createdAt, idNot: idNot, idIn: idIn,
        idNotIn: idNotIn, userIdNot: userIdNot, userIdIn: userIdIn, userIdNotIn: userIdNotIn,
        messengerIdNot: messengerIdNot, messengerIdIn: messengerIdIn,
        messengerIdNotIn: messengerIdNotIn, mediaIdNot: mediaIdNot, mediaIdIn: mediaIdIn,
        mediaIdNotIn: mediaIdNotIn, typeNot: typeNot, typeIn: typeIn, typeNotIn: typeNotIn,
        createdAtGreater: createdAtGreater, createdAtLesser: createdAtLesser, sort: sort,
        selection: selection)
    }
  }

  public static func activityReplies<T>(
    id: OptionalArgument<Int> = .init(), activityId: OptionalArgument<Int> = .init(),
    selection: Selection<T, [Objects.ActivityReply?]?>
  ) -> Selection<T, Objects.Page> {
    Selection<T, Objects.Page> {
      try $0.activityReplies(id: id, activityId: activityId, selection: selection)
    }
  }

  public static func threads<T>(
    id: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    replyUserId: OptionalArgument<Int> = .init(), subscribed: OptionalArgument<Bool> = .init(),
    categoryId: OptionalArgument<Int> = .init(), mediaCategoryId: OptionalArgument<Int> = .init(),
    search: OptionalArgument<String> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ThreadSort>]> = .init(),
    selection: Selection<T, [Objects.Thread?]?>
  ) -> Selection<T, Objects.Page> {
    Selection<T, Objects.Page> {
      try $0.threads(
        id: id, userId: userId, replyUserId: replyUserId, subscribed: subscribed,
        categoryId: categoryId, mediaCategoryId: mediaCategoryId, search: search, idIn: idIn,
        sort: sort, selection: selection)
    }
  }

  public static func threadComments<T>(
    id: OptionalArgument<Int> = .init(), threadId: OptionalArgument<Int> = .init(),
    userId: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ThreadCommentSort>]> = .init(),
    selection: Selection<T, [Objects.ThreadComment?]?>
  ) -> Selection<T, Objects.Page> {
    Selection<T, Objects.Page> {
      try $0.threadComments(
        id: id, threadId: threadId, userId: userId, sort: sort, selection: selection)
    }
  }

  public static func reviews<T>(
    id: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    userId: OptionalArgument<Int> = .init(), mediaType: OptionalArgument<Enums.MediaType> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ReviewSort>]> = .init(),
    selection: Selection<T, [Objects.Review?]?>
  ) -> Selection<T, Objects.Page> {
    Selection<T, Objects.Page> {
      try $0.reviews(
        id: id, mediaId: mediaId, userId: userId, mediaType: mediaType, sort: sort,
        selection: selection)
    }
  }

  public static func recommendations<T>(
    id: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    mediaRecommendationId: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    rating: OptionalArgument<Int> = .init(), onList: OptionalArgument<Bool> = .init(),
    ratingGreater: OptionalArgument<Int> = .init(), ratingLesser: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.RecommendationSort>]> = .init(),
    selection: Selection<T, [Objects.Recommendation?]?>
  ) -> Selection<T, Objects.Page> {
    Selection<T, Objects.Page> {
      try $0.recommendations(
        id: id, mediaId: mediaId, mediaRecommendationId: mediaRecommendationId, userId: userId,
        rating: rating, onList: onList, ratingGreater: ratingGreater, ratingLesser: ratingLesser,
        sort: sort, selection: selection)
    }
  }

  public static func likes<T>(
    likeableId: OptionalArgument<Int> = .init(),
    type: OptionalArgument<Enums.LikeableType> = .init(), selection: Selection<T, [Objects.User?]?>
  ) -> Selection<T, Objects.Page> {
    Selection<T, Objects.Page> {
      try $0.likes(likeableId: likeableId, type: type, selection: selection)
    }
  }
}
extension Objects.PageInfo {
  /// The total number of items. Note: This value is not guaranteed to be accurate, do not rely on this for logic

  public static func total() -> Selection<Int?, Objects.PageInfo> {
    Selection<Int?, Objects.PageInfo> {
      try $0.total()
    }
  }
  /// The count on a page

  public static func perPage() -> Selection<Int?, Objects.PageInfo> {
    Selection<Int?, Objects.PageInfo> {
      try $0.perPage()
    }
  }
  /// The current page

  public static func currentPage() -> Selection<Int?, Objects.PageInfo> {
    Selection<Int?, Objects.PageInfo> {
      try $0.currentPage()
    }
  }
  /// The last page

  public static func lastPage() -> Selection<Int?, Objects.PageInfo> {
    Selection<Int?, Objects.PageInfo> {
      try $0.lastPage()
    }
  }
  /// If there is another page

  public static func hasNextPage() -> Selection<Bool?, Objects.PageInfo> {
    Selection<Bool?, Objects.PageInfo> {
      try $0.hasNextPage()
    }
  }
}
extension Objects.User {
  /// The id of the user

  public static func id() -> Selection<Int, Objects.User> {
    Selection<Int, Objects.User> {
      try $0.id()
    }
  }
  /// The name of the user

  public static func name() -> Selection<String, Objects.User> {
    Selection<String, Objects.User> {
      try $0.name()
    }
  }
  /// The bio written by user (Markdown)

  public static func about(asHtml: OptionalArgument<Bool> = .init()) -> Selection<
    String?, Objects.User
  > {
    Selection<String?, Objects.User> {
      try $0.about(asHtml: asHtml)
    }
  }
  /// The user's avatar images

  public static func avatar<T>(selection: Selection<T, Objects.UserAvatar?>) -> Selection<
    T, Objects.User
  > {
    Selection<T, Objects.User> {
      try $0.avatar(selection: selection)
    }
  }
  /// The user's banner images

  public static func bannerImage() -> Selection<String?, Objects.User> {
    Selection<String?, Objects.User> {
      try $0.bannerImage()
    }
  }
  /// If the authenticated user if following this user

  public static func isFollowing() -> Selection<Bool?, Objects.User> {
    Selection<Bool?, Objects.User> {
      try $0.isFollowing()
    }
  }
  /// If this user if following the authenticated user

  public static func isFollower() -> Selection<Bool?, Objects.User> {
    Selection<Bool?, Objects.User> {
      try $0.isFollower()
    }
  }
  /// If the user is blocked by the authenticated user

  public static func isBlocked() -> Selection<Bool?, Objects.User> {
    Selection<Bool?, Objects.User> {
      try $0.isBlocked()
    }
  }

  public static func bans() -> Selection<AnyCodable?, Objects.User> {
    Selection<AnyCodable?, Objects.User> {
      try $0.bans()
    }
  }
  /// The user's general options

  public static func options<T>(selection: Selection<T, Objects.UserOptions?>) -> Selection<
    T, Objects.User
  > {
    Selection<T, Objects.User> {
      try $0.options(selection: selection)
    }
  }
  /// The user's media list options

  public static func mediaListOptions<T>(selection: Selection<T, Objects.MediaListOptions?>)
    -> Selection<T, Objects.User>
  {
    Selection<T, Objects.User> {
      try $0.mediaListOptions(selection: selection)
    }
  }
  /// The users favourites

  public static func favourites<T>(
    page: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.Favourites?>
  ) -> Selection<T, Objects.User> {
    Selection<T, Objects.User> {
      try $0.favourites(page: page, selection: selection)
    }
  }
  /// The users anime & manga list statistics

  public static func statistics<T>(selection: Selection<T, Objects.UserStatisticTypes?>)
    -> Selection<T, Objects.User>
  {
    Selection<T, Objects.User> {
      try $0.statistics(selection: selection)
    }
  }
  /// The number of unread notifications the user has

  public static func unreadNotificationCount() -> Selection<Int?, Objects.User> {
    Selection<Int?, Objects.User> {
      try $0.unreadNotificationCount()
    }
  }
  /// The url for the user page on the AniList website

  public static func siteUrl() -> Selection<String?, Objects.User> {
    Selection<String?, Objects.User> {
      try $0.siteUrl()
    }
  }
  /// The donation tier of the user

  public static func donatorTier() -> Selection<Int?, Objects.User> {
    Selection<Int?, Objects.User> {
      try $0.donatorTier()
    }
  }
  /// Custom donation badge text

  public static func donatorBadge() -> Selection<String?, Objects.User> {
    Selection<String?, Objects.User> {
      try $0.donatorBadge()
    }
  }
  /// The user's moderator roles if they are a site moderator

  public static func moderatorRoles() -> Selection<[Enums.ModRole?]?, Objects.User> {
    Selection<[Enums.ModRole?]?, Objects.User> {
      try $0.moderatorRoles()
    }
  }
  /// When the user's account was created. (Does not exist for accounts created before 2020)

  public static func createdAt() -> Selection<Int?, Objects.User> {
    Selection<Int?, Objects.User> {
      try $0.createdAt()
    }
  }
  /// When the user's data was last updated

  public static func updatedAt() -> Selection<Int?, Objects.User> {
    Selection<Int?, Objects.User> {
      try $0.updatedAt()
    }
  }
  /// The user's statistics
  @available(*, deprecated, message: "Deprecated. Replaced with statistics field.")
  public static func stats<T>(selection: Selection<T, Objects.UserStats?>) -> Selection<
    T, Objects.User
  > {
    Selection<T, Objects.User> {
      try $0.stats(selection: selection)
    }
  }
  /// If the user is a moderator or data moderator
  @available(*, deprecated, message: "Deprecated. Replaced with moderatorRoles field.")
  public static func moderatorStatus() -> Selection<String?, Objects.User> {
    Selection<String?, Objects.User> {
      try $0.moderatorStatus()
    }
  }
  /// The user's previously used names.

  public static func previousNames<T>(selection: Selection<T, [Objects.UserPreviousName?]?>)
    -> Selection<T, Objects.User>
  {
    Selection<T, Objects.User> {
      try $0.previousNames(selection: selection)
    }
  }
}
extension Objects.UserAvatar {
  /// The avatar of user at its largest size

  public static func large() -> Selection<String?, Objects.UserAvatar> {
    Selection<String?, Objects.UserAvatar> {
      try $0.large()
    }
  }
  /// The avatar of user at medium size

  public static func medium() -> Selection<String?, Objects.UserAvatar> {
    Selection<String?, Objects.UserAvatar> {
      try $0.medium()
    }
  }
}
extension Objects.UserOptions {
  /// The language the user wants to see media titles in

  public static func titleLanguage() -> Selection<Enums.UserTitleLanguage?, Objects.UserOptions> {
    Selection<Enums.UserTitleLanguage?, Objects.UserOptions> {
      try $0.titleLanguage()
    }
  }
  /// Whether the user has enabled viewing of 18+ content

  public static func displayAdultContent() -> Selection<Bool?, Objects.UserOptions> {
    Selection<Bool?, Objects.UserOptions> {
      try $0.displayAdultContent()
    }
  }
  /// Whether the user receives notifications when a show they are watching aires

  public static func airingNotifications() -> Selection<Bool?, Objects.UserOptions> {
    Selection<Bool?, Objects.UserOptions> {
      try $0.airingNotifications()
    }
  }
  /// Profile highlight color (blue, purple, pink, orange, red, green, gray)

  public static func profileColor() -> Selection<String?, Objects.UserOptions> {
    Selection<String?, Objects.UserOptions> {
      try $0.profileColor()
    }
  }
  /// Notification options

  public static func notificationOptions<T>(selection: Selection<T, [Objects.NotificationOption?]?>)
    -> Selection<T, Objects.UserOptions>
  {
    Selection<T, Objects.UserOptions> {
      try $0.notificationOptions(selection: selection)
    }
  }
  /// The user's timezone offset (Auth user only)

  public static func timezone() -> Selection<String?, Objects.UserOptions> {
    Selection<String?, Objects.UserOptions> {
      try $0.timezone()
    }
  }
  /// Minutes between activity for them to be merged together. 0 is Never, Above 2 weeks (20160 mins) is Always.

  public static func activityMergeTime() -> Selection<Int?, Objects.UserOptions> {
    Selection<Int?, Objects.UserOptions> {
      try $0.activityMergeTime()
    }
  }
  /// The language the user wants to see staff and character names in

  public static func staffNameLanguage() -> Selection<
    Enums.UserStaffNameLanguage?, Objects.UserOptions
  > {
    Selection<Enums.UserStaffNameLanguage?, Objects.UserOptions> {
      try $0.staffNameLanguage()
    }
  }
  /// Whether the user only allow messages from users they follow

  public static func restrictMessagesToFollowing() -> Selection<Bool?, Objects.UserOptions> {
    Selection<Bool?, Objects.UserOptions> {
      try $0.restrictMessagesToFollowing()
    }
  }
  /// The list activity types the user has disabled from being created from list updates

  public static func disabledListActivity<T>(
    selection: Selection<T, [Objects.ListActivityOption?]?>
  ) -> Selection<T, Objects.UserOptions> {
    Selection<T, Objects.UserOptions> {
      try $0.disabledListActivity(selection: selection)
    }
  }
}
extension Objects.NotificationOption {
  /// The type of notification

  public static func type() -> Selection<Enums.NotificationType?, Objects.NotificationOption> {
    Selection<Enums.NotificationType?, Objects.NotificationOption> {
      try $0.type()
    }
  }
  /// Whether this type of notification is enabled

  public static func enabled() -> Selection<Bool?, Objects.NotificationOption> {
    Selection<Bool?, Objects.NotificationOption> {
      try $0.enabled()
    }
  }
}
extension Objects.ListActivityOption {

  public static func disabled() -> Selection<Bool?, Objects.ListActivityOption> {
    Selection<Bool?, Objects.ListActivityOption> {
      try $0.disabled()
    }
  }

  public static func type() -> Selection<Enums.MediaListStatus?, Objects.ListActivityOption> {
    Selection<Enums.MediaListStatus?, Objects.ListActivityOption> {
      try $0.type()
    }
  }
}
extension Objects.MediaListOptions {
  /// The score format the user is using for media lists

  public static func scoreFormat() -> Selection<Enums.ScoreFormat?, Objects.MediaListOptions> {
    Selection<Enums.ScoreFormat?, Objects.MediaListOptions> {
      try $0.scoreFormat()
    }
  }
  /// The default order list rows should be displayed in

  public static func rowOrder() -> Selection<String?, Objects.MediaListOptions> {
    Selection<String?, Objects.MediaListOptions> {
      try $0.rowOrder()
    }
  }

  @available(*, deprecated, message: "No longer used")
  public static func useLegacyLists() -> Selection<Bool?, Objects.MediaListOptions> {
    Selection<Bool?, Objects.MediaListOptions> {
      try $0.useLegacyLists()
    }
  }
  /// The user's anime list options

  public static func animeList<T>(selection: Selection<T, Objects.MediaListTypeOptions?>)
    -> Selection<T, Objects.MediaListOptions>
  {
    Selection<T, Objects.MediaListOptions> {
      try $0.animeList(selection: selection)
    }
  }
  /// The user's manga list options

  public static func mangaList<T>(selection: Selection<T, Objects.MediaListTypeOptions?>)
    -> Selection<T, Objects.MediaListOptions>
  {
    Selection<T, Objects.MediaListOptions> {
      try $0.mangaList(selection: selection)
    }
  }
  /// The list theme options for both lists
  @available(*, deprecated, message: "No longer used")
  public static func sharedTheme() -> Selection<AnyCodable?, Objects.MediaListOptions> {
    Selection<AnyCodable?, Objects.MediaListOptions> {
      try $0.sharedTheme()
    }
  }
  /// If the shared theme should be used instead of the individual list themes
  @available(*, deprecated, message: "No longer used")
  public static func sharedThemeEnabled() -> Selection<Bool?, Objects.MediaListOptions> {
    Selection<Bool?, Objects.MediaListOptions> {
      try $0.sharedThemeEnabled()
    }
  }
}
extension Objects.MediaListTypeOptions {
  /// The order each list should be displayed in

  public static func sectionOrder() -> Selection<[String?]?, Objects.MediaListTypeOptions> {
    Selection<[String?]?, Objects.MediaListTypeOptions> {
      try $0.sectionOrder()
    }
  }
  /// If the completed sections of the list should be separated by format

  public static func splitCompletedSectionByFormat() -> Selection<
    Bool?, Objects.MediaListTypeOptions
  > {
    Selection<Bool?, Objects.MediaListTypeOptions> {
      try $0.splitCompletedSectionByFormat()
    }
  }
  /// The list theme options
  @available(
    *, deprecated,
    message: "This field has not yet been fully implemented and may change without warning"
  )
  public static func theme() -> Selection<AnyCodable?, Objects.MediaListTypeOptions> {
    Selection<AnyCodable?, Objects.MediaListTypeOptions> {
      try $0.theme()
    }
  }
  /// The names of the user's custom lists

  public static func customLists() -> Selection<[String?]?, Objects.MediaListTypeOptions> {
    Selection<[String?]?, Objects.MediaListTypeOptions> {
      try $0.customLists()
    }
  }
  /// The names of the user's advanced scoring sections

  public static func advancedScoring() -> Selection<[String?]?, Objects.MediaListTypeOptions> {
    Selection<[String?]?, Objects.MediaListTypeOptions> {
      try $0.advancedScoring()
    }
  }
  /// If advanced scoring is enabled

  public static func advancedScoringEnabled() -> Selection<Bool?, Objects.MediaListTypeOptions> {
    Selection<Bool?, Objects.MediaListTypeOptions> {
      try $0.advancedScoringEnabled()
    }
  }
}
extension Objects.Favourites {
  /// Favourite anime

  public static func anime<T>(
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.MediaConnection?>
  ) -> Selection<T, Objects.Favourites> {
    Selection<T, Objects.Favourites> {
      try $0.anime(page: page, perPage: perPage, selection: selection)
    }
  }
  /// Favourite manga

  public static func manga<T>(
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.MediaConnection?>
  ) -> Selection<T, Objects.Favourites> {
    Selection<T, Objects.Favourites> {
      try $0.manga(page: page, perPage: perPage, selection: selection)
    }
  }
  /// Favourite characters

  public static func characters<T>(
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.CharacterConnection?>
  ) -> Selection<T, Objects.Favourites> {
    Selection<T, Objects.Favourites> {
      try $0.characters(page: page, perPage: perPage, selection: selection)
    }
  }
  /// Favourite staff

  public static func staff<T>(
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.StaffConnection?>
  ) -> Selection<T, Objects.Favourites> {
    Selection<T, Objects.Favourites> {
      try $0.staff(page: page, perPage: perPage, selection: selection)
    }
  }
  /// Favourite studios

  public static func studios<T>(
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.StudioConnection?>
  ) -> Selection<T, Objects.Favourites> {
    Selection<T, Objects.Favourites> {
      try $0.studios(page: page, perPage: perPage, selection: selection)
    }
  }
}
extension Objects.MediaConnection {

  public static func edges<T>(selection: Selection<T, [Objects.MediaEdge?]?>) -> Selection<
    T, Objects.MediaConnection
  > {
    Selection<T, Objects.MediaConnection> {
      try $0.edges(selection: selection)
    }
  }

  public static func nodes<T>(selection: Selection<T, [Objects.Media?]?>) -> Selection<
    T, Objects.MediaConnection
  > {
    Selection<T, Objects.MediaConnection> {
      try $0.nodes(selection: selection)
    }
  }
  /// The pagination information

  public static func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) -> Selection<
    T, Objects.MediaConnection
  > {
    Selection<T, Objects.MediaConnection> {
      try $0.pageInfo(selection: selection)
    }
  }
}
extension Objects.MediaEdge {

  public static func node<T>(selection: Selection<T, Objects.Media?>) -> Selection<
    T, Objects.MediaEdge
  > {
    Selection<T, Objects.MediaEdge> {
      try $0.node(selection: selection)
    }
  }
  /// The id of the connection

  public static func id() -> Selection<Int?, Objects.MediaEdge> {
    Selection<Int?, Objects.MediaEdge> {
      try $0.id()
    }
  }
  /// The type of relation to the parent model

  public static func relationType(version: OptionalArgument<Int> = .init()) -> Selection<
    Enums.MediaRelation?, Objects.MediaEdge
  > {
    Selection<Enums.MediaRelation?, Objects.MediaEdge> {
      try $0.relationType(version: version)
    }
  }
  /// If the studio is the main animation studio of the media (For Studio->MediaConnection field only)

  public static func isMainStudio() -> Selection<Bool, Objects.MediaEdge> {
    Selection<Bool, Objects.MediaEdge> {
      try $0.isMainStudio()
    }
  }
  /// The characters in the media voiced by the parent actor

  public static func characters<T>(selection: Selection<T, [Objects.Character?]?>) -> Selection<
    T, Objects.MediaEdge
  > {
    Selection<T, Objects.MediaEdge> {
      try $0.characters(selection: selection)
    }
  }
  /// The characters role in the media

  public static func characterRole() -> Selection<Enums.CharacterRole?, Objects.MediaEdge> {
    Selection<Enums.CharacterRole?, Objects.MediaEdge> {
      try $0.characterRole()
    }
  }
  /// Media specific character name

  public static func characterName() -> Selection<String?, Objects.MediaEdge> {
    Selection<String?, Objects.MediaEdge> {
      try $0.characterName()
    }
  }
  /// Notes regarding the VA's role for the character

  public static func roleNotes() -> Selection<String?, Objects.MediaEdge> {
    Selection<String?, Objects.MediaEdge> {
      try $0.roleNotes()
    }
  }
  /// Used for grouping roles where multiple dubs exist for the same language. Either dubbing company name or language variant.

  public static func dubGroup() -> Selection<String?, Objects.MediaEdge> {
    Selection<String?, Objects.MediaEdge> {
      try $0.dubGroup()
    }
  }
  /// The role of the staff member in the production of the media

  public static func staffRole() -> Selection<String?, Objects.MediaEdge> {
    Selection<String?, Objects.MediaEdge> {
      try $0.staffRole()
    }
  }
  /// The voice actors of the character

  public static func voiceActors<T>(
    language: OptionalArgument<Enums.StaffLanguage> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.StaffSort>]> = .init(),
    selection: Selection<T, [Objects.Staff?]?>
  ) -> Selection<T, Objects.MediaEdge> {
    Selection<T, Objects.MediaEdge> {
      try $0.voiceActors(language: language, sort: sort, selection: selection)
    }
  }
  /// The voice actors of the character with role date

  public static func voiceActorRoles<T>(
    language: OptionalArgument<Enums.StaffLanguage> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.StaffSort>]> = .init(),
    selection: Selection<T, [Objects.StaffRoleType?]?>
  ) -> Selection<T, Objects.MediaEdge> {
    Selection<T, Objects.MediaEdge> {
      try $0.voiceActorRoles(language: language, sort: sort, selection: selection)
    }
  }
  /// The order the media should be displayed from the users favourites

  public static func favouriteOrder() -> Selection<Int?, Objects.MediaEdge> {
    Selection<Int?, Objects.MediaEdge> {
      try $0.favouriteOrder()
    }
  }
}
extension Objects.Media {
  /// The id of the media

  public static func id() -> Selection<Int, Objects.Media> {
    Selection<Int, Objects.Media> {
      try $0.id()
    }
  }
  /// The mal id of the media

  public static func idMal() -> Selection<Int?, Objects.Media> {
    Selection<Int?, Objects.Media> {
      try $0.idMal()
    }
  }
  /// The official titles of the media in various languages

  public static func title<T>(selection: Selection<T, Objects.MediaTitle?>) -> Selection<
    T, Objects.Media
  > {
    Selection<T, Objects.Media> {
      try $0.title(selection: selection)
    }
  }
  /// The type of the media; anime or manga

  public static func type() -> Selection<Enums.MediaType?, Objects.Media> {
    Selection<Enums.MediaType?, Objects.Media> {
      try $0.type()
    }
  }
  /// The format the media was released in

  public static func format() -> Selection<Enums.MediaFormat?, Objects.Media> {
    Selection<Enums.MediaFormat?, Objects.Media> {
      try $0.format()
    }
  }
  /// The current releasing status of the media

  public static func status(version: OptionalArgument<Int> = .init()) -> Selection<
    Enums.MediaStatus?, Objects.Media
  > {
    Selection<Enums.MediaStatus?, Objects.Media> {
      try $0.status(version: version)
    }
  }
  /// Short description of the media's story and characters

  public static func description(asHtml: OptionalArgument<Bool> = .init()) -> Selection<
    String?, Objects.Media
  > {
    Selection<String?, Objects.Media> {
      try $0.description(asHtml: asHtml)
    }
  }
  /// The first official release date of the media

  public static func startDate<T>(selection: Selection<T, Objects.FuzzyDate?>) -> Selection<
    T, Objects.Media
  > {
    Selection<T, Objects.Media> {
      try $0.startDate(selection: selection)
    }
  }
  /// The last official release date of the media

  public static func endDate<T>(selection: Selection<T, Objects.FuzzyDate?>) -> Selection<
    T, Objects.Media
  > {
    Selection<T, Objects.Media> {
      try $0.endDate(selection: selection)
    }
  }
  /// The season the media was initially released in

  public static func season() -> Selection<Enums.MediaSeason?, Objects.Media> {
    Selection<Enums.MediaSeason?, Objects.Media> {
      try $0.season()
    }
  }
  /// The season year the media was initially released in

  public static func seasonYear() -> Selection<Int?, Objects.Media> {
    Selection<Int?, Objects.Media> {
      try $0.seasonYear()
    }
  }
  /// The year & season the media was initially released in

  public static func seasonInt() -> Selection<Int?, Objects.Media> {
    Selection<Int?, Objects.Media> {
      try $0.seasonInt()
    }
  }
  /// The amount of episodes the anime has when complete

  public static func episodes() -> Selection<Int?, Objects.Media> {
    Selection<Int?, Objects.Media> {
      try $0.episodes()
    }
  }
  /// The general length of each anime episode in minutes

  public static func duration() -> Selection<Int?, Objects.Media> {
    Selection<Int?, Objects.Media> {
      try $0.duration()
    }
  }
  /// The amount of chapters the manga has when complete

  public static func chapters() -> Selection<Int?, Objects.Media> {
    Selection<Int?, Objects.Media> {
      try $0.chapters()
    }
  }
  /// The amount of volumes the manga has when complete

  public static func volumes() -> Selection<Int?, Objects.Media> {
    Selection<Int?, Objects.Media> {
      try $0.volumes()
    }
  }
  /// Where the media was created. (ISO 3166-1 alpha-2)

  public static func countryOfOrigin() -> Selection<AnyCodable?, Objects.Media> {
    Selection<AnyCodable?, Objects.Media> {
      try $0.countryOfOrigin()
    }
  }
  /// If the media is officially licensed or a self-published doujin release

  public static func isLicensed() -> Selection<Bool?, Objects.Media> {
    Selection<Bool?, Objects.Media> {
      try $0.isLicensed()
    }
  }
  /// Source type the media was adapted from.

  public static func source(version: OptionalArgument<Int> = .init()) -> Selection<
    Enums.MediaSource?, Objects.Media
  > {
    Selection<Enums.MediaSource?, Objects.Media> {
      try $0.source(version: version)
    }
  }
  /// Official Twitter hashtags for the media

  public static func hashtag() -> Selection<String?, Objects.Media> {
    Selection<String?, Objects.Media> {
      try $0.hashtag()
    }
  }
  /// Media trailer or advertisement

  public static func trailer<T>(selection: Selection<T, Objects.MediaTrailer?>) -> Selection<
    T, Objects.Media
  > {
    Selection<T, Objects.Media> {
      try $0.trailer(selection: selection)
    }
  }
  /// When the media's data was last updated

  public static func updatedAt() -> Selection<Int?, Objects.Media> {
    Selection<Int?, Objects.Media> {
      try $0.updatedAt()
    }
  }
  /// The cover images of the media

  public static func coverImage<T>(selection: Selection<T, Objects.MediaCoverImage?>) -> Selection<
    T, Objects.Media
  > {
    Selection<T, Objects.Media> {
      try $0.coverImage(selection: selection)
    }
  }
  /// The banner image of the media

  public static func bannerImage() -> Selection<String?, Objects.Media> {
    Selection<String?, Objects.Media> {
      try $0.bannerImage()
    }
  }
  /// The genres of the media

  public static func genres() -> Selection<[String?]?, Objects.Media> {
    Selection<[String?]?, Objects.Media> {
      try $0.genres()
    }
  }
  /// Alternative titles of the media

  public static func synonyms() -> Selection<[String?]?, Objects.Media> {
    Selection<[String?]?, Objects.Media> {
      try $0.synonyms()
    }
  }
  /// A weighted average score of all the user's scores of the media

  public static func averageScore() -> Selection<Int?, Objects.Media> {
    Selection<Int?, Objects.Media> {
      try $0.averageScore()
    }
  }
  /// Mean score of all the user's scores of the media

  public static func meanScore() -> Selection<Int?, Objects.Media> {
    Selection<Int?, Objects.Media> {
      try $0.meanScore()
    }
  }
  /// The number of users with the media on their list

  public static func popularity() -> Selection<Int?, Objects.Media> {
    Selection<Int?, Objects.Media> {
      try $0.popularity()
    }
  }
  /// Locked media may not be added to lists our favorited. This may be due to the entry pending for deletion or other reasons.

  public static func isLocked() -> Selection<Bool?, Objects.Media> {
    Selection<Bool?, Objects.Media> {
      try $0.isLocked()
    }
  }
  /// The amount of related activity in the past hour

  public static func trending() -> Selection<Int?, Objects.Media> {
    Selection<Int?, Objects.Media> {
      try $0.trending()
    }
  }
  /// The amount of user's who have favourited the media

  public static func favourites() -> Selection<Int?, Objects.Media> {
    Selection<Int?, Objects.Media> {
      try $0.favourites()
    }
  }
  /// List of tags that describes elements and themes of the media

  public static func tags<T>(selection: Selection<T, [Objects.MediaTag?]?>) -> Selection<
    T, Objects.Media
  > {
    Selection<T, Objects.Media> {
      try $0.tags(selection: selection)
    }
  }
  /// Other media in the same or connecting franchise

  public static func relations<T>(selection: Selection<T, Objects.MediaConnection?>) -> Selection<
    T, Objects.Media
  > {
    Selection<T, Objects.Media> {
      try $0.relations(selection: selection)
    }
  }
  /// The characters in the media

  public static func characters<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.CharacterSort>]> = .init(),
    role: OptionalArgument<Enums.CharacterRole> = .init(), page: OptionalArgument<Int> = .init(),
    perPage: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.CharacterConnection?>
  ) -> Selection<T, Objects.Media> {
    Selection<T, Objects.Media> {
      try $0.characters(sort: sort, role: role, page: page, perPage: perPage, selection: selection)
    }
  }
  /// The staff who produced the media

  public static func staff<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.StaffSort>]> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.StaffConnection?>
  ) -> Selection<T, Objects.Media> {
    Selection<T, Objects.Media> {
      try $0.staff(sort: sort, page: page, perPage: perPage, selection: selection)
    }
  }
  /// The companies who produced the media

  public static func studios<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.StudioSort>]> = .init(),
    isMain: OptionalArgument<Bool> = .init(), selection: Selection<T, Objects.StudioConnection?>
  ) -> Selection<T, Objects.Media> {
    Selection<T, Objects.Media> {
      try $0.studios(sort: sort, isMain: isMain, selection: selection)
    }
  }
  /// If the media is marked as favourite by the current authenticated user

  public static func isFavourite() -> Selection<Bool, Objects.Media> {
    Selection<Bool, Objects.Media> {
      try $0.isFavourite()
    }
  }
  /// If the media is blocked from being added to favourites

  public static func isFavouriteBlocked() -> Selection<Bool, Objects.Media> {
    Selection<Bool, Objects.Media> {
      try $0.isFavouriteBlocked()
    }
  }
  /// If the media is intended only for 18+ adult audiences

  public static func isAdult() -> Selection<Bool?, Objects.Media> {
    Selection<Bool?, Objects.Media> {
      try $0.isAdult()
    }
  }
  /// The media's next episode airing schedule

  public static func nextAiringEpisode<T>(selection: Selection<T, Objects.AiringSchedule?>)
    -> Selection<T, Objects.Media>
  {
    Selection<T, Objects.Media> {
      try $0.nextAiringEpisode(selection: selection)
    }
  }
  /// The media's entire airing schedule

  public static func airingSchedule<T>(
    notYetAired: OptionalArgument<Bool> = .init(), page: OptionalArgument<Int> = .init(),
    perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.AiringScheduleConnection?>
  ) -> Selection<T, Objects.Media> {
    Selection<T, Objects.Media> {
      try $0.airingSchedule(
        notYetAired: notYetAired, page: page, perPage: perPage, selection: selection)
    }
  }
  /// The media's daily trend stats

  public static func trends<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.MediaTrendSort>]> = .init(),
    releasing: OptionalArgument<Bool> = .init(), page: OptionalArgument<Int> = .init(),
    perPage: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.MediaTrendConnection?>
  ) -> Selection<T, Objects.Media> {
    Selection<T, Objects.Media> {
      try $0.trends(
        sort: sort, releasing: releasing, page: page, perPage: perPage, selection: selection)
    }
  }
  /// External links to another site related to the media

  public static func externalLinks<T>(selection: Selection<T, [Objects.MediaExternalLink?]?>)
    -> Selection<T, Objects.Media>
  {
    Selection<T, Objects.Media> {
      try $0.externalLinks(selection: selection)
    }
  }
  /// Data and links to legal streaming episodes on external sites

  public static func streamingEpisodes<T>(
    selection: Selection<T, [Objects.MediaStreamingEpisode?]?>
  ) -> Selection<T, Objects.Media> {
    Selection<T, Objects.Media> {
      try $0.streamingEpisodes(selection: selection)
    }
  }
  /// The ranking of the media in a particular time span and format compared to other media

  public static func rankings<T>(selection: Selection<T, [Objects.MediaRank?]?>) -> Selection<
    T, Objects.Media
  > {
    Selection<T, Objects.Media> {
      try $0.rankings(selection: selection)
    }
  }
  /// The authenticated user's media list entry for the media

  public static func mediaListEntry<T>(selection: Selection<T, Objects.MediaList?>) -> Selection<
    T, Objects.Media
  > {
    Selection<T, Objects.Media> {
      try $0.mediaListEntry(selection: selection)
    }
  }
  /// User reviews of the media

  public static func reviews<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ReviewSort>]> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.ReviewConnection?>
  ) -> Selection<T, Objects.Media> {
    Selection<T, Objects.Media> {
      try $0.reviews(limit: limit, sort: sort, page: page, perPage: perPage, selection: selection)
    }
  }
  /// User recommendations for similar media

  public static func recommendations<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.RecommendationSort>]> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.RecommendationConnection?>
  ) -> Selection<T, Objects.Media> {
    Selection<T, Objects.Media> {
      try $0.recommendations(sort: sort, page: page, perPage: perPage, selection: selection)
    }
  }

  public static func stats<T>(selection: Selection<T, Objects.MediaStats?>) -> Selection<
    T, Objects.Media
  > {
    Selection<T, Objects.Media> {
      try $0.stats(selection: selection)
    }
  }
  /// The url for the media page on the AniList website

  public static func siteUrl() -> Selection<String?, Objects.Media> {
    Selection<String?, Objects.Media> {
      try $0.siteUrl()
    }
  }
  /// If the media should have forum thread automatically created for it on airing episode release

  public static func autoCreateForumThread() -> Selection<Bool?, Objects.Media> {
    Selection<Bool?, Objects.Media> {
      try $0.autoCreateForumThread()
    }
  }
  /// If the media is blocked from being recommended to/from

  public static func isRecommendationBlocked() -> Selection<Bool?, Objects.Media> {
    Selection<Bool?, Objects.Media> {
      try $0.isRecommendationBlocked()
    }
  }
  /// If the media is blocked from being reviewed

  public static func isReviewBlocked() -> Selection<Bool?, Objects.Media> {
    Selection<Bool?, Objects.Media> {
      try $0.isReviewBlocked()
    }
  }
  /// Notes for site moderators

  public static func modNotes() -> Selection<String?, Objects.Media> {
    Selection<String?, Objects.Media> {
      try $0.modNotes()
    }
  }
}
extension Objects.MediaTitle {
  /// The romanization of the native language title

  public static func romaji(stylised: OptionalArgument<Bool> = .init()) -> Selection<
    String?, Objects.MediaTitle
  > {
    Selection<String?, Objects.MediaTitle> {
      try $0.romaji(stylised: stylised)
    }
  }
  /// The official english title

  public static func english(stylised: OptionalArgument<Bool> = .init()) -> Selection<
    String?, Objects.MediaTitle
  > {
    Selection<String?, Objects.MediaTitle> {
      try $0.english(stylised: stylised)
    }
  }
  /// Official title in it's native language

  public static func native(stylised: OptionalArgument<Bool> = .init()) -> Selection<
    String?, Objects.MediaTitle
  > {
    Selection<String?, Objects.MediaTitle> {
      try $0.native(stylised: stylised)
    }
  }
  /// The currently authenticated users preferred title language. Default romaji for non-authenticated

  public static func userPreferred() -> Selection<String?, Objects.MediaTitle> {
    Selection<String?, Objects.MediaTitle> {
      try $0.userPreferred()
    }
  }
}
extension Objects.FuzzyDate {
  /// Numeric Year (2017)

  public static func year() -> Selection<Int?, Objects.FuzzyDate> {
    Selection<Int?, Objects.FuzzyDate> {
      try $0.year()
    }
  }
  /// Numeric Month (3)

  public static func month() -> Selection<Int?, Objects.FuzzyDate> {
    Selection<Int?, Objects.FuzzyDate> {
      try $0.month()
    }
  }
  /// Numeric Day (24)

  public static func day() -> Selection<Int?, Objects.FuzzyDate> {
    Selection<Int?, Objects.FuzzyDate> {
      try $0.day()
    }
  }
}
extension Objects.MediaTrailer {
  /// The trailer video id

  public static func id() -> Selection<String?, Objects.MediaTrailer> {
    Selection<String?, Objects.MediaTrailer> {
      try $0.id()
    }
  }
  /// The site the video is hosted by (Currently either youtube or dailymotion)

  public static func site() -> Selection<String?, Objects.MediaTrailer> {
    Selection<String?, Objects.MediaTrailer> {
      try $0.site()
    }
  }
  /// The url for the thumbnail image of the video

  public static func thumbnail() -> Selection<String?, Objects.MediaTrailer> {
    Selection<String?, Objects.MediaTrailer> {
      try $0.thumbnail()
    }
  }
}
extension Objects.MediaCoverImage {
  /// The cover image url of the media at its largest size. If this size isn't available, large will be provided instead.

  public static func extraLarge() -> Selection<String?, Objects.MediaCoverImage> {
    Selection<String?, Objects.MediaCoverImage> {
      try $0.extraLarge()
    }
  }
  /// The cover image url of the media at a large size

  public static func large() -> Selection<String?, Objects.MediaCoverImage> {
    Selection<String?, Objects.MediaCoverImage> {
      try $0.large()
    }
  }
  /// The cover image url of the media at medium size

  public static func medium() -> Selection<String?, Objects.MediaCoverImage> {
    Selection<String?, Objects.MediaCoverImage> {
      try $0.medium()
    }
  }
  /// Average #hex color of cover image

  public static func color() -> Selection<String?, Objects.MediaCoverImage> {
    Selection<String?, Objects.MediaCoverImage> {
      try $0.color()
    }
  }
}
extension Objects.MediaTag {
  /// The id of the tag

  public static func id() -> Selection<Int, Objects.MediaTag> {
    Selection<Int, Objects.MediaTag> {
      try $0.id()
    }
  }
  /// The name of the tag

  public static func name() -> Selection<String, Objects.MediaTag> {
    Selection<String, Objects.MediaTag> {
      try $0.name()
    }
  }
  /// A general description of the tag

  public static func description() -> Selection<String?, Objects.MediaTag> {
    Selection<String?, Objects.MediaTag> {
      try $0.description()
    }
  }
  /// The categories of tags this tag belongs to

  public static func category() -> Selection<String?, Objects.MediaTag> {
    Selection<String?, Objects.MediaTag> {
      try $0.category()
    }
  }
  /// The relevance ranking of the tag out of the 100 for this media

  public static func rank() -> Selection<Int?, Objects.MediaTag> {
    Selection<Int?, Objects.MediaTag> {
      try $0.rank()
    }
  }
  /// If the tag could be a spoiler for any media

  public static func isGeneralSpoiler() -> Selection<Bool?, Objects.MediaTag> {
    Selection<Bool?, Objects.MediaTag> {
      try $0.isGeneralSpoiler()
    }
  }
  /// If the tag is a spoiler for this media

  public static func isMediaSpoiler() -> Selection<Bool?, Objects.MediaTag> {
    Selection<Bool?, Objects.MediaTag> {
      try $0.isMediaSpoiler()
    }
  }
  /// If the tag is only for adult 18+ media

  public static func isAdult() -> Selection<Bool?, Objects.MediaTag> {
    Selection<Bool?, Objects.MediaTag> {
      try $0.isAdult()
    }
  }
  /// The user who submitted the tag

  public static func userId() -> Selection<Int?, Objects.MediaTag> {
    Selection<Int?, Objects.MediaTag> {
      try $0.userId()
    }
  }
}
extension Objects.CharacterConnection {

  public static func edges<T>(selection: Selection<T, [Objects.CharacterEdge?]?>) -> Selection<
    T, Objects.CharacterConnection
  > {
    Selection<T, Objects.CharacterConnection> {
      try $0.edges(selection: selection)
    }
  }

  public static func nodes<T>(selection: Selection<T, [Objects.Character?]?>) -> Selection<
    T, Objects.CharacterConnection
  > {
    Selection<T, Objects.CharacterConnection> {
      try $0.nodes(selection: selection)
    }
  }
  /// The pagination information

  public static func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) -> Selection<
    T, Objects.CharacterConnection
  > {
    Selection<T, Objects.CharacterConnection> {
      try $0.pageInfo(selection: selection)
    }
  }
}
extension Objects.CharacterEdge {

  public static func node<T>(selection: Selection<T, Objects.Character?>) -> Selection<
    T, Objects.CharacterEdge
  > {
    Selection<T, Objects.CharacterEdge> {
      try $0.node(selection: selection)
    }
  }
  /// The id of the connection

  public static func id() -> Selection<Int?, Objects.CharacterEdge> {
    Selection<Int?, Objects.CharacterEdge> {
      try $0.id()
    }
  }
  /// The characters role in the media

  public static func role() -> Selection<Enums.CharacterRole?, Objects.CharacterEdge> {
    Selection<Enums.CharacterRole?, Objects.CharacterEdge> {
      try $0.role()
    }
  }
  /// Media specific character name

  public static func name() -> Selection<String?, Objects.CharacterEdge> {
    Selection<String?, Objects.CharacterEdge> {
      try $0.name()
    }
  }
  /// The voice actors of the character

  public static func voiceActors<T>(
    language: OptionalArgument<Enums.StaffLanguage> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.StaffSort>]> = .init(),
    selection: Selection<T, [Objects.Staff?]?>
  ) -> Selection<T, Objects.CharacterEdge> {
    Selection<T, Objects.CharacterEdge> {
      try $0.voiceActors(language: language, sort: sort, selection: selection)
    }
  }
  /// The voice actors of the character with role date

  public static func voiceActorRoles<T>(
    language: OptionalArgument<Enums.StaffLanguage> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.StaffSort>]> = .init(),
    selection: Selection<T, [Objects.StaffRoleType?]?>
  ) -> Selection<T, Objects.CharacterEdge> {
    Selection<T, Objects.CharacterEdge> {
      try $0.voiceActorRoles(language: language, sort: sort, selection: selection)
    }
  }
  /// The media the character is in

  public static func media<T>(selection: Selection<T, [Objects.Media?]?>) -> Selection<
    T, Objects.CharacterEdge
  > {
    Selection<T, Objects.CharacterEdge> {
      try $0.media(selection: selection)
    }
  }
  /// The order the character should be displayed from the users favourites

  public static func favouriteOrder() -> Selection<Int?, Objects.CharacterEdge> {
    Selection<Int?, Objects.CharacterEdge> {
      try $0.favouriteOrder()
    }
  }
}
extension Objects.Character {
  /// The id of the character

  public static func id() -> Selection<Int, Objects.Character> {
    Selection<Int, Objects.Character> {
      try $0.id()
    }
  }
  /// The names of the character

  public static func name<T>(selection: Selection<T, Objects.CharacterName?>) -> Selection<
    T, Objects.Character
  > {
    Selection<T, Objects.Character> {
      try $0.name(selection: selection)
    }
  }
  /// Character images

  public static func image<T>(selection: Selection<T, Objects.CharacterImage?>) -> Selection<
    T, Objects.Character
  > {
    Selection<T, Objects.Character> {
      try $0.image(selection: selection)
    }
  }
  /// A general description of the character

  public static func description(asHtml: OptionalArgument<Bool> = .init()) -> Selection<
    String?, Objects.Character
  > {
    Selection<String?, Objects.Character> {
      try $0.description(asHtml: asHtml)
    }
  }
  /// The character's gender. Usually Male, Female, or Non-binary but can be any string.

  public static func gender() -> Selection<String?, Objects.Character> {
    Selection<String?, Objects.Character> {
      try $0.gender()
    }
  }
  /// The character's birth date

  public static func dateOfBirth<T>(selection: Selection<T, Objects.FuzzyDate?>) -> Selection<
    T, Objects.Character
  > {
    Selection<T, Objects.Character> {
      try $0.dateOfBirth(selection: selection)
    }
  }
  /// The character's age. Note this is a string, not an int, it may contain further text and additional ages.

  public static func age() -> Selection<String?, Objects.Character> {
    Selection<String?, Objects.Character> {
      try $0.age()
    }
  }
  /// The characters blood type

  public static func bloodType() -> Selection<String?, Objects.Character> {
    Selection<String?, Objects.Character> {
      try $0.bloodType()
    }
  }
  /// If the character is marked as favourite by the currently authenticated user

  public static func isFavourite() -> Selection<Bool, Objects.Character> {
    Selection<Bool, Objects.Character> {
      try $0.isFavourite()
    }
  }
  /// If the character is blocked from being added to favourites

  public static func isFavouriteBlocked() -> Selection<Bool, Objects.Character> {
    Selection<Bool, Objects.Character> {
      try $0.isFavouriteBlocked()
    }
  }
  /// The url for the character page on the AniList website

  public static func siteUrl() -> Selection<String?, Objects.Character> {
    Selection<String?, Objects.Character> {
      try $0.siteUrl()
    }
  }
  /// Media that includes the character

  public static func media<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.MediaSort>]> = .init(),
    type: OptionalArgument<Enums.MediaType> = .init(), onList: OptionalArgument<Bool> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.MediaConnection?>
  ) -> Selection<T, Objects.Character> {
    Selection<T, Objects.Character> {
      try $0.media(
        sort: sort, type: type, onList: onList, page: page, perPage: perPage, selection: selection)
    }
  }

  @available(*, deprecated, message: "No data available")
  public static func updatedAt() -> Selection<Int?, Objects.Character> {
    Selection<Int?, Objects.Character> {
      try $0.updatedAt()
    }
  }
  /// The amount of user's who have favourited the character

  public static func favourites() -> Selection<Int?, Objects.Character> {
    Selection<Int?, Objects.Character> {
      try $0.favourites()
    }
  }
  /// Notes for site moderators

  public static func modNotes() -> Selection<String?, Objects.Character> {
    Selection<String?, Objects.Character> {
      try $0.modNotes()
    }
  }
}
extension Objects.CharacterName {
  /// The character's given name

  public static func first() -> Selection<String?, Objects.CharacterName> {
    Selection<String?, Objects.CharacterName> {
      try $0.first()
    }
  }
  /// The character's middle name

  public static func middle() -> Selection<String?, Objects.CharacterName> {
    Selection<String?, Objects.CharacterName> {
      try $0.middle()
    }
  }
  /// The character's surname

  public static func last() -> Selection<String?, Objects.CharacterName> {
    Selection<String?, Objects.CharacterName> {
      try $0.last()
    }
  }
  /// The character's first and last name

  public static func full() -> Selection<String?, Objects.CharacterName> {
    Selection<String?, Objects.CharacterName> {
      try $0.full()
    }
  }
  /// The character's full name in their native language

  public static func native() -> Selection<String?, Objects.CharacterName> {
    Selection<String?, Objects.CharacterName> {
      try $0.native()
    }
  }
  /// Other names the character might be referred to as

  public static func alternative() -> Selection<[String?]?, Objects.CharacterName> {
    Selection<[String?]?, Objects.CharacterName> {
      try $0.alternative()
    }
  }
  /// Other names the character might be referred to as but are spoilers

  public static func alternativeSpoiler() -> Selection<[String?]?, Objects.CharacterName> {
    Selection<[String?]?, Objects.CharacterName> {
      try $0.alternativeSpoiler()
    }
  }
  /// The currently authenticated users preferred name language. Default romaji for non-authenticated

  public static func userPreferred() -> Selection<String?, Objects.CharacterName> {
    Selection<String?, Objects.CharacterName> {
      try $0.userPreferred()
    }
  }
}
extension Objects.CharacterImage {
  /// The character's image of media at its largest size

  public static func large() -> Selection<String?, Objects.CharacterImage> {
    Selection<String?, Objects.CharacterImage> {
      try $0.large()
    }
  }
  /// The character's image of media at medium size

  public static func medium() -> Selection<String?, Objects.CharacterImage> {
    Selection<String?, Objects.CharacterImage> {
      try $0.medium()
    }
  }
}
extension Objects.Staff {
  /// The id of the staff member

  public static func id() -> Selection<Int, Objects.Staff> {
    Selection<Int, Objects.Staff> {
      try $0.id()
    }
  }
  /// The names of the staff member

  public static func name<T>(selection: Selection<T, Objects.StaffName?>) -> Selection<
    T, Objects.Staff
  > {
    Selection<T, Objects.Staff> {
      try $0.name(selection: selection)
    }
  }
  /// The primary language the staff member dub's in
  @available(*, deprecated, message: "Replaced with languageV2")
  public static func language() -> Selection<Enums.StaffLanguage?, Objects.Staff> {
    Selection<Enums.StaffLanguage?, Objects.Staff> {
      try $0.language()
    }
  }
  /// The primary language of the staff member. Current values: Japanese, English, Korean, Italian, Spanish, Portuguese, French, German, Hebrew, Hungarian, Chinese, Arabic, Filipino, Catalan, Finnish, Turkish, Dutch, Swedish, Thai, Tagalog, Malaysian, Indonesian, Vietnamese, Nepali, Hindi, Urdu

  public static func languageV2() -> Selection<String?, Objects.Staff> {
    Selection<String?, Objects.Staff> {
      try $0.languageV2()
    }
  }
  /// The staff images

  public static func image<T>(selection: Selection<T, Objects.StaffImage?>) -> Selection<
    T, Objects.Staff
  > {
    Selection<T, Objects.Staff> {
      try $0.image(selection: selection)
    }
  }
  /// A general description of the staff member

  public static func description(asHtml: OptionalArgument<Bool> = .init()) -> Selection<
    String?, Objects.Staff
  > {
    Selection<String?, Objects.Staff> {
      try $0.description(asHtml: asHtml)
    }
  }
  /// The person's primary occupations

  public static func primaryOccupations() -> Selection<[String?]?, Objects.Staff> {
    Selection<[String?]?, Objects.Staff> {
      try $0.primaryOccupations()
    }
  }
  /// The staff's gender. Usually Male, Female, or Non-binary but can be any string.

  public static func gender() -> Selection<String?, Objects.Staff> {
    Selection<String?, Objects.Staff> {
      try $0.gender()
    }
  }

  public static func dateOfBirth<T>(selection: Selection<T, Objects.FuzzyDate?>) -> Selection<
    T, Objects.Staff
  > {
    Selection<T, Objects.Staff> {
      try $0.dateOfBirth(selection: selection)
    }
  }

  public static func dateOfDeath<T>(selection: Selection<T, Objects.FuzzyDate?>) -> Selection<
    T, Objects.Staff
  > {
    Selection<T, Objects.Staff> {
      try $0.dateOfDeath(selection: selection)
    }
  }
  /// The person's age in years

  public static func age() -> Selection<Int?, Objects.Staff> {
    Selection<Int?, Objects.Staff> {
      try $0.age()
    }
  }
  /// [startYear, endYear] (If the 2nd value is not present staff is still active)

  public static func yearsActive() -> Selection<[Int?]?, Objects.Staff> {
    Selection<[Int?]?, Objects.Staff> {
      try $0.yearsActive()
    }
  }
  /// The persons birthplace or hometown

  public static func homeTown() -> Selection<String?, Objects.Staff> {
    Selection<String?, Objects.Staff> {
      try $0.homeTown()
    }
  }
  /// The persons blood type

  public static func bloodType() -> Selection<String?, Objects.Staff> {
    Selection<String?, Objects.Staff> {
      try $0.bloodType()
    }
  }
  /// If the staff member is marked as favourite by the currently authenticated user

  public static func isFavourite() -> Selection<Bool, Objects.Staff> {
    Selection<Bool, Objects.Staff> {
      try $0.isFavourite()
    }
  }
  /// If the staff member is blocked from being added to favourites

  public static func isFavouriteBlocked() -> Selection<Bool, Objects.Staff> {
    Selection<Bool, Objects.Staff> {
      try $0.isFavouriteBlocked()
    }
  }
  /// The url for the staff page on the AniList website

  public static func siteUrl() -> Selection<String?, Objects.Staff> {
    Selection<String?, Objects.Staff> {
      try $0.siteUrl()
    }
  }
  /// Media where the staff member has a production role

  public static func staffMedia<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.MediaSort>]> = .init(),
    type: OptionalArgument<Enums.MediaType> = .init(), onList: OptionalArgument<Bool> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.MediaConnection?>
  ) -> Selection<T, Objects.Staff> {
    Selection<T, Objects.Staff> {
      try $0.staffMedia(
        sort: sort, type: type, onList: onList, page: page, perPage: perPage, selection: selection)
    }
  }
  /// Characters voiced by the actor

  public static func characters<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.CharacterSort>]> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.CharacterConnection?>
  ) -> Selection<T, Objects.Staff> {
    Selection<T, Objects.Staff> {
      try $0.characters(sort: sort, page: page, perPage: perPage, selection: selection)
    }
  }
  /// Media the actor voiced characters in. (Same data as characters with media as node instead of characters)

  public static func characterMedia<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.MediaSort>]> = .init(),
    onList: OptionalArgument<Bool> = .init(), page: OptionalArgument<Int> = .init(),
    perPage: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.MediaConnection?>
  ) -> Selection<T, Objects.Staff> {
    Selection<T, Objects.Staff> {
      try $0.characterMedia(
        sort: sort, onList: onList, page: page, perPage: perPage, selection: selection)
    }
  }

  @available(*, deprecated, message: "No data available")
  public static func updatedAt() -> Selection<Int?, Objects.Staff> {
    Selection<Int?, Objects.Staff> {
      try $0.updatedAt()
    }
  }
  /// Staff member that the submission is referencing

  public static func staff<T>(selection: Selection<T, Objects.Staff?>) -> Selection<
    T, Objects.Staff
  > {
    Selection<T, Objects.Staff> {
      try $0.staff(selection: selection)
    }
  }
  /// Submitter for the submission

  public static func submitter<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.Staff
  > {
    Selection<T, Objects.Staff> {
      try $0.submitter(selection: selection)
    }
  }
  /// Status of the submission

  public static func submissionStatus() -> Selection<Int?, Objects.Staff> {
    Selection<Int?, Objects.Staff> {
      try $0.submissionStatus()
    }
  }
  /// Inner details of submission status

  public static func submissionNotes() -> Selection<String?, Objects.Staff> {
    Selection<String?, Objects.Staff> {
      try $0.submissionNotes()
    }
  }
  /// The amount of user's who have favourited the staff member

  public static func favourites() -> Selection<Int?, Objects.Staff> {
    Selection<Int?, Objects.Staff> {
      try $0.favourites()
    }
  }
  /// Notes for site moderators

  public static func modNotes() -> Selection<String?, Objects.Staff> {
    Selection<String?, Objects.Staff> {
      try $0.modNotes()
    }
  }
}
extension Objects.StaffName {
  /// The person's given name

  public static func first() -> Selection<String?, Objects.StaffName> {
    Selection<String?, Objects.StaffName> {
      try $0.first()
    }
  }
  /// The person's middle name

  public static func middle() -> Selection<String?, Objects.StaffName> {
    Selection<String?, Objects.StaffName> {
      try $0.middle()
    }
  }
  /// The person's surname

  public static func last() -> Selection<String?, Objects.StaffName> {
    Selection<String?, Objects.StaffName> {
      try $0.last()
    }
  }
  /// The person's first and last name

  public static func full() -> Selection<String?, Objects.StaffName> {
    Selection<String?, Objects.StaffName> {
      try $0.full()
    }
  }
  /// The person's full name in their native language

  public static func native() -> Selection<String?, Objects.StaffName> {
    Selection<String?, Objects.StaffName> {
      try $0.native()
    }
  }
  /// Other names the staff member might be referred to as (pen names)

  public static func alternative() -> Selection<[String?]?, Objects.StaffName> {
    Selection<[String?]?, Objects.StaffName> {
      try $0.alternative()
    }
  }
  /// The currently authenticated users preferred name language. Default romaji for non-authenticated

  public static func userPreferred() -> Selection<String?, Objects.StaffName> {
    Selection<String?, Objects.StaffName> {
      try $0.userPreferred()
    }
  }
}
extension Objects.StaffImage {
  /// The person's image of media at its largest size

  public static func large() -> Selection<String?, Objects.StaffImage> {
    Selection<String?, Objects.StaffImage> {
      try $0.large()
    }
  }
  /// The person's image of media at medium size

  public static func medium() -> Selection<String?, Objects.StaffImage> {
    Selection<String?, Objects.StaffImage> {
      try $0.medium()
    }
  }
}
extension Objects.StaffRoleType {
  /// The voice actors of the character

  public static func voiceActor<T>(selection: Selection<T, Objects.Staff?>) -> Selection<
    T, Objects.StaffRoleType
  > {
    Selection<T, Objects.StaffRoleType> {
      try $0.voiceActor(selection: selection)
    }
  }
  /// Notes regarding the VA's role for the character

  public static func roleNotes() -> Selection<String?, Objects.StaffRoleType> {
    Selection<String?, Objects.StaffRoleType> {
      try $0.roleNotes()
    }
  }
  /// Used for grouping roles where multiple dubs exist for the same language. Either dubbing company name or language variant.

  public static func dubGroup() -> Selection<String?, Objects.StaffRoleType> {
    Selection<String?, Objects.StaffRoleType> {
      try $0.dubGroup()
    }
  }
}
extension Objects.StaffConnection {

  public static func edges<T>(selection: Selection<T, [Objects.StaffEdge?]?>) -> Selection<
    T, Objects.StaffConnection
  > {
    Selection<T, Objects.StaffConnection> {
      try $0.edges(selection: selection)
    }
  }

  public static func nodes<T>(selection: Selection<T, [Objects.Staff?]?>) -> Selection<
    T, Objects.StaffConnection
  > {
    Selection<T, Objects.StaffConnection> {
      try $0.nodes(selection: selection)
    }
  }
  /// The pagination information

  public static func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) -> Selection<
    T, Objects.StaffConnection
  > {
    Selection<T, Objects.StaffConnection> {
      try $0.pageInfo(selection: selection)
    }
  }
}
extension Objects.StaffEdge {

  public static func node<T>(selection: Selection<T, Objects.Staff?>) -> Selection<
    T, Objects.StaffEdge
  > {
    Selection<T, Objects.StaffEdge> {
      try $0.node(selection: selection)
    }
  }
  /// The id of the connection

  public static func id() -> Selection<Int?, Objects.StaffEdge> {
    Selection<Int?, Objects.StaffEdge> {
      try $0.id()
    }
  }
  /// The role of the staff member in the production of the media

  public static func role() -> Selection<String?, Objects.StaffEdge> {
    Selection<String?, Objects.StaffEdge> {
      try $0.role()
    }
  }
  /// The order the staff should be displayed from the users favourites

  public static func favouriteOrder() -> Selection<Int?, Objects.StaffEdge> {
    Selection<Int?, Objects.StaffEdge> {
      try $0.favouriteOrder()
    }
  }
}
extension Objects.StudioConnection {

  public static func edges<T>(selection: Selection<T, [Objects.StudioEdge?]?>) -> Selection<
    T, Objects.StudioConnection
  > {
    Selection<T, Objects.StudioConnection> {
      try $0.edges(selection: selection)
    }
  }

  public static func nodes<T>(selection: Selection<T, [Objects.Studio?]?>) -> Selection<
    T, Objects.StudioConnection
  > {
    Selection<T, Objects.StudioConnection> {
      try $0.nodes(selection: selection)
    }
  }
  /// The pagination information

  public static func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) -> Selection<
    T, Objects.StudioConnection
  > {
    Selection<T, Objects.StudioConnection> {
      try $0.pageInfo(selection: selection)
    }
  }
}
extension Objects.StudioEdge {

  public static func node<T>(selection: Selection<T, Objects.Studio?>) -> Selection<
    T, Objects.StudioEdge
  > {
    Selection<T, Objects.StudioEdge> {
      try $0.node(selection: selection)
    }
  }
  /// The id of the connection

  public static func id() -> Selection<Int?, Objects.StudioEdge> {
    Selection<Int?, Objects.StudioEdge> {
      try $0.id()
    }
  }
  /// If the studio is the main animation studio of the anime

  public static func isMain() -> Selection<Bool, Objects.StudioEdge> {
    Selection<Bool, Objects.StudioEdge> {
      try $0.isMain()
    }
  }
  /// The order the character should be displayed from the users favourites

  public static func favouriteOrder() -> Selection<Int?, Objects.StudioEdge> {
    Selection<Int?, Objects.StudioEdge> {
      try $0.favouriteOrder()
    }
  }
}
extension Objects.Studio {
  /// The id of the studio

  public static func id() -> Selection<Int, Objects.Studio> {
    Selection<Int, Objects.Studio> {
      try $0.id()
    }
  }
  /// The name of the studio

  public static func name() -> Selection<String, Objects.Studio> {
    Selection<String, Objects.Studio> {
      try $0.name()
    }
  }
  /// If the studio is an animation studio or a different kind of company

  public static func isAnimationStudio() -> Selection<Bool, Objects.Studio> {
    Selection<Bool, Objects.Studio> {
      try $0.isAnimationStudio()
    }
  }
  /// The media the studio has worked on

  public static func media<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.MediaSort>]> = .init(),
    isMain: OptionalArgument<Bool> = .init(), onList: OptionalArgument<Bool> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.MediaConnection?>
  ) -> Selection<T, Objects.Studio> {
    Selection<T, Objects.Studio> {
      try $0.media(
        sort: sort, isMain: isMain, onList: onList, page: page, perPage: perPage,
        selection: selection)
    }
  }
  /// The url for the studio page on the AniList website

  public static func siteUrl() -> Selection<String?, Objects.Studio> {
    Selection<String?, Objects.Studio> {
      try $0.siteUrl()
    }
  }
  /// If the studio is marked as favourite by the currently authenticated user

  public static func isFavourite() -> Selection<Bool, Objects.Studio> {
    Selection<Bool, Objects.Studio> {
      try $0.isFavourite()
    }
  }
  /// The amount of user's who have favourited the studio

  public static func favourites() -> Selection<Int?, Objects.Studio> {
    Selection<Int?, Objects.Studio> {
      try $0.favourites()
    }
  }
}
extension Objects.AiringSchedule {
  /// The id of the airing schedule item

  public static func id() -> Selection<Int, Objects.AiringSchedule> {
    Selection<Int, Objects.AiringSchedule> {
      try $0.id()
    }
  }
  /// The time the episode airs at

  public static func airingAt() -> Selection<Int, Objects.AiringSchedule> {
    Selection<Int, Objects.AiringSchedule> {
      try $0.airingAt()
    }
  }
  /// Seconds until episode starts airing

  public static func timeUntilAiring() -> Selection<Int, Objects.AiringSchedule> {
    Selection<Int, Objects.AiringSchedule> {
      try $0.timeUntilAiring()
    }
  }
  /// The airing episode number

  public static func episode() -> Selection<Int, Objects.AiringSchedule> {
    Selection<Int, Objects.AiringSchedule> {
      try $0.episode()
    }
  }
  /// The associate media id of the airing episode

  public static func mediaId() -> Selection<Int, Objects.AiringSchedule> {
    Selection<Int, Objects.AiringSchedule> {
      try $0.mediaId()
    }
  }
  /// The associate media of the airing episode

  public static func media<T>(selection: Selection<T, Objects.Media?>) -> Selection<
    T, Objects.AiringSchedule
  > {
    Selection<T, Objects.AiringSchedule> {
      try $0.media(selection: selection)
    }
  }
}
extension Objects.AiringScheduleConnection {

  public static func edges<T>(selection: Selection<T, [Objects.AiringScheduleEdge?]?>) -> Selection<
    T, Objects.AiringScheduleConnection
  > {
    Selection<T, Objects.AiringScheduleConnection> {
      try $0.edges(selection: selection)
    }
  }

  public static func nodes<T>(selection: Selection<T, [Objects.AiringSchedule?]?>) -> Selection<
    T, Objects.AiringScheduleConnection
  > {
    Selection<T, Objects.AiringScheduleConnection> {
      try $0.nodes(selection: selection)
    }
  }
  /// The pagination information

  public static func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) -> Selection<
    T, Objects.AiringScheduleConnection
  > {
    Selection<T, Objects.AiringScheduleConnection> {
      try $0.pageInfo(selection: selection)
    }
  }
}
extension Objects.AiringScheduleEdge {

  public static func node<T>(selection: Selection<T, Objects.AiringSchedule?>) -> Selection<
    T, Objects.AiringScheduleEdge
  > {
    Selection<T, Objects.AiringScheduleEdge> {
      try $0.node(selection: selection)
    }
  }
  /// The id of the connection

  public static func id() -> Selection<Int?, Objects.AiringScheduleEdge> {
    Selection<Int?, Objects.AiringScheduleEdge> {
      try $0.id()
    }
  }
}
extension Objects.MediaTrendConnection {

  public static func edges<T>(selection: Selection<T, [Objects.MediaTrendEdge?]?>) -> Selection<
    T, Objects.MediaTrendConnection
  > {
    Selection<T, Objects.MediaTrendConnection> {
      try $0.edges(selection: selection)
    }
  }

  public static func nodes<T>(selection: Selection<T, [Objects.MediaTrend?]?>) -> Selection<
    T, Objects.MediaTrendConnection
  > {
    Selection<T, Objects.MediaTrendConnection> {
      try $0.nodes(selection: selection)
    }
  }
  /// The pagination information

  public static func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) -> Selection<
    T, Objects.MediaTrendConnection
  > {
    Selection<T, Objects.MediaTrendConnection> {
      try $0.pageInfo(selection: selection)
    }
  }
}
extension Objects.MediaTrendEdge {

  public static func node<T>(selection: Selection<T, Objects.MediaTrend?>) -> Selection<
    T, Objects.MediaTrendEdge
  > {
    Selection<T, Objects.MediaTrendEdge> {
      try $0.node(selection: selection)
    }
  }
}
extension Objects.MediaTrend {
  /// The id of the tag

  public static func mediaId() -> Selection<Int, Objects.MediaTrend> {
    Selection<Int, Objects.MediaTrend> {
      try $0.mediaId()
    }
  }
  /// The day the data was recorded (timestamp)

  public static func date() -> Selection<Int, Objects.MediaTrend> {
    Selection<Int, Objects.MediaTrend> {
      try $0.date()
    }
  }
  /// The amount of media activity on the day

  public static func trending() -> Selection<Int, Objects.MediaTrend> {
    Selection<Int, Objects.MediaTrend> {
      try $0.trending()
    }
  }
  /// A weighted average score of all the user's scores of the media

  public static func averageScore() -> Selection<Int?, Objects.MediaTrend> {
    Selection<Int?, Objects.MediaTrend> {
      try $0.averageScore()
    }
  }
  /// The number of users with the media on their list

  public static func popularity() -> Selection<Int?, Objects.MediaTrend> {
    Selection<Int?, Objects.MediaTrend> {
      try $0.popularity()
    }
  }
  /// The number of users with watching/reading the media

  public static func inProgress() -> Selection<Int?, Objects.MediaTrend> {
    Selection<Int?, Objects.MediaTrend> {
      try $0.inProgress()
    }
  }
  /// If the media was being released at this time

  public static func releasing() -> Selection<Bool, Objects.MediaTrend> {
    Selection<Bool, Objects.MediaTrend> {
      try $0.releasing()
    }
  }
  /// The episode number of the anime released on this day

  public static func episode() -> Selection<Int?, Objects.MediaTrend> {
    Selection<Int?, Objects.MediaTrend> {
      try $0.episode()
    }
  }
  /// The related media

  public static func media<T>(selection: Selection<T, Objects.Media?>) -> Selection<
    T, Objects.MediaTrend
  > {
    Selection<T, Objects.MediaTrend> {
      try $0.media(selection: selection)
    }
  }
}
extension Objects.MediaExternalLink {
  /// The id of the external link

  public static func id() -> Selection<Int, Objects.MediaExternalLink> {
    Selection<Int, Objects.MediaExternalLink> {
      try $0.id()
    }
  }
  /// The url of the external link or base url of link source

  public static func url() -> Selection<String?, Objects.MediaExternalLink> {
    Selection<String?, Objects.MediaExternalLink> {
      try $0.url()
    }
  }
  /// The links website site name

  public static func site() -> Selection<String, Objects.MediaExternalLink> {
    Selection<String, Objects.MediaExternalLink> {
      try $0.site()
    }
  }
  /// The links website site id

  public static func siteId() -> Selection<Int?, Objects.MediaExternalLink> {
    Selection<Int?, Objects.MediaExternalLink> {
      try $0.siteId()
    }
  }

  public static func type() -> Selection<Enums.ExternalLinkType?, Objects.MediaExternalLink> {
    Selection<Enums.ExternalLinkType?, Objects.MediaExternalLink> {
      try $0.type()
    }
  }
  /// Language the site content is in. See Staff language field for values.

  public static func language() -> Selection<String?, Objects.MediaExternalLink> {
    Selection<String?, Objects.MediaExternalLink> {
      try $0.language()
    }
  }

  public static func color() -> Selection<String?, Objects.MediaExternalLink> {
    Selection<String?, Objects.MediaExternalLink> {
      try $0.color()
    }
  }
  /// The icon image url of the site. Not available for all links. Transparent PNG 64x64

  public static func icon() -> Selection<String?, Objects.MediaExternalLink> {
    Selection<String?, Objects.MediaExternalLink> {
      try $0.icon()
    }
  }

  public static func notes() -> Selection<String?, Objects.MediaExternalLink> {
    Selection<String?, Objects.MediaExternalLink> {
      try $0.notes()
    }
  }

  public static func isDisabled() -> Selection<Bool?, Objects.MediaExternalLink> {
    Selection<Bool?, Objects.MediaExternalLink> {
      try $0.isDisabled()
    }
  }
}
extension Objects.MediaStreamingEpisode {
  /// Title of the episode

  public static func title() -> Selection<String?, Objects.MediaStreamingEpisode> {
    Selection<String?, Objects.MediaStreamingEpisode> {
      try $0.title()
    }
  }
  /// Url of episode image thumbnail

  public static func thumbnail() -> Selection<String?, Objects.MediaStreamingEpisode> {
    Selection<String?, Objects.MediaStreamingEpisode> {
      try $0.thumbnail()
    }
  }
  /// The url of the episode

  public static func url() -> Selection<String?, Objects.MediaStreamingEpisode> {
    Selection<String?, Objects.MediaStreamingEpisode> {
      try $0.url()
    }
  }
  /// The site location of the streaming episodes

  public static func site() -> Selection<String?, Objects.MediaStreamingEpisode> {
    Selection<String?, Objects.MediaStreamingEpisode> {
      try $0.site()
    }
  }
}
extension Objects.MediaRank {
  /// The id of the rank

  public static func id() -> Selection<Int, Objects.MediaRank> {
    Selection<Int, Objects.MediaRank> {
      try $0.id()
    }
  }
  /// The numerical rank of the media

  public static func rank() -> Selection<Int, Objects.MediaRank> {
    Selection<Int, Objects.MediaRank> {
      try $0.rank()
    }
  }
  /// The type of ranking

  public static func type() -> Selection<Enums.MediaRankType, Objects.MediaRank> {
    Selection<Enums.MediaRankType, Objects.MediaRank> {
      try $0.type()
    }
  }
  /// The format the media is ranked within

  public static func format() -> Selection<Enums.MediaFormat, Objects.MediaRank> {
    Selection<Enums.MediaFormat, Objects.MediaRank> {
      try $0.format()
    }
  }
  /// The year the media is ranked within

  public static func year() -> Selection<Int?, Objects.MediaRank> {
    Selection<Int?, Objects.MediaRank> {
      try $0.year()
    }
  }
  /// The season the media is ranked within

  public static func season() -> Selection<Enums.MediaSeason?, Objects.MediaRank> {
    Selection<Enums.MediaSeason?, Objects.MediaRank> {
      try $0.season()
    }
  }
  /// If the ranking is based on all time instead of a season/year

  public static func allTime() -> Selection<Bool?, Objects.MediaRank> {
    Selection<Bool?, Objects.MediaRank> {
      try $0.allTime()
    }
  }
  /// String that gives context to the ranking type and time span

  public static func context() -> Selection<String, Objects.MediaRank> {
    Selection<String, Objects.MediaRank> {
      try $0.context()
    }
  }
}
extension Objects.MediaList {
  /// The id of the list entry

  public static func id() -> Selection<Int, Objects.MediaList> {
    Selection<Int, Objects.MediaList> {
      try $0.id()
    }
  }
  /// The id of the user owner of the list entry

  public static func userId() -> Selection<Int, Objects.MediaList> {
    Selection<Int, Objects.MediaList> {
      try $0.userId()
    }
  }
  /// The id of the media

  public static func mediaId() -> Selection<Int, Objects.MediaList> {
    Selection<Int, Objects.MediaList> {
      try $0.mediaId()
    }
  }
  /// The watching/reading status

  public static func status() -> Selection<Enums.MediaListStatus?, Objects.MediaList> {
    Selection<Enums.MediaListStatus?, Objects.MediaList> {
      try $0.status()
    }
  }
  /// The score of the entry

  public static func score(format: OptionalArgument<Enums.ScoreFormat> = .init()) -> Selection<
    Double?, Objects.MediaList
  > {
    Selection<Double?, Objects.MediaList> {
      try $0.score(format: format)
    }
  }
  /// The amount of episodes/chapters consumed by the user

  public static func progress() -> Selection<Int?, Objects.MediaList> {
    Selection<Int?, Objects.MediaList> {
      try $0.progress()
    }
  }
  /// The amount of volumes read by the user

  public static func progressVolumes() -> Selection<Int?, Objects.MediaList> {
    Selection<Int?, Objects.MediaList> {
      try $0.progressVolumes()
    }
  }
  /// The amount of times the user has rewatched/read the media

  public static func `repeat`() -> Selection<Int?, Objects.MediaList> {
    Selection<Int?, Objects.MediaList> {
      try $0.`repeat`()
    }
  }
  /// Priority of planning

  public static func priority() -> Selection<Int?, Objects.MediaList> {
    Selection<Int?, Objects.MediaList> {
      try $0.priority()
    }
  }
  /// If the entry should only be visible to authenticated user

  public static func `private`() -> Selection<Bool?, Objects.MediaList> {
    Selection<Bool?, Objects.MediaList> {
      try $0.`private`()
    }
  }
  /// Text notes

  public static func notes() -> Selection<String?, Objects.MediaList> {
    Selection<String?, Objects.MediaList> {
      try $0.notes()
    }
  }
  /// If the entry shown be hidden from non-custom lists

  public static func hiddenFromStatusLists() -> Selection<Bool?, Objects.MediaList> {
    Selection<Bool?, Objects.MediaList> {
      try $0.hiddenFromStatusLists()
    }
  }
  /// Map of booleans for which custom lists the entry are in

  public static func customLists(asArray: OptionalArgument<Bool> = .init()) -> Selection<
    AnyCodable?, Objects.MediaList
  > {
    Selection<AnyCodable?, Objects.MediaList> {
      try $0.customLists(asArray: asArray)
    }
  }
  /// Map of advanced scores with name keys

  public static func advancedScores() -> Selection<AnyCodable?, Objects.MediaList> {
    Selection<AnyCodable?, Objects.MediaList> {
      try $0.advancedScores()
    }
  }
  /// When the entry was started by the user

  public static func startedAt<T>(selection: Selection<T, Objects.FuzzyDate?>) -> Selection<
    T, Objects.MediaList
  > {
    Selection<T, Objects.MediaList> {
      try $0.startedAt(selection: selection)
    }
  }
  /// When the entry was completed by the user

  public static func completedAt<T>(selection: Selection<T, Objects.FuzzyDate?>) -> Selection<
    T, Objects.MediaList
  > {
    Selection<T, Objects.MediaList> {
      try $0.completedAt(selection: selection)
    }
  }
  /// When the entry data was last updated

  public static func updatedAt() -> Selection<Int?, Objects.MediaList> {
    Selection<Int?, Objects.MediaList> {
      try $0.updatedAt()
    }
  }
  /// When the entry data was created

  public static func createdAt() -> Selection<Int?, Objects.MediaList> {
    Selection<Int?, Objects.MediaList> {
      try $0.createdAt()
    }
  }

  public static func media<T>(selection: Selection<T, Objects.Media?>) -> Selection<
    T, Objects.MediaList
  > {
    Selection<T, Objects.MediaList> {
      try $0.media(selection: selection)
    }
  }

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.MediaList
  > {
    Selection<T, Objects.MediaList> {
      try $0.user(selection: selection)
    }
  }
}
extension Objects.ReviewConnection {

  public static func edges<T>(selection: Selection<T, [Objects.ReviewEdge?]?>) -> Selection<
    T, Objects.ReviewConnection
  > {
    Selection<T, Objects.ReviewConnection> {
      try $0.edges(selection: selection)
    }
  }

  public static func nodes<T>(selection: Selection<T, [Objects.Review?]?>) -> Selection<
    T, Objects.ReviewConnection
  > {
    Selection<T, Objects.ReviewConnection> {
      try $0.nodes(selection: selection)
    }
  }
  /// The pagination information

  public static func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) -> Selection<
    T, Objects.ReviewConnection
  > {
    Selection<T, Objects.ReviewConnection> {
      try $0.pageInfo(selection: selection)
    }
  }
}
extension Objects.ReviewEdge {

  public static func node<T>(selection: Selection<T, Objects.Review?>) -> Selection<
    T, Objects.ReviewEdge
  > {
    Selection<T, Objects.ReviewEdge> {
      try $0.node(selection: selection)
    }
  }
}
extension Objects.Review {
  /// The id of the review

  public static func id() -> Selection<Int, Objects.Review> {
    Selection<Int, Objects.Review> {
      try $0.id()
    }
  }
  /// The id of the review's creator

  public static func userId() -> Selection<Int, Objects.Review> {
    Selection<Int, Objects.Review> {
      try $0.userId()
    }
  }
  /// The id of the review's media

  public static func mediaId() -> Selection<Int, Objects.Review> {
    Selection<Int, Objects.Review> {
      try $0.mediaId()
    }
  }
  /// For which type of media the review is for

  public static func mediaType() -> Selection<Enums.MediaType?, Objects.Review> {
    Selection<Enums.MediaType?, Objects.Review> {
      try $0.mediaType()
    }
  }
  /// A short summary of the review

  public static func summary() -> Selection<String?, Objects.Review> {
    Selection<String?, Objects.Review> {
      try $0.summary()
    }
  }
  /// The main review body text

  public static func body(asHtml: OptionalArgument<Bool> = .init()) -> Selection<
    String?, Objects.Review
  > {
    Selection<String?, Objects.Review> {
      try $0.body(asHtml: asHtml)
    }
  }
  /// The total user rating of the review

  public static func rating() -> Selection<Int?, Objects.Review> {
    Selection<Int?, Objects.Review> {
      try $0.rating()
    }
  }
  /// The amount of user ratings of the review

  public static func ratingAmount() -> Selection<Int?, Objects.Review> {
    Selection<Int?, Objects.Review> {
      try $0.ratingAmount()
    }
  }
  /// The rating of the review by currently authenticated user

  public static func userRating() -> Selection<Enums.ReviewRating?, Objects.Review> {
    Selection<Enums.ReviewRating?, Objects.Review> {
      try $0.userRating()
    }
  }
  /// The review score of the media

  public static func score() -> Selection<Int?, Objects.Review> {
    Selection<Int?, Objects.Review> {
      try $0.score()
    }
  }
  /// If the review is not yet publicly published and is only viewable by creator

  public static func `private`() -> Selection<Bool?, Objects.Review> {
    Selection<Bool?, Objects.Review> {
      try $0.`private`()
    }
  }
  /// The url for the review page on the AniList website

  public static func siteUrl() -> Selection<String?, Objects.Review> {
    Selection<String?, Objects.Review> {
      try $0.siteUrl()
    }
  }
  /// The time of the thread creation

  public static func createdAt() -> Selection<Int, Objects.Review> {
    Selection<Int, Objects.Review> {
      try $0.createdAt()
    }
  }
  /// The time of the thread last update

  public static func updatedAt() -> Selection<Int, Objects.Review> {
    Selection<Int, Objects.Review> {
      try $0.updatedAt()
    }
  }
  /// The creator of the review

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<T, Objects.Review>
  {
    Selection<T, Objects.Review> {
      try $0.user(selection: selection)
    }
  }
  /// The media the review is of

  public static func media<T>(selection: Selection<T, Objects.Media?>) -> Selection<
    T, Objects.Review
  > {
    Selection<T, Objects.Review> {
      try $0.media(selection: selection)
    }
  }
}
extension Objects.RecommendationConnection {

  public static func edges<T>(selection: Selection<T, [Objects.RecommendationEdge?]?>) -> Selection<
    T, Objects.RecommendationConnection
  > {
    Selection<T, Objects.RecommendationConnection> {
      try $0.edges(selection: selection)
    }
  }

  public static func nodes<T>(selection: Selection<T, [Objects.Recommendation?]?>) -> Selection<
    T, Objects.RecommendationConnection
  > {
    Selection<T, Objects.RecommendationConnection> {
      try $0.nodes(selection: selection)
    }
  }
  /// The pagination information

  public static func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) -> Selection<
    T, Objects.RecommendationConnection
  > {
    Selection<T, Objects.RecommendationConnection> {
      try $0.pageInfo(selection: selection)
    }
  }
}
extension Objects.RecommendationEdge {

  public static func node<T>(selection: Selection<T, Objects.Recommendation?>) -> Selection<
    T, Objects.RecommendationEdge
  > {
    Selection<T, Objects.RecommendationEdge> {
      try $0.node(selection: selection)
    }
  }
}
extension Objects.Recommendation {
  /// The id of the recommendation

  public static func id() -> Selection<Int, Objects.Recommendation> {
    Selection<Int, Objects.Recommendation> {
      try $0.id()
    }
  }
  /// Users rating of the recommendation

  public static func rating() -> Selection<Int?, Objects.Recommendation> {
    Selection<Int?, Objects.Recommendation> {
      try $0.rating()
    }
  }
  /// The rating of the recommendation by currently authenticated user

  public static func userRating() -> Selection<Enums.RecommendationRating?, Objects.Recommendation>
  {
    Selection<Enums.RecommendationRating?, Objects.Recommendation> {
      try $0.userRating()
    }
  }
  /// The media the recommendation is from

  public static func media<T>(selection: Selection<T, Objects.Media?>) -> Selection<
    T, Objects.Recommendation
  > {
    Selection<T, Objects.Recommendation> {
      try $0.media(selection: selection)
    }
  }
  /// The recommended media

  public static func mediaRecommendation<T>(selection: Selection<T, Objects.Media?>) -> Selection<
    T, Objects.Recommendation
  > {
    Selection<T, Objects.Recommendation> {
      try $0.mediaRecommendation(selection: selection)
    }
  }
  /// The user that first created the recommendation

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.Recommendation
  > {
    Selection<T, Objects.Recommendation> {
      try $0.user(selection: selection)
    }
  }
}
extension Objects.MediaStats {

  public static func scoreDistribution<T>(selection: Selection<T, [Objects.ScoreDistribution?]?>)
    -> Selection<T, Objects.MediaStats>
  {
    Selection<T, Objects.MediaStats> {
      try $0.scoreDistribution(selection: selection)
    }
  }

  public static func statusDistribution<T>(selection: Selection<T, [Objects.StatusDistribution?]?>)
    -> Selection<T, Objects.MediaStats>
  {
    Selection<T, Objects.MediaStats> {
      try $0.statusDistribution(selection: selection)
    }
  }

  @available(*, deprecated, message: "Replaced by MediaTrends")
  public static func airingProgression<T>(selection: Selection<T, [Objects.AiringProgression?]?>)
    -> Selection<T, Objects.MediaStats>
  {
    Selection<T, Objects.MediaStats> {
      try $0.airingProgression(selection: selection)
    }
  }
}
extension Objects.ScoreDistribution {

  public static func score() -> Selection<Int?, Objects.ScoreDistribution> {
    Selection<Int?, Objects.ScoreDistribution> {
      try $0.score()
    }
  }
  /// The amount of list entries with this score

  public static func amount() -> Selection<Int?, Objects.ScoreDistribution> {
    Selection<Int?, Objects.ScoreDistribution> {
      try $0.amount()
    }
  }
}
extension Objects.StatusDistribution {
  /// The day the activity took place (Unix timestamp)

  public static func status() -> Selection<Enums.MediaListStatus?, Objects.StatusDistribution> {
    Selection<Enums.MediaListStatus?, Objects.StatusDistribution> {
      try $0.status()
    }
  }
  /// The amount of entries with this status

  public static func amount() -> Selection<Int?, Objects.StatusDistribution> {
    Selection<Int?, Objects.StatusDistribution> {
      try $0.amount()
    }
  }
}
extension Objects.AiringProgression {
  /// The episode the stats were recorded at. .5 is the mid point between 2 episodes airing dates.

  public static func episode() -> Selection<Double?, Objects.AiringProgression> {
    Selection<Double?, Objects.AiringProgression> {
      try $0.episode()
    }
  }
  /// The average score for the media

  public static func score() -> Selection<Double?, Objects.AiringProgression> {
    Selection<Double?, Objects.AiringProgression> {
      try $0.score()
    }
  }
  /// The amount of users watching the anime

  public static func watching() -> Selection<Int?, Objects.AiringProgression> {
    Selection<Int?, Objects.AiringProgression> {
      try $0.watching()
    }
  }
}
extension Objects.UserStatisticTypes {

  public static func anime<T>(selection: Selection<T, Objects.UserStatistics?>) -> Selection<
    T, Objects.UserStatisticTypes
  > {
    Selection<T, Objects.UserStatisticTypes> {
      try $0.anime(selection: selection)
    }
  }

  public static func manga<T>(selection: Selection<T, Objects.UserStatistics?>) -> Selection<
    T, Objects.UserStatisticTypes
  > {
    Selection<T, Objects.UserStatisticTypes> {
      try $0.manga(selection: selection)
    }
  }
}
extension Objects.UserStatistics {

  public static func count() -> Selection<Int, Objects.UserStatistics> {
    Selection<Int, Objects.UserStatistics> {
      try $0.count()
    }
  }

  public static func meanScore() -> Selection<Double, Objects.UserStatistics> {
    Selection<Double, Objects.UserStatistics> {
      try $0.meanScore()
    }
  }

  public static func standardDeviation() -> Selection<Double, Objects.UserStatistics> {
    Selection<Double, Objects.UserStatistics> {
      try $0.standardDeviation()
    }
  }

  public static func minutesWatched() -> Selection<Int, Objects.UserStatistics> {
    Selection<Int, Objects.UserStatistics> {
      try $0.minutesWatched()
    }
  }

  public static func episodesWatched() -> Selection<Int, Objects.UserStatistics> {
    Selection<Int, Objects.UserStatistics> {
      try $0.episodesWatched()
    }
  }

  public static func chaptersRead() -> Selection<Int, Objects.UserStatistics> {
    Selection<Int, Objects.UserStatistics> {
      try $0.chaptersRead()
    }
  }

  public static func volumesRead() -> Selection<Int, Objects.UserStatistics> {
    Selection<Int, Objects.UserStatistics> {
      try $0.volumesRead()
    }
  }

  public static func formats<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserFormatStatistic?]?>
  ) -> Selection<T, Objects.UserStatistics> {
    Selection<T, Objects.UserStatistics> {
      try $0.formats(limit: limit, sort: sort, selection: selection)
    }
  }

  public static func statuses<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserStatusStatistic?]?>
  ) -> Selection<T, Objects.UserStatistics> {
    Selection<T, Objects.UserStatistics> {
      try $0.statuses(limit: limit, sort: sort, selection: selection)
    }
  }

  public static func scores<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserScoreStatistic?]?>
  ) -> Selection<T, Objects.UserStatistics> {
    Selection<T, Objects.UserStatistics> {
      try $0.scores(limit: limit, sort: sort, selection: selection)
    }
  }

  public static func lengths<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserLengthStatistic?]?>
  ) -> Selection<T, Objects.UserStatistics> {
    Selection<T, Objects.UserStatistics> {
      try $0.lengths(limit: limit, sort: sort, selection: selection)
    }
  }

  public static func releaseYears<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserReleaseYearStatistic?]?>
  ) -> Selection<T, Objects.UserStatistics> {
    Selection<T, Objects.UserStatistics> {
      try $0.releaseYears(limit: limit, sort: sort, selection: selection)
    }
  }

  public static func startYears<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserStartYearStatistic?]?>
  ) -> Selection<T, Objects.UserStatistics> {
    Selection<T, Objects.UserStatistics> {
      try $0.startYears(limit: limit, sort: sort, selection: selection)
    }
  }

  public static func genres<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserGenreStatistic?]?>
  ) -> Selection<T, Objects.UserStatistics> {
    Selection<T, Objects.UserStatistics> {
      try $0.genres(limit: limit, sort: sort, selection: selection)
    }
  }

  public static func tags<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserTagStatistic?]?>
  ) -> Selection<T, Objects.UserStatistics> {
    Selection<T, Objects.UserStatistics> {
      try $0.tags(limit: limit, sort: sort, selection: selection)
    }
  }

  public static func countries<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserCountryStatistic?]?>
  ) -> Selection<T, Objects.UserStatistics> {
    Selection<T, Objects.UserStatistics> {
      try $0.countries(limit: limit, sort: sort, selection: selection)
    }
  }

  public static func voiceActors<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserVoiceActorStatistic?]?>
  ) -> Selection<T, Objects.UserStatistics> {
    Selection<T, Objects.UserStatistics> {
      try $0.voiceActors(limit: limit, sort: sort, selection: selection)
    }
  }

  public static func staff<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserStaffStatistic?]?>
  ) -> Selection<T, Objects.UserStatistics> {
    Selection<T, Objects.UserStatistics> {
      try $0.staff(limit: limit, sort: sort, selection: selection)
    }
  }

  public static func studios<T>(
    limit: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserStatisticsSort>]> = .init(),
    selection: Selection<T, [Objects.UserStudioStatistic?]?>
  ) -> Selection<T, Objects.UserStatistics> {
    Selection<T, Objects.UserStatistics> {
      try $0.studios(limit: limit, sort: sort, selection: selection)
    }
  }
}
extension Objects.UserFormatStatistic {

  public static func count() -> Selection<Int, Objects.UserFormatStatistic> {
    Selection<Int, Objects.UserFormatStatistic> {
      try $0.count()
    }
  }

  public static func meanScore() -> Selection<Double, Objects.UserFormatStatistic> {
    Selection<Double, Objects.UserFormatStatistic> {
      try $0.meanScore()
    }
  }

  public static func minutesWatched() -> Selection<Int, Objects.UserFormatStatistic> {
    Selection<Int, Objects.UserFormatStatistic> {
      try $0.minutesWatched()
    }
  }

  public static func chaptersRead() -> Selection<Int, Objects.UserFormatStatistic> {
    Selection<Int, Objects.UserFormatStatistic> {
      try $0.chaptersRead()
    }
  }

  public static func mediaIds() -> Selection<[Int?], Objects.UserFormatStatistic> {
    Selection<[Int?], Objects.UserFormatStatistic> {
      try $0.mediaIds()
    }
  }

  public static func format() -> Selection<Enums.MediaFormat?, Objects.UserFormatStatistic> {
    Selection<Enums.MediaFormat?, Objects.UserFormatStatistic> {
      try $0.format()
    }
  }
}
extension Objects.UserStatusStatistic {

  public static func count() -> Selection<Int, Objects.UserStatusStatistic> {
    Selection<Int, Objects.UserStatusStatistic> {
      try $0.count()
    }
  }

  public static func meanScore() -> Selection<Double, Objects.UserStatusStatistic> {
    Selection<Double, Objects.UserStatusStatistic> {
      try $0.meanScore()
    }
  }

  public static func minutesWatched() -> Selection<Int, Objects.UserStatusStatistic> {
    Selection<Int, Objects.UserStatusStatistic> {
      try $0.minutesWatched()
    }
  }

  public static func chaptersRead() -> Selection<Int, Objects.UserStatusStatistic> {
    Selection<Int, Objects.UserStatusStatistic> {
      try $0.chaptersRead()
    }
  }

  public static func mediaIds() -> Selection<[Int?], Objects.UserStatusStatistic> {
    Selection<[Int?], Objects.UserStatusStatistic> {
      try $0.mediaIds()
    }
  }

  public static func status() -> Selection<Enums.MediaListStatus?, Objects.UserStatusStatistic> {
    Selection<Enums.MediaListStatus?, Objects.UserStatusStatistic> {
      try $0.status()
    }
  }
}
extension Objects.UserScoreStatistic {

  public static func count() -> Selection<Int, Objects.UserScoreStatistic> {
    Selection<Int, Objects.UserScoreStatistic> {
      try $0.count()
    }
  }

  public static func meanScore() -> Selection<Double, Objects.UserScoreStatistic> {
    Selection<Double, Objects.UserScoreStatistic> {
      try $0.meanScore()
    }
  }

  public static func minutesWatched() -> Selection<Int, Objects.UserScoreStatistic> {
    Selection<Int, Objects.UserScoreStatistic> {
      try $0.minutesWatched()
    }
  }

  public static func chaptersRead() -> Selection<Int, Objects.UserScoreStatistic> {
    Selection<Int, Objects.UserScoreStatistic> {
      try $0.chaptersRead()
    }
  }

  public static func mediaIds() -> Selection<[Int?], Objects.UserScoreStatistic> {
    Selection<[Int?], Objects.UserScoreStatistic> {
      try $0.mediaIds()
    }
  }

  public static func score() -> Selection<Int?, Objects.UserScoreStatistic> {
    Selection<Int?, Objects.UserScoreStatistic> {
      try $0.score()
    }
  }
}
extension Objects.UserLengthStatistic {

  public static func count() -> Selection<Int, Objects.UserLengthStatistic> {
    Selection<Int, Objects.UserLengthStatistic> {
      try $0.count()
    }
  }

  public static func meanScore() -> Selection<Double, Objects.UserLengthStatistic> {
    Selection<Double, Objects.UserLengthStatistic> {
      try $0.meanScore()
    }
  }

  public static func minutesWatched() -> Selection<Int, Objects.UserLengthStatistic> {
    Selection<Int, Objects.UserLengthStatistic> {
      try $0.minutesWatched()
    }
  }

  public static func chaptersRead() -> Selection<Int, Objects.UserLengthStatistic> {
    Selection<Int, Objects.UserLengthStatistic> {
      try $0.chaptersRead()
    }
  }

  public static func mediaIds() -> Selection<[Int?], Objects.UserLengthStatistic> {
    Selection<[Int?], Objects.UserLengthStatistic> {
      try $0.mediaIds()
    }
  }

  public static func length() -> Selection<String?, Objects.UserLengthStatistic> {
    Selection<String?, Objects.UserLengthStatistic> {
      try $0.length()
    }
  }
}
extension Objects.UserReleaseYearStatistic {

  public static func count() -> Selection<Int, Objects.UserReleaseYearStatistic> {
    Selection<Int, Objects.UserReleaseYearStatistic> {
      try $0.count()
    }
  }

  public static func meanScore() -> Selection<Double, Objects.UserReleaseYearStatistic> {
    Selection<Double, Objects.UserReleaseYearStatistic> {
      try $0.meanScore()
    }
  }

  public static func minutesWatched() -> Selection<Int, Objects.UserReleaseYearStatistic> {
    Selection<Int, Objects.UserReleaseYearStatistic> {
      try $0.minutesWatched()
    }
  }

  public static func chaptersRead() -> Selection<Int, Objects.UserReleaseYearStatistic> {
    Selection<Int, Objects.UserReleaseYearStatistic> {
      try $0.chaptersRead()
    }
  }

  public static func mediaIds() -> Selection<[Int?], Objects.UserReleaseYearStatistic> {
    Selection<[Int?], Objects.UserReleaseYearStatistic> {
      try $0.mediaIds()
    }
  }

  public static func releaseYear() -> Selection<Int?, Objects.UserReleaseYearStatistic> {
    Selection<Int?, Objects.UserReleaseYearStatistic> {
      try $0.releaseYear()
    }
  }
}
extension Objects.UserStartYearStatistic {

  public static func count() -> Selection<Int, Objects.UserStartYearStatistic> {
    Selection<Int, Objects.UserStartYearStatistic> {
      try $0.count()
    }
  }

  public static func meanScore() -> Selection<Double, Objects.UserStartYearStatistic> {
    Selection<Double, Objects.UserStartYearStatistic> {
      try $0.meanScore()
    }
  }

  public static func minutesWatched() -> Selection<Int, Objects.UserStartYearStatistic> {
    Selection<Int, Objects.UserStartYearStatistic> {
      try $0.minutesWatched()
    }
  }

  public static func chaptersRead() -> Selection<Int, Objects.UserStartYearStatistic> {
    Selection<Int, Objects.UserStartYearStatistic> {
      try $0.chaptersRead()
    }
  }

  public static func mediaIds() -> Selection<[Int?], Objects.UserStartYearStatistic> {
    Selection<[Int?], Objects.UserStartYearStatistic> {
      try $0.mediaIds()
    }
  }

  public static func startYear() -> Selection<Int?, Objects.UserStartYearStatistic> {
    Selection<Int?, Objects.UserStartYearStatistic> {
      try $0.startYear()
    }
  }
}
extension Objects.UserGenreStatistic {

  public static func count() -> Selection<Int, Objects.UserGenreStatistic> {
    Selection<Int, Objects.UserGenreStatistic> {
      try $0.count()
    }
  }

  public static func meanScore() -> Selection<Double, Objects.UserGenreStatistic> {
    Selection<Double, Objects.UserGenreStatistic> {
      try $0.meanScore()
    }
  }

  public static func minutesWatched() -> Selection<Int, Objects.UserGenreStatistic> {
    Selection<Int, Objects.UserGenreStatistic> {
      try $0.minutesWatched()
    }
  }

  public static func chaptersRead() -> Selection<Int, Objects.UserGenreStatistic> {
    Selection<Int, Objects.UserGenreStatistic> {
      try $0.chaptersRead()
    }
  }

  public static func mediaIds() -> Selection<[Int?], Objects.UserGenreStatistic> {
    Selection<[Int?], Objects.UserGenreStatistic> {
      try $0.mediaIds()
    }
  }

  public static func genre() -> Selection<String?, Objects.UserGenreStatistic> {
    Selection<String?, Objects.UserGenreStatistic> {
      try $0.genre()
    }
  }
}
extension Objects.UserTagStatistic {

  public static func count() -> Selection<Int, Objects.UserTagStatistic> {
    Selection<Int, Objects.UserTagStatistic> {
      try $0.count()
    }
  }

  public static func meanScore() -> Selection<Double, Objects.UserTagStatistic> {
    Selection<Double, Objects.UserTagStatistic> {
      try $0.meanScore()
    }
  }

  public static func minutesWatched() -> Selection<Int, Objects.UserTagStatistic> {
    Selection<Int, Objects.UserTagStatistic> {
      try $0.minutesWatched()
    }
  }

  public static func chaptersRead() -> Selection<Int, Objects.UserTagStatistic> {
    Selection<Int, Objects.UserTagStatistic> {
      try $0.chaptersRead()
    }
  }

  public static func mediaIds() -> Selection<[Int?], Objects.UserTagStatistic> {
    Selection<[Int?], Objects.UserTagStatistic> {
      try $0.mediaIds()
    }
  }

  public static func tag<T>(selection: Selection<T, Objects.MediaTag?>) -> Selection<
    T, Objects.UserTagStatistic
  > {
    Selection<T, Objects.UserTagStatistic> {
      try $0.tag(selection: selection)
    }
  }
}
extension Objects.UserCountryStatistic {

  public static func count() -> Selection<Int, Objects.UserCountryStatistic> {
    Selection<Int, Objects.UserCountryStatistic> {
      try $0.count()
    }
  }

  public static func meanScore() -> Selection<Double, Objects.UserCountryStatistic> {
    Selection<Double, Objects.UserCountryStatistic> {
      try $0.meanScore()
    }
  }

  public static func minutesWatched() -> Selection<Int, Objects.UserCountryStatistic> {
    Selection<Int, Objects.UserCountryStatistic> {
      try $0.minutesWatched()
    }
  }

  public static func chaptersRead() -> Selection<Int, Objects.UserCountryStatistic> {
    Selection<Int, Objects.UserCountryStatistic> {
      try $0.chaptersRead()
    }
  }

  public static func mediaIds() -> Selection<[Int?], Objects.UserCountryStatistic> {
    Selection<[Int?], Objects.UserCountryStatistic> {
      try $0.mediaIds()
    }
  }

  public static func country() -> Selection<AnyCodable?, Objects.UserCountryStatistic> {
    Selection<AnyCodable?, Objects.UserCountryStatistic> {
      try $0.country()
    }
  }
}
extension Objects.UserVoiceActorStatistic {

  public static func count() -> Selection<Int, Objects.UserVoiceActorStatistic> {
    Selection<Int, Objects.UserVoiceActorStatistic> {
      try $0.count()
    }
  }

  public static func meanScore() -> Selection<Double, Objects.UserVoiceActorStatistic> {
    Selection<Double, Objects.UserVoiceActorStatistic> {
      try $0.meanScore()
    }
  }

  public static func minutesWatched() -> Selection<Int, Objects.UserVoiceActorStatistic> {
    Selection<Int, Objects.UserVoiceActorStatistic> {
      try $0.minutesWatched()
    }
  }

  public static func chaptersRead() -> Selection<Int, Objects.UserVoiceActorStatistic> {
    Selection<Int, Objects.UserVoiceActorStatistic> {
      try $0.chaptersRead()
    }
  }

  public static func mediaIds() -> Selection<[Int?], Objects.UserVoiceActorStatistic> {
    Selection<[Int?], Objects.UserVoiceActorStatistic> {
      try $0.mediaIds()
    }
  }

  public static func voiceActor<T>(selection: Selection<T, Objects.Staff?>) -> Selection<
    T, Objects.UserVoiceActorStatistic
  > {
    Selection<T, Objects.UserVoiceActorStatistic> {
      try $0.voiceActor(selection: selection)
    }
  }

  public static func characterIds() -> Selection<[Int?], Objects.UserVoiceActorStatistic> {
    Selection<[Int?], Objects.UserVoiceActorStatistic> {
      try $0.characterIds()
    }
  }
}
extension Objects.UserStaffStatistic {

  public static func count() -> Selection<Int, Objects.UserStaffStatistic> {
    Selection<Int, Objects.UserStaffStatistic> {
      try $0.count()
    }
  }

  public static func meanScore() -> Selection<Double, Objects.UserStaffStatistic> {
    Selection<Double, Objects.UserStaffStatistic> {
      try $0.meanScore()
    }
  }

  public static func minutesWatched() -> Selection<Int, Objects.UserStaffStatistic> {
    Selection<Int, Objects.UserStaffStatistic> {
      try $0.minutesWatched()
    }
  }

  public static func chaptersRead() -> Selection<Int, Objects.UserStaffStatistic> {
    Selection<Int, Objects.UserStaffStatistic> {
      try $0.chaptersRead()
    }
  }

  public static func mediaIds() -> Selection<[Int?], Objects.UserStaffStatistic> {
    Selection<[Int?], Objects.UserStaffStatistic> {
      try $0.mediaIds()
    }
  }

  public static func staff<T>(selection: Selection<T, Objects.Staff?>) -> Selection<
    T, Objects.UserStaffStatistic
  > {
    Selection<T, Objects.UserStaffStatistic> {
      try $0.staff(selection: selection)
    }
  }
}
extension Objects.UserStudioStatistic {

  public static func count() -> Selection<Int, Objects.UserStudioStatistic> {
    Selection<Int, Objects.UserStudioStatistic> {
      try $0.count()
    }
  }

  public static func meanScore() -> Selection<Double, Objects.UserStudioStatistic> {
    Selection<Double, Objects.UserStudioStatistic> {
      try $0.meanScore()
    }
  }

  public static func minutesWatched() -> Selection<Int, Objects.UserStudioStatistic> {
    Selection<Int, Objects.UserStudioStatistic> {
      try $0.minutesWatched()
    }
  }

  public static func chaptersRead() -> Selection<Int, Objects.UserStudioStatistic> {
    Selection<Int, Objects.UserStudioStatistic> {
      try $0.chaptersRead()
    }
  }

  public static func mediaIds() -> Selection<[Int?], Objects.UserStudioStatistic> {
    Selection<[Int?], Objects.UserStudioStatistic> {
      try $0.mediaIds()
    }
  }

  public static func studio<T>(selection: Selection<T, Objects.Studio?>) -> Selection<
    T, Objects.UserStudioStatistic
  > {
    Selection<T, Objects.UserStudioStatistic> {
      try $0.studio(selection: selection)
    }
  }
}
extension Objects.UserStats {
  /// The amount of anime the user has watched in minutes

  public static func watchedTime() -> Selection<Int?, Objects.UserStats> {
    Selection<Int?, Objects.UserStats> {
      try $0.watchedTime()
    }
  }
  /// The amount of manga chapters the user has read

  public static func chaptersRead() -> Selection<Int?, Objects.UserStats> {
    Selection<Int?, Objects.UserStats> {
      try $0.chaptersRead()
    }
  }

  public static func activityHistory<T>(selection: Selection<T, [Objects.UserActivityHistory?]?>)
    -> Selection<T, Objects.UserStats>
  {
    Selection<T, Objects.UserStats> {
      try $0.activityHistory(selection: selection)
    }
  }

  public static func animeStatusDistribution<T>(
    selection: Selection<T, [Objects.StatusDistribution?]?>
  ) -> Selection<T, Objects.UserStats> {
    Selection<T, Objects.UserStats> {
      try $0.animeStatusDistribution(selection: selection)
    }
  }

  public static func mangaStatusDistribution<T>(
    selection: Selection<T, [Objects.StatusDistribution?]?>
  ) -> Selection<T, Objects.UserStats> {
    Selection<T, Objects.UserStats> {
      try $0.mangaStatusDistribution(selection: selection)
    }
  }

  public static func animeScoreDistribution<T>(
    selection: Selection<T, [Objects.ScoreDistribution?]?>
  ) -> Selection<T, Objects.UserStats> {
    Selection<T, Objects.UserStats> {
      try $0.animeScoreDistribution(selection: selection)
    }
  }

  public static func mangaScoreDistribution<T>(
    selection: Selection<T, [Objects.ScoreDistribution?]?>
  ) -> Selection<T, Objects.UserStats> {
    Selection<T, Objects.UserStats> {
      try $0.mangaScoreDistribution(selection: selection)
    }
  }

  public static func animeListScores<T>(selection: Selection<T, Objects.ListScoreStats?>)
    -> Selection<T, Objects.UserStats>
  {
    Selection<T, Objects.UserStats> {
      try $0.animeListScores(selection: selection)
    }
  }

  public static func mangaListScores<T>(selection: Selection<T, Objects.ListScoreStats?>)
    -> Selection<T, Objects.UserStats>
  {
    Selection<T, Objects.UserStats> {
      try $0.mangaListScores(selection: selection)
    }
  }

  public static func favouredGenresOverview<T>(selection: Selection<T, [Objects.GenreStats?]?>)
    -> Selection<T, Objects.UserStats>
  {
    Selection<T, Objects.UserStats> {
      try $0.favouredGenresOverview(selection: selection)
    }
  }

  public static func favouredGenres<T>(selection: Selection<T, [Objects.GenreStats?]?>)
    -> Selection<T, Objects.UserStats>
  {
    Selection<T, Objects.UserStats> {
      try $0.favouredGenres(selection: selection)
    }
  }

  public static func favouredTags<T>(selection: Selection<T, [Objects.TagStats?]?>) -> Selection<
    T, Objects.UserStats
  > {
    Selection<T, Objects.UserStats> {
      try $0.favouredTags(selection: selection)
    }
  }

  public static func favouredActors<T>(selection: Selection<T, [Objects.StaffStats?]?>)
    -> Selection<T, Objects.UserStats>
  {
    Selection<T, Objects.UserStats> {
      try $0.favouredActors(selection: selection)
    }
  }

  public static func favouredStaff<T>(selection: Selection<T, [Objects.StaffStats?]?>) -> Selection<
    T, Objects.UserStats
  > {
    Selection<T, Objects.UserStats> {
      try $0.favouredStaff(selection: selection)
    }
  }

  public static func favouredStudios<T>(selection: Selection<T, [Objects.StudioStats?]?>)
    -> Selection<T, Objects.UserStats>
  {
    Selection<T, Objects.UserStats> {
      try $0.favouredStudios(selection: selection)
    }
  }

  public static func favouredYears<T>(selection: Selection<T, [Objects.YearStats?]?>) -> Selection<
    T, Objects.UserStats
  > {
    Selection<T, Objects.UserStats> {
      try $0.favouredYears(selection: selection)
    }
  }

  public static func favouredFormats<T>(selection: Selection<T, [Objects.FormatStats?]?>)
    -> Selection<T, Objects.UserStats>
  {
    Selection<T, Objects.UserStats> {
      try $0.favouredFormats(selection: selection)
    }
  }
}
extension Objects.UserActivityHistory {
  /// The day the activity took place (Unix timestamp)

  public static func date() -> Selection<Int?, Objects.UserActivityHistory> {
    Selection<Int?, Objects.UserActivityHistory> {
      try $0.date()
    }
  }
  /// The amount of activity on the day

  public static func amount() -> Selection<Int?, Objects.UserActivityHistory> {
    Selection<Int?, Objects.UserActivityHistory> {
      try $0.amount()
    }
  }
  /// The level of activity represented on a 1-10 scale

  public static func level() -> Selection<Int?, Objects.UserActivityHistory> {
    Selection<Int?, Objects.UserActivityHistory> {
      try $0.level()
    }
  }
}
extension Objects.ListScoreStats {

  public static func meanScore() -> Selection<Int?, Objects.ListScoreStats> {
    Selection<Int?, Objects.ListScoreStats> {
      try $0.meanScore()
    }
  }

  public static func standardDeviation() -> Selection<Int?, Objects.ListScoreStats> {
    Selection<Int?, Objects.ListScoreStats> {
      try $0.standardDeviation()
    }
  }
}
extension Objects.GenreStats {

  public static func genre() -> Selection<String?, Objects.GenreStats> {
    Selection<String?, Objects.GenreStats> {
      try $0.genre()
    }
  }

  public static func amount() -> Selection<Int?, Objects.GenreStats> {
    Selection<Int?, Objects.GenreStats> {
      try $0.amount()
    }
  }

  public static func meanScore() -> Selection<Int?, Objects.GenreStats> {
    Selection<Int?, Objects.GenreStats> {
      try $0.meanScore()
    }
  }
  /// The amount of time in minutes the genre has been watched by the user

  public static func timeWatched() -> Selection<Int?, Objects.GenreStats> {
    Selection<Int?, Objects.GenreStats> {
      try $0.timeWatched()
    }
  }
}
extension Objects.TagStats {

  public static func tag<T>(selection: Selection<T, Objects.MediaTag?>) -> Selection<
    T, Objects.TagStats
  > {
    Selection<T, Objects.TagStats> {
      try $0.tag(selection: selection)
    }
  }

  public static func amount() -> Selection<Int?, Objects.TagStats> {
    Selection<Int?, Objects.TagStats> {
      try $0.amount()
    }
  }

  public static func meanScore() -> Selection<Int?, Objects.TagStats> {
    Selection<Int?, Objects.TagStats> {
      try $0.meanScore()
    }
  }
  /// The amount of time in minutes the tag has been watched by the user

  public static func timeWatched() -> Selection<Int?, Objects.TagStats> {
    Selection<Int?, Objects.TagStats> {
      try $0.timeWatched()
    }
  }
}
extension Objects.StaffStats {

  public static func staff<T>(selection: Selection<T, Objects.Staff?>) -> Selection<
    T, Objects.StaffStats
  > {
    Selection<T, Objects.StaffStats> {
      try $0.staff(selection: selection)
    }
  }

  public static func amount() -> Selection<Int?, Objects.StaffStats> {
    Selection<Int?, Objects.StaffStats> {
      try $0.amount()
    }
  }

  public static func meanScore() -> Selection<Int?, Objects.StaffStats> {
    Selection<Int?, Objects.StaffStats> {
      try $0.meanScore()
    }
  }
  /// The amount of time in minutes the staff member has been watched by the user

  public static func timeWatched() -> Selection<Int?, Objects.StaffStats> {
    Selection<Int?, Objects.StaffStats> {
      try $0.timeWatched()
    }
  }
}
extension Objects.StudioStats {

  public static func studio<T>(selection: Selection<T, Objects.Studio?>) -> Selection<
    T, Objects.StudioStats
  > {
    Selection<T, Objects.StudioStats> {
      try $0.studio(selection: selection)
    }
  }

  public static func amount() -> Selection<Int?, Objects.StudioStats> {
    Selection<Int?, Objects.StudioStats> {
      try $0.amount()
    }
  }

  public static func meanScore() -> Selection<Int?, Objects.StudioStats> {
    Selection<Int?, Objects.StudioStats> {
      try $0.meanScore()
    }
  }
  /// The amount of time in minutes the studio's works have been watched by the user

  public static func timeWatched() -> Selection<Int?, Objects.StudioStats> {
    Selection<Int?, Objects.StudioStats> {
      try $0.timeWatched()
    }
  }
}
extension Objects.YearStats {

  public static func year() -> Selection<Int?, Objects.YearStats> {
    Selection<Int?, Objects.YearStats> {
      try $0.year()
    }
  }

  public static func amount() -> Selection<Int?, Objects.YearStats> {
    Selection<Int?, Objects.YearStats> {
      try $0.amount()
    }
  }

  public static func meanScore() -> Selection<Int?, Objects.YearStats> {
    Selection<Int?, Objects.YearStats> {
      try $0.meanScore()
    }
  }
}
extension Objects.FormatStats {

  public static func format() -> Selection<Enums.MediaFormat?, Objects.FormatStats> {
    Selection<Enums.MediaFormat?, Objects.FormatStats> {
      try $0.format()
    }
  }

  public static func amount() -> Selection<Int?, Objects.FormatStats> {
    Selection<Int?, Objects.FormatStats> {
      try $0.amount()
    }
  }
}
extension Objects.UserPreviousName {
  /// A previous name of the user.

  public static func name() -> Selection<String?, Objects.UserPreviousName> {
    Selection<String?, Objects.UserPreviousName> {
      try $0.name()
    }
  }
  /// When the user first changed from this name.

  public static func createdAt() -> Selection<Int?, Objects.UserPreviousName> {
    Selection<Int?, Objects.UserPreviousName> {
      try $0.createdAt()
    }
  }
  /// When the user most recently changed from this name.

  public static func updatedAt() -> Selection<Int?, Objects.UserPreviousName> {
    Selection<Int?, Objects.UserPreviousName> {
      try $0.updatedAt()
    }
  }
}
extension Objects.AiringNotification {
  /// The id of the Notification

  public static func id() -> Selection<Int, Objects.AiringNotification> {
    Selection<Int, Objects.AiringNotification> {
      try $0.id()
    }
  }
  /// The type of notification

  public static func type() -> Selection<Enums.NotificationType?, Objects.AiringNotification> {
    Selection<Enums.NotificationType?, Objects.AiringNotification> {
      try $0.type()
    }
  }
  /// The id of the aired anime

  public static func animeId() -> Selection<Int, Objects.AiringNotification> {
    Selection<Int, Objects.AiringNotification> {
      try $0.animeId()
    }
  }
  /// The episode number that just aired

  public static func episode() -> Selection<Int, Objects.AiringNotification> {
    Selection<Int, Objects.AiringNotification> {
      try $0.episode()
    }
  }
  /// The notification context text

  public static func contexts() -> Selection<[String?]?, Objects.AiringNotification> {
    Selection<[String?]?, Objects.AiringNotification> {
      try $0.contexts()
    }
  }
  /// The time the notification was created at

  public static func createdAt() -> Selection<Int?, Objects.AiringNotification> {
    Selection<Int?, Objects.AiringNotification> {
      try $0.createdAt()
    }
  }
  /// The associated media of the airing schedule

  public static func media<T>(selection: Selection<T, Objects.Media?>) -> Selection<
    T, Objects.AiringNotification
  > {
    Selection<T, Objects.AiringNotification> {
      try $0.media(selection: selection)
    }
  }
}
extension Objects.FollowingNotification {
  /// The id of the Notification

  public static func id() -> Selection<Int, Objects.FollowingNotification> {
    Selection<Int, Objects.FollowingNotification> {
      try $0.id()
    }
  }
  /// The id of the user who followed the authenticated user

  public static func userId() -> Selection<Int, Objects.FollowingNotification> {
    Selection<Int, Objects.FollowingNotification> {
      try $0.userId()
    }
  }
  /// The type of notification

  public static func type() -> Selection<Enums.NotificationType?, Objects.FollowingNotification> {
    Selection<Enums.NotificationType?, Objects.FollowingNotification> {
      try $0.type()
    }
  }
  /// The notification context text

  public static func context() -> Selection<String?, Objects.FollowingNotification> {
    Selection<String?, Objects.FollowingNotification> {
      try $0.context()
    }
  }
  /// The time the notification was created at

  public static func createdAt() -> Selection<Int?, Objects.FollowingNotification> {
    Selection<Int?, Objects.FollowingNotification> {
      try $0.createdAt()
    }
  }
  /// The liked activity

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.FollowingNotification
  > {
    Selection<T, Objects.FollowingNotification> {
      try $0.user(selection: selection)
    }
  }
}
extension Objects.ActivityMessageNotification {
  /// The id of the Notification

  public static func id() -> Selection<Int, Objects.ActivityMessageNotification> {
    Selection<Int, Objects.ActivityMessageNotification> {
      try $0.id()
    }
  }
  /// The if of the user who send the message

  public static func userId() -> Selection<Int, Objects.ActivityMessageNotification> {
    Selection<Int, Objects.ActivityMessageNotification> {
      try $0.userId()
    }
  }
  /// The type of notification

  public static func type() -> Selection<
    Enums.NotificationType?, Objects.ActivityMessageNotification
  > {
    Selection<Enums.NotificationType?, Objects.ActivityMessageNotification> {
      try $0.type()
    }
  }
  /// The id of the activity message

  public static func activityId() -> Selection<Int, Objects.ActivityMessageNotification> {
    Selection<Int, Objects.ActivityMessageNotification> {
      try $0.activityId()
    }
  }
  /// The notification context text

  public static func context() -> Selection<String?, Objects.ActivityMessageNotification> {
    Selection<String?, Objects.ActivityMessageNotification> {
      try $0.context()
    }
  }
  /// The time the notification was created at

  public static func createdAt() -> Selection<Int?, Objects.ActivityMessageNotification> {
    Selection<Int?, Objects.ActivityMessageNotification> {
      try $0.createdAt()
    }
  }
  /// The message activity

  public static func message<T>(selection: Selection<T, Objects.MessageActivity?>) -> Selection<
    T, Objects.ActivityMessageNotification
  > {
    Selection<T, Objects.ActivityMessageNotification> {
      try $0.message(selection: selection)
    }
  }
  /// The user who sent the message

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.ActivityMessageNotification
  > {
    Selection<T, Objects.ActivityMessageNotification> {
      try $0.user(selection: selection)
    }
  }
}
extension Objects.MessageActivity {
  /// The id of the activity

  public static func id() -> Selection<Int, Objects.MessageActivity> {
    Selection<Int, Objects.MessageActivity> {
      try $0.id()
    }
  }
  /// The user id of the activity's recipient

  public static func recipientId() -> Selection<Int?, Objects.MessageActivity> {
    Selection<Int?, Objects.MessageActivity> {
      try $0.recipientId()
    }
  }
  /// The user id of the activity's sender

  public static func messengerId() -> Selection<Int?, Objects.MessageActivity> {
    Selection<Int?, Objects.MessageActivity> {
      try $0.messengerId()
    }
  }
  /// The type of the activity

  public static func type() -> Selection<Enums.ActivityType?, Objects.MessageActivity> {
    Selection<Enums.ActivityType?, Objects.MessageActivity> {
      try $0.type()
    }
  }
  /// The number of activity replies

  public static func replyCount() -> Selection<Int, Objects.MessageActivity> {
    Selection<Int, Objects.MessageActivity> {
      try $0.replyCount()
    }
  }
  /// The message text (Markdown)

  public static func message(asHtml: OptionalArgument<Bool> = .init()) -> Selection<
    String?, Objects.MessageActivity
  > {
    Selection<String?, Objects.MessageActivity> {
      try $0.message(asHtml: asHtml)
    }
  }
  /// If the activity is locked and can receive replies

  public static func isLocked() -> Selection<Bool?, Objects.MessageActivity> {
    Selection<Bool?, Objects.MessageActivity> {
      try $0.isLocked()
    }
  }
  /// If the currently authenticated user is subscribed to the activity

  public static func isSubscribed() -> Selection<Bool?, Objects.MessageActivity> {
    Selection<Bool?, Objects.MessageActivity> {
      try $0.isSubscribed()
    }
  }
  /// The amount of likes the activity has

  public static func likeCount() -> Selection<Int, Objects.MessageActivity> {
    Selection<Int, Objects.MessageActivity> {
      try $0.likeCount()
    }
  }
  /// If the currently authenticated user liked the activity

  public static func isLiked() -> Selection<Bool?, Objects.MessageActivity> {
    Selection<Bool?, Objects.MessageActivity> {
      try $0.isLiked()
    }
  }
  /// If the message is private and only viewable to the sender and recipients

  public static func isPrivate() -> Selection<Bool?, Objects.MessageActivity> {
    Selection<Bool?, Objects.MessageActivity> {
      try $0.isPrivate()
    }
  }
  /// The url for the activity page on the AniList website

  public static func siteUrl() -> Selection<String?, Objects.MessageActivity> {
    Selection<String?, Objects.MessageActivity> {
      try $0.siteUrl()
    }
  }
  /// The time the activity was created at

  public static func createdAt() -> Selection<Int, Objects.MessageActivity> {
    Selection<Int, Objects.MessageActivity> {
      try $0.createdAt()
    }
  }
  /// The user who the activity message was sent to

  public static func recipient<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.MessageActivity
  > {
    Selection<T, Objects.MessageActivity> {
      try $0.recipient(selection: selection)
    }
  }
  /// The user who sent the activity message

  public static func messenger<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.MessageActivity
  > {
    Selection<T, Objects.MessageActivity> {
      try $0.messenger(selection: selection)
    }
  }
  /// The written replies to the activity

  public static func replies<T>(selection: Selection<T, [Objects.ActivityReply?]?>) -> Selection<
    T, Objects.MessageActivity
  > {
    Selection<T, Objects.MessageActivity> {
      try $0.replies(selection: selection)
    }
  }
  /// The users who liked the activity

  public static func likes<T>(selection: Selection<T, [Objects.User?]?>) -> Selection<
    T, Objects.MessageActivity
  > {
    Selection<T, Objects.MessageActivity> {
      try $0.likes(selection: selection)
    }
  }
}
extension Objects.ActivityReply {
  /// The id of the reply

  public static func id() -> Selection<Int, Objects.ActivityReply> {
    Selection<Int, Objects.ActivityReply> {
      try $0.id()
    }
  }
  /// The id of the replies creator

  public static func userId() -> Selection<Int?, Objects.ActivityReply> {
    Selection<Int?, Objects.ActivityReply> {
      try $0.userId()
    }
  }
  /// The id of the parent activity

  public static func activityId() -> Selection<Int?, Objects.ActivityReply> {
    Selection<Int?, Objects.ActivityReply> {
      try $0.activityId()
    }
  }
  /// The reply text

  public static func text(asHtml: OptionalArgument<Bool> = .init()) -> Selection<
    String?, Objects.ActivityReply
  > {
    Selection<String?, Objects.ActivityReply> {
      try $0.text(asHtml: asHtml)
    }
  }
  /// The amount of likes the reply has

  public static func likeCount() -> Selection<Int, Objects.ActivityReply> {
    Selection<Int, Objects.ActivityReply> {
      try $0.likeCount()
    }
  }
  /// If the currently authenticated user liked the reply

  public static func isLiked() -> Selection<Bool?, Objects.ActivityReply> {
    Selection<Bool?, Objects.ActivityReply> {
      try $0.isLiked()
    }
  }
  /// The time the reply was created at

  public static func createdAt() -> Selection<Int, Objects.ActivityReply> {
    Selection<Int, Objects.ActivityReply> {
      try $0.createdAt()
    }
  }
  /// The user who created reply

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.ActivityReply
  > {
    Selection<T, Objects.ActivityReply> {
      try $0.user(selection: selection)
    }
  }
  /// The users who liked the reply

  public static func likes<T>(selection: Selection<T, [Objects.User?]?>) -> Selection<
    T, Objects.ActivityReply
  > {
    Selection<T, Objects.ActivityReply> {
      try $0.likes(selection: selection)
    }
  }
}
extension Objects.ActivityMentionNotification {
  /// The id of the Notification

  public static func id() -> Selection<Int, Objects.ActivityMentionNotification> {
    Selection<Int, Objects.ActivityMentionNotification> {
      try $0.id()
    }
  }
  /// The id of the user who mentioned the authenticated user

  public static func userId() -> Selection<Int, Objects.ActivityMentionNotification> {
    Selection<Int, Objects.ActivityMentionNotification> {
      try $0.userId()
    }
  }
  /// The type of notification

  public static func type() -> Selection<
    Enums.NotificationType?, Objects.ActivityMentionNotification
  > {
    Selection<Enums.NotificationType?, Objects.ActivityMentionNotification> {
      try $0.type()
    }
  }
  /// The id of the activity where mentioned

  public static func activityId() -> Selection<Int, Objects.ActivityMentionNotification> {
    Selection<Int, Objects.ActivityMentionNotification> {
      try $0.activityId()
    }
  }
  /// The notification context text

  public static func context() -> Selection<String?, Objects.ActivityMentionNotification> {
    Selection<String?, Objects.ActivityMentionNotification> {
      try $0.context()
    }
  }
  /// The time the notification was created at

  public static func createdAt() -> Selection<Int?, Objects.ActivityMentionNotification> {
    Selection<Int?, Objects.ActivityMentionNotification> {
      try $0.createdAt()
    }
  }
  /// The liked activity

  public static func activity<T>(selection: Selection<T, Unions.ActivityUnion?>) -> Selection<
    T, Objects.ActivityMentionNotification
  > {
    Selection<T, Objects.ActivityMentionNotification> {
      try $0.activity(selection: selection)
    }
  }
  /// The user who mentioned the authenticated user

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.ActivityMentionNotification
  > {
    Selection<T, Objects.ActivityMentionNotification> {
      try $0.user(selection: selection)
    }
  }
}
extension Objects.TextActivity {
  /// The id of the activity

  public static func id() -> Selection<Int, Objects.TextActivity> {
    Selection<Int, Objects.TextActivity> {
      try $0.id()
    }
  }
  /// The user id of the activity's creator

  public static func userId() -> Selection<Int?, Objects.TextActivity> {
    Selection<Int?, Objects.TextActivity> {
      try $0.userId()
    }
  }
  /// The type of activity

  public static func type() -> Selection<Enums.ActivityType?, Objects.TextActivity> {
    Selection<Enums.ActivityType?, Objects.TextActivity> {
      try $0.type()
    }
  }
  /// The number of activity replies

  public static func replyCount() -> Selection<Int, Objects.TextActivity> {
    Selection<Int, Objects.TextActivity> {
      try $0.replyCount()
    }
  }
  /// The status text (Markdown)

  public static func text(asHtml: OptionalArgument<Bool> = .init()) -> Selection<
    String?, Objects.TextActivity
  > {
    Selection<String?, Objects.TextActivity> {
      try $0.text(asHtml: asHtml)
    }
  }
  /// The url for the activity page on the AniList website

  public static func siteUrl() -> Selection<String?, Objects.TextActivity> {
    Selection<String?, Objects.TextActivity> {
      try $0.siteUrl()
    }
  }
  /// If the activity is locked and can receive replies

  public static func isLocked() -> Selection<Bool?, Objects.TextActivity> {
    Selection<Bool?, Objects.TextActivity> {
      try $0.isLocked()
    }
  }
  /// If the currently authenticated user is subscribed to the activity

  public static func isSubscribed() -> Selection<Bool?, Objects.TextActivity> {
    Selection<Bool?, Objects.TextActivity> {
      try $0.isSubscribed()
    }
  }
  /// The amount of likes the activity has

  public static func likeCount() -> Selection<Int, Objects.TextActivity> {
    Selection<Int, Objects.TextActivity> {
      try $0.likeCount()
    }
  }
  /// If the currently authenticated user liked the activity

  public static func isLiked() -> Selection<Bool?, Objects.TextActivity> {
    Selection<Bool?, Objects.TextActivity> {
      try $0.isLiked()
    }
  }
  /// If the activity is pinned to the top of the users activity feed

  public static func isPinned() -> Selection<Bool?, Objects.TextActivity> {
    Selection<Bool?, Objects.TextActivity> {
      try $0.isPinned()
    }
  }
  /// The time the activity was created at

  public static func createdAt() -> Selection<Int, Objects.TextActivity> {
    Selection<Int, Objects.TextActivity> {
      try $0.createdAt()
    }
  }
  /// The user who created the activity

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.TextActivity
  > {
    Selection<T, Objects.TextActivity> {
      try $0.user(selection: selection)
    }
  }
  /// The written replies to the activity

  public static func replies<T>(selection: Selection<T, [Objects.ActivityReply?]?>) -> Selection<
    T, Objects.TextActivity
  > {
    Selection<T, Objects.TextActivity> {
      try $0.replies(selection: selection)
    }
  }
  /// The users who liked the activity

  public static func likes<T>(selection: Selection<T, [Objects.User?]?>) -> Selection<
    T, Objects.TextActivity
  > {
    Selection<T, Objects.TextActivity> {
      try $0.likes(selection: selection)
    }
  }
}
extension Objects.ListActivity {
  /// The id of the activity

  public static func id() -> Selection<Int, Objects.ListActivity> {
    Selection<Int, Objects.ListActivity> {
      try $0.id()
    }
  }
  /// The user id of the activity's creator

  public static func userId() -> Selection<Int?, Objects.ListActivity> {
    Selection<Int?, Objects.ListActivity> {
      try $0.userId()
    }
  }
  /// The type of activity

  public static func type() -> Selection<Enums.ActivityType?, Objects.ListActivity> {
    Selection<Enums.ActivityType?, Objects.ListActivity> {
      try $0.type()
    }
  }
  /// The number of activity replies

  public static func replyCount() -> Selection<Int, Objects.ListActivity> {
    Selection<Int, Objects.ListActivity> {
      try $0.replyCount()
    }
  }
  /// The list item's textual status

  public static func status() -> Selection<String?, Objects.ListActivity> {
    Selection<String?, Objects.ListActivity> {
      try $0.status()
    }
  }
  /// The list progress made

  public static func progress() -> Selection<String?, Objects.ListActivity> {
    Selection<String?, Objects.ListActivity> {
      try $0.progress()
    }
  }
  /// If the activity is locked and can receive replies

  public static func isLocked() -> Selection<Bool?, Objects.ListActivity> {
    Selection<Bool?, Objects.ListActivity> {
      try $0.isLocked()
    }
  }
  /// If the currently authenticated user is subscribed to the activity

  public static func isSubscribed() -> Selection<Bool?, Objects.ListActivity> {
    Selection<Bool?, Objects.ListActivity> {
      try $0.isSubscribed()
    }
  }
  /// The amount of likes the activity has

  public static func likeCount() -> Selection<Int, Objects.ListActivity> {
    Selection<Int, Objects.ListActivity> {
      try $0.likeCount()
    }
  }
  /// If the currently authenticated user liked the activity

  public static func isLiked() -> Selection<Bool?, Objects.ListActivity> {
    Selection<Bool?, Objects.ListActivity> {
      try $0.isLiked()
    }
  }
  /// If the activity is pinned to the top of the users activity feed

  public static func isPinned() -> Selection<Bool?, Objects.ListActivity> {
    Selection<Bool?, Objects.ListActivity> {
      try $0.isPinned()
    }
  }
  /// The url for the activity page on the AniList website

  public static func siteUrl() -> Selection<String?, Objects.ListActivity> {
    Selection<String?, Objects.ListActivity> {
      try $0.siteUrl()
    }
  }
  /// The time the activity was created at

  public static func createdAt() -> Selection<Int, Objects.ListActivity> {
    Selection<Int, Objects.ListActivity> {
      try $0.createdAt()
    }
  }
  /// The owner of the activity

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.ListActivity
  > {
    Selection<T, Objects.ListActivity> {
      try $0.user(selection: selection)
    }
  }
  /// The associated media to the activity update

  public static func media<T>(selection: Selection<T, Objects.Media?>) -> Selection<
    T, Objects.ListActivity
  > {
    Selection<T, Objects.ListActivity> {
      try $0.media(selection: selection)
    }
  }
  /// The written replies to the activity

  public static func replies<T>(selection: Selection<T, [Objects.ActivityReply?]?>) -> Selection<
    T, Objects.ListActivity
  > {
    Selection<T, Objects.ListActivity> {
      try $0.replies(selection: selection)
    }
  }
  /// The users who liked the activity

  public static func likes<T>(selection: Selection<T, [Objects.User?]?>) -> Selection<
    T, Objects.ListActivity
  > {
    Selection<T, Objects.ListActivity> {
      try $0.likes(selection: selection)
    }
  }
}
extension Objects.ActivityReplyNotification {
  /// The id of the Notification

  public static func id() -> Selection<Int, Objects.ActivityReplyNotification> {
    Selection<Int, Objects.ActivityReplyNotification> {
      try $0.id()
    }
  }
  /// The id of the user who replied to the activity

  public static func userId() -> Selection<Int, Objects.ActivityReplyNotification> {
    Selection<Int, Objects.ActivityReplyNotification> {
      try $0.userId()
    }
  }
  /// The type of notification

  public static func type() -> Selection<Enums.NotificationType?, Objects.ActivityReplyNotification>
  {
    Selection<Enums.NotificationType?, Objects.ActivityReplyNotification> {
      try $0.type()
    }
  }
  /// The id of the activity which was replied too

  public static func activityId() -> Selection<Int, Objects.ActivityReplyNotification> {
    Selection<Int, Objects.ActivityReplyNotification> {
      try $0.activityId()
    }
  }
  /// The notification context text

  public static func context() -> Selection<String?, Objects.ActivityReplyNotification> {
    Selection<String?, Objects.ActivityReplyNotification> {
      try $0.context()
    }
  }
  /// The time the notification was created at

  public static func createdAt() -> Selection<Int?, Objects.ActivityReplyNotification> {
    Selection<Int?, Objects.ActivityReplyNotification> {
      try $0.createdAt()
    }
  }
  /// The liked activity

  public static func activity<T>(selection: Selection<T, Unions.ActivityUnion?>) -> Selection<
    T, Objects.ActivityReplyNotification
  > {
    Selection<T, Objects.ActivityReplyNotification> {
      try $0.activity(selection: selection)
    }
  }
  /// The user who replied to the activity

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.ActivityReplyNotification
  > {
    Selection<T, Objects.ActivityReplyNotification> {
      try $0.user(selection: selection)
    }
  }
}
extension Objects.ActivityReplySubscribedNotification {
  /// The id of the Notification

  public static func id() -> Selection<Int, Objects.ActivityReplySubscribedNotification> {
    Selection<Int, Objects.ActivityReplySubscribedNotification> {
      try $0.id()
    }
  }
  /// The id of the user who replied to the activity

  public static func userId() -> Selection<Int, Objects.ActivityReplySubscribedNotification> {
    Selection<Int, Objects.ActivityReplySubscribedNotification> {
      try $0.userId()
    }
  }
  /// The type of notification

  public static func type() -> Selection<
    Enums.NotificationType?, Objects.ActivityReplySubscribedNotification
  > {
    Selection<Enums.NotificationType?, Objects.ActivityReplySubscribedNotification> {
      try $0.type()
    }
  }
  /// The id of the activity which was replied too

  public static func activityId() -> Selection<Int, Objects.ActivityReplySubscribedNotification> {
    Selection<Int, Objects.ActivityReplySubscribedNotification> {
      try $0.activityId()
    }
  }
  /// The notification context text

  public static func context() -> Selection<String?, Objects.ActivityReplySubscribedNotification> {
    Selection<String?, Objects.ActivityReplySubscribedNotification> {
      try $0.context()
    }
  }
  /// The time the notification was created at

  public static func createdAt() -> Selection<Int?, Objects.ActivityReplySubscribedNotification> {
    Selection<Int?, Objects.ActivityReplySubscribedNotification> {
      try $0.createdAt()
    }
  }
  /// The liked activity

  public static func activity<T>(selection: Selection<T, Unions.ActivityUnion?>) -> Selection<
    T, Objects.ActivityReplySubscribedNotification
  > {
    Selection<T, Objects.ActivityReplySubscribedNotification> {
      try $0.activity(selection: selection)
    }
  }
  /// The user who replied to the activity

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.ActivityReplySubscribedNotification
  > {
    Selection<T, Objects.ActivityReplySubscribedNotification> {
      try $0.user(selection: selection)
    }
  }
}
extension Objects.ActivityLikeNotification {
  /// The id of the Notification

  public static func id() -> Selection<Int, Objects.ActivityLikeNotification> {
    Selection<Int, Objects.ActivityLikeNotification> {
      try $0.id()
    }
  }
  /// The id of the user who liked to the activity

  public static func userId() -> Selection<Int, Objects.ActivityLikeNotification> {
    Selection<Int, Objects.ActivityLikeNotification> {
      try $0.userId()
    }
  }
  /// The type of notification

  public static func type() -> Selection<Enums.NotificationType?, Objects.ActivityLikeNotification>
  {
    Selection<Enums.NotificationType?, Objects.ActivityLikeNotification> {
      try $0.type()
    }
  }
  /// The id of the activity which was liked

  public static func activityId() -> Selection<Int, Objects.ActivityLikeNotification> {
    Selection<Int, Objects.ActivityLikeNotification> {
      try $0.activityId()
    }
  }
  /// The notification context text

  public static func context() -> Selection<String?, Objects.ActivityLikeNotification> {
    Selection<String?, Objects.ActivityLikeNotification> {
      try $0.context()
    }
  }
  /// The time the notification was created at

  public static func createdAt() -> Selection<Int?, Objects.ActivityLikeNotification> {
    Selection<Int?, Objects.ActivityLikeNotification> {
      try $0.createdAt()
    }
  }
  /// The liked activity

  public static func activity<T>(selection: Selection<T, Unions.ActivityUnion?>) -> Selection<
    T, Objects.ActivityLikeNotification
  > {
    Selection<T, Objects.ActivityLikeNotification> {
      try $0.activity(selection: selection)
    }
  }
  /// The user who liked the activity

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.ActivityLikeNotification
  > {
    Selection<T, Objects.ActivityLikeNotification> {
      try $0.user(selection: selection)
    }
  }
}
extension Objects.ActivityReplyLikeNotification {
  /// The id of the Notification

  public static func id() -> Selection<Int, Objects.ActivityReplyLikeNotification> {
    Selection<Int, Objects.ActivityReplyLikeNotification> {
      try $0.id()
    }
  }
  /// The id of the user who liked to the activity reply

  public static func userId() -> Selection<Int, Objects.ActivityReplyLikeNotification> {
    Selection<Int, Objects.ActivityReplyLikeNotification> {
      try $0.userId()
    }
  }
  /// The type of notification

  public static func type() -> Selection<
    Enums.NotificationType?, Objects.ActivityReplyLikeNotification
  > {
    Selection<Enums.NotificationType?, Objects.ActivityReplyLikeNotification> {
      try $0.type()
    }
  }
  /// The id of the activity where the reply which was liked

  public static func activityId() -> Selection<Int, Objects.ActivityReplyLikeNotification> {
    Selection<Int, Objects.ActivityReplyLikeNotification> {
      try $0.activityId()
    }
  }
  /// The notification context text

  public static func context() -> Selection<String?, Objects.ActivityReplyLikeNotification> {
    Selection<String?, Objects.ActivityReplyLikeNotification> {
      try $0.context()
    }
  }
  /// The time the notification was created at

  public static func createdAt() -> Selection<Int?, Objects.ActivityReplyLikeNotification> {
    Selection<Int?, Objects.ActivityReplyLikeNotification> {
      try $0.createdAt()
    }
  }
  /// The liked activity

  public static func activity<T>(selection: Selection<T, Unions.ActivityUnion?>) -> Selection<
    T, Objects.ActivityReplyLikeNotification
  > {
    Selection<T, Objects.ActivityReplyLikeNotification> {
      try $0.activity(selection: selection)
    }
  }
  /// The user who liked the activity reply

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.ActivityReplyLikeNotification
  > {
    Selection<T, Objects.ActivityReplyLikeNotification> {
      try $0.user(selection: selection)
    }
  }
}
extension Objects.ThreadCommentMentionNotification {
  /// The id of the Notification

  public static func id() -> Selection<Int, Objects.ThreadCommentMentionNotification> {
    Selection<Int, Objects.ThreadCommentMentionNotification> {
      try $0.id()
    }
  }
  /// The id of the user who mentioned the authenticated user

  public static func userId() -> Selection<Int, Objects.ThreadCommentMentionNotification> {
    Selection<Int, Objects.ThreadCommentMentionNotification> {
      try $0.userId()
    }
  }
  /// The type of notification

  public static func type() -> Selection<
    Enums.NotificationType?, Objects.ThreadCommentMentionNotification
  > {
    Selection<Enums.NotificationType?, Objects.ThreadCommentMentionNotification> {
      try $0.type()
    }
  }
  /// The id of the comment where mentioned

  public static func commentId() -> Selection<Int, Objects.ThreadCommentMentionNotification> {
    Selection<Int, Objects.ThreadCommentMentionNotification> {
      try $0.commentId()
    }
  }
  /// The notification context text

  public static func context() -> Selection<String?, Objects.ThreadCommentMentionNotification> {
    Selection<String?, Objects.ThreadCommentMentionNotification> {
      try $0.context()
    }
  }
  /// The time the notification was created at

  public static func createdAt() -> Selection<Int?, Objects.ThreadCommentMentionNotification> {
    Selection<Int?, Objects.ThreadCommentMentionNotification> {
      try $0.createdAt()
    }
  }
  /// The thread that the relevant comment belongs to

  public static func thread<T>(selection: Selection<T, Objects.Thread?>) -> Selection<
    T, Objects.ThreadCommentMentionNotification
  > {
    Selection<T, Objects.ThreadCommentMentionNotification> {
      try $0.thread(selection: selection)
    }
  }
  /// The thread comment that included the @ mention

  public static func comment<T>(selection: Selection<T, Objects.ThreadComment?>) -> Selection<
    T, Objects.ThreadCommentMentionNotification
  > {
    Selection<T, Objects.ThreadCommentMentionNotification> {
      try $0.comment(selection: selection)
    }
  }
  /// The user who mentioned the authenticated user

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.ThreadCommentMentionNotification
  > {
    Selection<T, Objects.ThreadCommentMentionNotification> {
      try $0.user(selection: selection)
    }
  }
}
extension Objects.Thread {
  /// The id of the thread

  public static func id() -> Selection<Int, Objects.Thread> {
    Selection<Int, Objects.Thread> {
      try $0.id()
    }
  }
  /// The title of the thread

  public static func title() -> Selection<String?, Objects.Thread> {
    Selection<String?, Objects.Thread> {
      try $0.title()
    }
  }
  /// The text body of the thread (Markdown)

  public static func body(asHtml: OptionalArgument<Bool> = .init()) -> Selection<
    String?, Objects.Thread
  > {
    Selection<String?, Objects.Thread> {
      try $0.body(asHtml: asHtml)
    }
  }
  /// The id of the thread owner user

  public static func userId() -> Selection<Int, Objects.Thread> {
    Selection<Int, Objects.Thread> {
      try $0.userId()
    }
  }
  /// The id of the user who most recently commented on the thread

  public static func replyUserId() -> Selection<Int?, Objects.Thread> {
    Selection<Int?, Objects.Thread> {
      try $0.replyUserId()
    }
  }
  /// The id of the most recent comment on the thread

  public static func replyCommentId() -> Selection<Int?, Objects.Thread> {
    Selection<Int?, Objects.Thread> {
      try $0.replyCommentId()
    }
  }
  /// The number of comments on the thread

  public static func replyCount() -> Selection<Int?, Objects.Thread> {
    Selection<Int?, Objects.Thread> {
      try $0.replyCount()
    }
  }
  /// The number of times users have viewed the thread

  public static func viewCount() -> Selection<Int?, Objects.Thread> {
    Selection<Int?, Objects.Thread> {
      try $0.viewCount()
    }
  }
  /// If the thread is locked and can receive comments

  public static func isLocked() -> Selection<Bool?, Objects.Thread> {
    Selection<Bool?, Objects.Thread> {
      try $0.isLocked()
    }
  }
  /// If the thread is stickied and should be displayed at the top of the page

  public static func isSticky() -> Selection<Bool?, Objects.Thread> {
    Selection<Bool?, Objects.Thread> {
      try $0.isSticky()
    }
  }
  /// If the currently authenticated user is subscribed to the thread

  public static func isSubscribed() -> Selection<Bool?, Objects.Thread> {
    Selection<Bool?, Objects.Thread> {
      try $0.isSubscribed()
    }
  }
  /// The amount of likes the thread has

  public static func likeCount() -> Selection<Int, Objects.Thread> {
    Selection<Int, Objects.Thread> {
      try $0.likeCount()
    }
  }
  /// If the currently authenticated user liked the thread

  public static func isLiked() -> Selection<Bool?, Objects.Thread> {
    Selection<Bool?, Objects.Thread> {
      try $0.isLiked()
    }
  }
  /// The time of the last reply

  public static func repliedAt() -> Selection<Int?, Objects.Thread> {
    Selection<Int?, Objects.Thread> {
      try $0.repliedAt()
    }
  }
  /// The time of the thread creation

  public static func createdAt() -> Selection<Int, Objects.Thread> {
    Selection<Int, Objects.Thread> {
      try $0.createdAt()
    }
  }
  /// The time of the thread last update

  public static func updatedAt() -> Selection<Int, Objects.Thread> {
    Selection<Int, Objects.Thread> {
      try $0.updatedAt()
    }
  }
  /// The owner of the thread

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<T, Objects.Thread>
  {
    Selection<T, Objects.Thread> {
      try $0.user(selection: selection)
    }
  }
  /// The user to last reply to the thread

  public static func replyUser<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.Thread
  > {
    Selection<T, Objects.Thread> {
      try $0.replyUser(selection: selection)
    }
  }
  /// The users who liked the thread

  public static func likes<T>(selection: Selection<T, [Objects.User?]?>) -> Selection<
    T, Objects.Thread
  > {
    Selection<T, Objects.Thread> {
      try $0.likes(selection: selection)
    }
  }
  /// The url for the thread page on the AniList website

  public static func siteUrl() -> Selection<String?, Objects.Thread> {
    Selection<String?, Objects.Thread> {
      try $0.siteUrl()
    }
  }
  /// The categories of the thread

  public static func categories<T>(selection: Selection<T, [Objects.ThreadCategory?]?>)
    -> Selection<T, Objects.Thread>
  {
    Selection<T, Objects.Thread> {
      try $0.categories(selection: selection)
    }
  }
  /// The media categories of the thread

  public static func mediaCategories<T>(selection: Selection<T, [Objects.Media?]?>) -> Selection<
    T, Objects.Thread
  > {
    Selection<T, Objects.Thread> {
      try $0.mediaCategories(selection: selection)
    }
  }
}
extension Objects.ThreadCategory {
  /// The id of the category

  public static func id() -> Selection<Int, Objects.ThreadCategory> {
    Selection<Int, Objects.ThreadCategory> {
      try $0.id()
    }
  }
  /// The name of the category

  public static func name() -> Selection<String, Objects.ThreadCategory> {
    Selection<String, Objects.ThreadCategory> {
      try $0.name()
    }
  }
}
extension Objects.ThreadComment {
  /// The id of the comment

  public static func id() -> Selection<Int, Objects.ThreadComment> {
    Selection<Int, Objects.ThreadComment> {
      try $0.id()
    }
  }
  /// The user id of the comment's owner

  public static func userId() -> Selection<Int?, Objects.ThreadComment> {
    Selection<Int?, Objects.ThreadComment> {
      try $0.userId()
    }
  }
  /// The id of thread the comment belongs to

  public static func threadId() -> Selection<Int?, Objects.ThreadComment> {
    Selection<Int?, Objects.ThreadComment> {
      try $0.threadId()
    }
  }
  /// The text content of the comment (Markdown)

  public static func comment(asHtml: OptionalArgument<Bool> = .init()) -> Selection<
    String?, Objects.ThreadComment
  > {
    Selection<String?, Objects.ThreadComment> {
      try $0.comment(asHtml: asHtml)
    }
  }
  /// The amount of likes the comment has

  public static func likeCount() -> Selection<Int, Objects.ThreadComment> {
    Selection<Int, Objects.ThreadComment> {
      try $0.likeCount()
    }
  }
  /// If the currently authenticated user liked the comment

  public static func isLiked() -> Selection<Bool?, Objects.ThreadComment> {
    Selection<Bool?, Objects.ThreadComment> {
      try $0.isLiked()
    }
  }
  /// The url for the comment page on the AniList website

  public static func siteUrl() -> Selection<String?, Objects.ThreadComment> {
    Selection<String?, Objects.ThreadComment> {
      try $0.siteUrl()
    }
  }
  /// The time of the comments creation

  public static func createdAt() -> Selection<Int, Objects.ThreadComment> {
    Selection<Int, Objects.ThreadComment> {
      try $0.createdAt()
    }
  }
  /// The time of the comments last update

  public static func updatedAt() -> Selection<Int, Objects.ThreadComment> {
    Selection<Int, Objects.ThreadComment> {
      try $0.updatedAt()
    }
  }
  /// The thread the comment belongs to

  public static func thread<T>(selection: Selection<T, Objects.Thread?>) -> Selection<
    T, Objects.ThreadComment
  > {
    Selection<T, Objects.ThreadComment> {
      try $0.thread(selection: selection)
    }
  }
  /// The user who created the comment

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.ThreadComment
  > {
    Selection<T, Objects.ThreadComment> {
      try $0.user(selection: selection)
    }
  }
  /// The users who liked the comment

  public static func likes<T>(selection: Selection<T, [Objects.User?]?>) -> Selection<
    T, Objects.ThreadComment
  > {
    Selection<T, Objects.ThreadComment> {
      try $0.likes(selection: selection)
    }
  }
  /// The comment's child reply comments

  public static func childComments() -> Selection<AnyCodable?, Objects.ThreadComment> {
    Selection<AnyCodable?, Objects.ThreadComment> {
      try $0.childComments()
    }
  }
  /// If the comment tree is locked and may not receive replies or edits

  public static func isLocked() -> Selection<Bool?, Objects.ThreadComment> {
    Selection<Bool?, Objects.ThreadComment> {
      try $0.isLocked()
    }
  }
}
extension Objects.ThreadCommentReplyNotification {
  /// The id of the Notification

  public static func id() -> Selection<Int, Objects.ThreadCommentReplyNotification> {
    Selection<Int, Objects.ThreadCommentReplyNotification> {
      try $0.id()
    }
  }
  /// The id of the user who create the comment reply

  public static func userId() -> Selection<Int, Objects.ThreadCommentReplyNotification> {
    Selection<Int, Objects.ThreadCommentReplyNotification> {
      try $0.userId()
    }
  }
  /// The type of notification

  public static func type() -> Selection<
    Enums.NotificationType?, Objects.ThreadCommentReplyNotification
  > {
    Selection<Enums.NotificationType?, Objects.ThreadCommentReplyNotification> {
      try $0.type()
    }
  }
  /// The id of the reply comment

  public static func commentId() -> Selection<Int, Objects.ThreadCommentReplyNotification> {
    Selection<Int, Objects.ThreadCommentReplyNotification> {
      try $0.commentId()
    }
  }
  /// The notification context text

  public static func context() -> Selection<String?, Objects.ThreadCommentReplyNotification> {
    Selection<String?, Objects.ThreadCommentReplyNotification> {
      try $0.context()
    }
  }
  /// The time the notification was created at

  public static func createdAt() -> Selection<Int?, Objects.ThreadCommentReplyNotification> {
    Selection<Int?, Objects.ThreadCommentReplyNotification> {
      try $0.createdAt()
    }
  }
  /// The thread that the relevant comment belongs to

  public static func thread<T>(selection: Selection<T, Objects.Thread?>) -> Selection<
    T, Objects.ThreadCommentReplyNotification
  > {
    Selection<T, Objects.ThreadCommentReplyNotification> {
      try $0.thread(selection: selection)
    }
  }
  /// The reply thread comment

  public static func comment<T>(selection: Selection<T, Objects.ThreadComment?>) -> Selection<
    T, Objects.ThreadCommentReplyNotification
  > {
    Selection<T, Objects.ThreadCommentReplyNotification> {
      try $0.comment(selection: selection)
    }
  }
  /// The user who replied to the activity

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.ThreadCommentReplyNotification
  > {
    Selection<T, Objects.ThreadCommentReplyNotification> {
      try $0.user(selection: selection)
    }
  }
}
extension Objects.ThreadCommentSubscribedNotification {
  /// The id of the Notification

  public static func id() -> Selection<Int, Objects.ThreadCommentSubscribedNotification> {
    Selection<Int, Objects.ThreadCommentSubscribedNotification> {
      try $0.id()
    }
  }
  /// The id of the user who commented on the thread

  public static func userId() -> Selection<Int, Objects.ThreadCommentSubscribedNotification> {
    Selection<Int, Objects.ThreadCommentSubscribedNotification> {
      try $0.userId()
    }
  }
  /// The type of notification

  public static func type() -> Selection<
    Enums.NotificationType?, Objects.ThreadCommentSubscribedNotification
  > {
    Selection<Enums.NotificationType?, Objects.ThreadCommentSubscribedNotification> {
      try $0.type()
    }
  }
  /// The id of the new comment in the subscribed thread

  public static func commentId() -> Selection<Int, Objects.ThreadCommentSubscribedNotification> {
    Selection<Int, Objects.ThreadCommentSubscribedNotification> {
      try $0.commentId()
    }
  }
  /// The notification context text

  public static func context() -> Selection<String?, Objects.ThreadCommentSubscribedNotification> {
    Selection<String?, Objects.ThreadCommentSubscribedNotification> {
      try $0.context()
    }
  }
  /// The time the notification was created at

  public static func createdAt() -> Selection<Int?, Objects.ThreadCommentSubscribedNotification> {
    Selection<Int?, Objects.ThreadCommentSubscribedNotification> {
      try $0.createdAt()
    }
  }
  /// The thread that the relevant comment belongs to

  public static func thread<T>(selection: Selection<T, Objects.Thread?>) -> Selection<
    T, Objects.ThreadCommentSubscribedNotification
  > {
    Selection<T, Objects.ThreadCommentSubscribedNotification> {
      try $0.thread(selection: selection)
    }
  }
  /// The reply thread comment

  public static func comment<T>(selection: Selection<T, Objects.ThreadComment?>) -> Selection<
    T, Objects.ThreadCommentSubscribedNotification
  > {
    Selection<T, Objects.ThreadCommentSubscribedNotification> {
      try $0.comment(selection: selection)
    }
  }
  /// The user who replied to the subscribed thread

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.ThreadCommentSubscribedNotification
  > {
    Selection<T, Objects.ThreadCommentSubscribedNotification> {
      try $0.user(selection: selection)
    }
  }
}
extension Objects.ThreadCommentLikeNotification {
  /// The id of the Notification

  public static func id() -> Selection<Int, Objects.ThreadCommentLikeNotification> {
    Selection<Int, Objects.ThreadCommentLikeNotification> {
      try $0.id()
    }
  }
  /// The id of the user who liked to the activity

  public static func userId() -> Selection<Int, Objects.ThreadCommentLikeNotification> {
    Selection<Int, Objects.ThreadCommentLikeNotification> {
      try $0.userId()
    }
  }
  /// The type of notification

  public static func type() -> Selection<
    Enums.NotificationType?, Objects.ThreadCommentLikeNotification
  > {
    Selection<Enums.NotificationType?, Objects.ThreadCommentLikeNotification> {
      try $0.type()
    }
  }
  /// The id of the activity which was liked

  public static func commentId() -> Selection<Int, Objects.ThreadCommentLikeNotification> {
    Selection<Int, Objects.ThreadCommentLikeNotification> {
      try $0.commentId()
    }
  }
  /// The notification context text

  public static func context() -> Selection<String?, Objects.ThreadCommentLikeNotification> {
    Selection<String?, Objects.ThreadCommentLikeNotification> {
      try $0.context()
    }
  }
  /// The time the notification was created at

  public static func createdAt() -> Selection<Int?, Objects.ThreadCommentLikeNotification> {
    Selection<Int?, Objects.ThreadCommentLikeNotification> {
      try $0.createdAt()
    }
  }
  /// The thread that the relevant comment belongs to

  public static func thread<T>(selection: Selection<T, Objects.Thread?>) -> Selection<
    T, Objects.ThreadCommentLikeNotification
  > {
    Selection<T, Objects.ThreadCommentLikeNotification> {
      try $0.thread(selection: selection)
    }
  }
  /// The thread comment that was liked

  public static func comment<T>(selection: Selection<T, Objects.ThreadComment?>) -> Selection<
    T, Objects.ThreadCommentLikeNotification
  > {
    Selection<T, Objects.ThreadCommentLikeNotification> {
      try $0.comment(selection: selection)
    }
  }
  /// The user who liked the activity

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.ThreadCommentLikeNotification
  > {
    Selection<T, Objects.ThreadCommentLikeNotification> {
      try $0.user(selection: selection)
    }
  }
}
extension Objects.ThreadLikeNotification {
  /// The id of the Notification

  public static func id() -> Selection<Int, Objects.ThreadLikeNotification> {
    Selection<Int, Objects.ThreadLikeNotification> {
      try $0.id()
    }
  }
  /// The id of the user who liked to the activity

  public static func userId() -> Selection<Int, Objects.ThreadLikeNotification> {
    Selection<Int, Objects.ThreadLikeNotification> {
      try $0.userId()
    }
  }
  /// The type of notification

  public static func type() -> Selection<Enums.NotificationType?, Objects.ThreadLikeNotification> {
    Selection<Enums.NotificationType?, Objects.ThreadLikeNotification> {
      try $0.type()
    }
  }
  /// The id of the thread which was liked

  public static func threadId() -> Selection<Int, Objects.ThreadLikeNotification> {
    Selection<Int, Objects.ThreadLikeNotification> {
      try $0.threadId()
    }
  }
  /// The notification context text

  public static func context() -> Selection<String?, Objects.ThreadLikeNotification> {
    Selection<String?, Objects.ThreadLikeNotification> {
      try $0.context()
    }
  }
  /// The time the notification was created at

  public static func createdAt() -> Selection<Int?, Objects.ThreadLikeNotification> {
    Selection<Int?, Objects.ThreadLikeNotification> {
      try $0.createdAt()
    }
  }
  /// The thread that the relevant comment belongs to

  public static func thread<T>(selection: Selection<T, Objects.Thread?>) -> Selection<
    T, Objects.ThreadLikeNotification
  > {
    Selection<T, Objects.ThreadLikeNotification> {
      try $0.thread(selection: selection)
    }
  }
  /// The liked thread comment

  public static func comment<T>(selection: Selection<T, Objects.ThreadComment?>) -> Selection<
    T, Objects.ThreadLikeNotification
  > {
    Selection<T, Objects.ThreadLikeNotification> {
      try $0.comment(selection: selection)
    }
  }
  /// The user who liked the activity

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.ThreadLikeNotification
  > {
    Selection<T, Objects.ThreadLikeNotification> {
      try $0.user(selection: selection)
    }
  }
}
extension Objects.RelatedMediaAdditionNotification {
  /// The id of the Notification

  public static func id() -> Selection<Int, Objects.RelatedMediaAdditionNotification> {
    Selection<Int, Objects.RelatedMediaAdditionNotification> {
      try $0.id()
    }
  }
  /// The type of notification

  public static func type() -> Selection<
    Enums.NotificationType?, Objects.RelatedMediaAdditionNotification
  > {
    Selection<Enums.NotificationType?, Objects.RelatedMediaAdditionNotification> {
      try $0.type()
    }
  }
  /// The id of the new media

  public static func mediaId() -> Selection<Int, Objects.RelatedMediaAdditionNotification> {
    Selection<Int, Objects.RelatedMediaAdditionNotification> {
      try $0.mediaId()
    }
  }
  /// The notification context text

  public static func context() -> Selection<String?, Objects.RelatedMediaAdditionNotification> {
    Selection<String?, Objects.RelatedMediaAdditionNotification> {
      try $0.context()
    }
  }
  /// The time the notification was created at

  public static func createdAt() -> Selection<Int?, Objects.RelatedMediaAdditionNotification> {
    Selection<Int?, Objects.RelatedMediaAdditionNotification> {
      try $0.createdAt()
    }
  }
  /// The associated media of the airing schedule

  public static func media<T>(selection: Selection<T, Objects.Media?>) -> Selection<
    T, Objects.RelatedMediaAdditionNotification
  > {
    Selection<T, Objects.RelatedMediaAdditionNotification> {
      try $0.media(selection: selection)
    }
  }
}
extension Objects.MediaDataChangeNotification {
  /// The id of the Notification

  public static func id() -> Selection<Int, Objects.MediaDataChangeNotification> {
    Selection<Int, Objects.MediaDataChangeNotification> {
      try $0.id()
    }
  }
  /// The type of notification

  public static func type() -> Selection<
    Enums.NotificationType?, Objects.MediaDataChangeNotification
  > {
    Selection<Enums.NotificationType?, Objects.MediaDataChangeNotification> {
      try $0.type()
    }
  }
  /// The id of the media that received data changes

  public static func mediaId() -> Selection<Int, Objects.MediaDataChangeNotification> {
    Selection<Int, Objects.MediaDataChangeNotification> {
      try $0.mediaId()
    }
  }
  /// The reason for the media data change

  public static func context() -> Selection<String?, Objects.MediaDataChangeNotification> {
    Selection<String?, Objects.MediaDataChangeNotification> {
      try $0.context()
    }
  }
  /// The reason for the media data change

  public static func reason() -> Selection<String?, Objects.MediaDataChangeNotification> {
    Selection<String?, Objects.MediaDataChangeNotification> {
      try $0.reason()
    }
  }
  /// The time the notification was created at

  public static func createdAt() -> Selection<Int?, Objects.MediaDataChangeNotification> {
    Selection<Int?, Objects.MediaDataChangeNotification> {
      try $0.createdAt()
    }
  }
  /// The media that received data changes

  public static func media<T>(selection: Selection<T, Objects.Media?>) -> Selection<
    T, Objects.MediaDataChangeNotification
  > {
    Selection<T, Objects.MediaDataChangeNotification> {
      try $0.media(selection: selection)
    }
  }
}
extension Objects.MediaMergeNotification {
  /// The id of the Notification

  public static func id() -> Selection<Int, Objects.MediaMergeNotification> {
    Selection<Int, Objects.MediaMergeNotification> {
      try $0.id()
    }
  }
  /// The type of notification

  public static func type() -> Selection<Enums.NotificationType?, Objects.MediaMergeNotification> {
    Selection<Enums.NotificationType?, Objects.MediaMergeNotification> {
      try $0.type()
    }
  }
  /// The id of the media that was merged into

  public static func mediaId() -> Selection<Int, Objects.MediaMergeNotification> {
    Selection<Int, Objects.MediaMergeNotification> {
      try $0.mediaId()
    }
  }
  /// The title of the deleted media

  public static func deletedMediaTitles() -> Selection<[String?]?, Objects.MediaMergeNotification> {
    Selection<[String?]?, Objects.MediaMergeNotification> {
      try $0.deletedMediaTitles()
    }
  }
  /// The reason for the media data change

  public static func context() -> Selection<String?, Objects.MediaMergeNotification> {
    Selection<String?, Objects.MediaMergeNotification> {
      try $0.context()
    }
  }
  /// The reason for the media merge

  public static func reason() -> Selection<String?, Objects.MediaMergeNotification> {
    Selection<String?, Objects.MediaMergeNotification> {
      try $0.reason()
    }
  }
  /// The time the notification was created at

  public static func createdAt() -> Selection<Int?, Objects.MediaMergeNotification> {
    Selection<Int?, Objects.MediaMergeNotification> {
      try $0.createdAt()
    }
  }
  /// The media that was merged into

  public static func media<T>(selection: Selection<T, Objects.Media?>) -> Selection<
    T, Objects.MediaMergeNotification
  > {
    Selection<T, Objects.MediaMergeNotification> {
      try $0.media(selection: selection)
    }
  }
}
extension Objects.MediaDeletionNotification {
  /// The id of the Notification

  public static func id() -> Selection<Int, Objects.MediaDeletionNotification> {
    Selection<Int, Objects.MediaDeletionNotification> {
      try $0.id()
    }
  }
  /// The type of notification

  public static func type() -> Selection<Enums.NotificationType?, Objects.MediaDeletionNotification>
  {
    Selection<Enums.NotificationType?, Objects.MediaDeletionNotification> {
      try $0.type()
    }
  }
  /// The title of the deleted media

  public static func deletedMediaTitle() -> Selection<String?, Objects.MediaDeletionNotification> {
    Selection<String?, Objects.MediaDeletionNotification> {
      try $0.deletedMediaTitle()
    }
  }
  /// The reason for the media deletion

  public static func context() -> Selection<String?, Objects.MediaDeletionNotification> {
    Selection<String?, Objects.MediaDeletionNotification> {
      try $0.context()
    }
  }
  /// The reason for the media deletion

  public static func reason() -> Selection<String?, Objects.MediaDeletionNotification> {
    Selection<String?, Objects.MediaDeletionNotification> {
      try $0.reason()
    }
  }
  /// The time the notification was created at

  public static func createdAt() -> Selection<Int?, Objects.MediaDeletionNotification> {
    Selection<Int?, Objects.MediaDeletionNotification> {
      try $0.createdAt()
    }
  }
}
extension Objects.MediaListCollection {
  /// Grouped media list entries

  public static func lists<T>(selection: Selection<T, [Objects.MediaListGroup?]?>) -> Selection<
    T, Objects.MediaListCollection
  > {
    Selection<T, Objects.MediaListCollection> {
      try $0.lists(selection: selection)
    }
  }
  /// The owner of the list

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.MediaListCollection
  > {
    Selection<T, Objects.MediaListCollection> {
      try $0.user(selection: selection)
    }
  }
  /// If there is another chunk

  public static func hasNextChunk() -> Selection<Bool?, Objects.MediaListCollection> {
    Selection<Bool?, Objects.MediaListCollection> {
      try $0.hasNextChunk()
    }
  }
  /// A map of media list entry arrays grouped by status
  @available(*, deprecated, message: "Not GraphQL spec compliant, use lists field instead.")
  public static func statusLists<T>(
    asArray: OptionalArgument<Bool> = .init(), selection: Selection<T, [[Objects.MediaList?]?]?>
  ) -> Selection<T, Objects.MediaListCollection> {
    Selection<T, Objects.MediaListCollection> {
      try $0.statusLists(asArray: asArray, selection: selection)
    }
  }
  /// A map of media list entry arrays grouped by custom lists
  @available(*, deprecated, message: "Not GraphQL spec compliant, use lists field instead.")
  public static func customLists<T>(
    asArray: OptionalArgument<Bool> = .init(), selection: Selection<T, [[Objects.MediaList?]?]?>
  ) -> Selection<T, Objects.MediaListCollection> {
    Selection<T, Objects.MediaListCollection> {
      try $0.customLists(asArray: asArray, selection: selection)
    }
  }
}
extension Objects.MediaListGroup {
  /// Media list entries

  public static func entries<T>(selection: Selection<T, [Objects.MediaList?]?>) -> Selection<
    T, Objects.MediaListGroup
  > {
    Selection<T, Objects.MediaListGroup> {
      try $0.entries(selection: selection)
    }
  }

  public static func name() -> Selection<String?, Objects.MediaListGroup> {
    Selection<String?, Objects.MediaListGroup> {
      try $0.name()
    }
  }

  public static func isCustomList() -> Selection<Bool?, Objects.MediaListGroup> {
    Selection<Bool?, Objects.MediaListGroup> {
      try $0.isCustomList()
    }
  }

  public static func isSplitCompletedList() -> Selection<Bool?, Objects.MediaListGroup> {
    Selection<Bool?, Objects.MediaListGroup> {
      try $0.isSplitCompletedList()
    }
  }

  public static func status() -> Selection<Enums.MediaListStatus?, Objects.MediaListGroup> {
    Selection<Enums.MediaListStatus?, Objects.MediaListGroup> {
      try $0.status()
    }
  }
}
extension Objects.ParsedMarkdown {
  /// The parsed markdown as html

  public static func html() -> Selection<String?, Objects.ParsedMarkdown> {
    Selection<String?, Objects.ParsedMarkdown> {
      try $0.html()
    }
  }
}
extension Objects.AniChartUser {

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.AniChartUser
  > {
    Selection<T, Objects.AniChartUser> {
      try $0.user(selection: selection)
    }
  }

  public static func settings() -> Selection<AnyCodable?, Objects.AniChartUser> {
    Selection<AnyCodable?, Objects.AniChartUser> {
      try $0.settings()
    }
  }

  public static func highlights() -> Selection<AnyCodable?, Objects.AniChartUser> {
    Selection<AnyCodable?, Objects.AniChartUser> {
      try $0.highlights()
    }
  }
}
extension Objects.SiteStatistics {

  public static func users<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.SiteTrendSort>]> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.SiteTrendConnection?>
  ) -> Selection<T, Objects.SiteStatistics> {
    Selection<T, Objects.SiteStatistics> {
      try $0.users(sort: sort, page: page, perPage: perPage, selection: selection)
    }
  }

  public static func anime<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.SiteTrendSort>]> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.SiteTrendConnection?>
  ) -> Selection<T, Objects.SiteStatistics> {
    Selection<T, Objects.SiteStatistics> {
      try $0.anime(sort: sort, page: page, perPage: perPage, selection: selection)
    }
  }

  public static func manga<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.SiteTrendSort>]> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.SiteTrendConnection?>
  ) -> Selection<T, Objects.SiteStatistics> {
    Selection<T, Objects.SiteStatistics> {
      try $0.manga(sort: sort, page: page, perPage: perPage, selection: selection)
    }
  }

  public static func characters<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.SiteTrendSort>]> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.SiteTrendConnection?>
  ) -> Selection<T, Objects.SiteStatistics> {
    Selection<T, Objects.SiteStatistics> {
      try $0.characters(sort: sort, page: page, perPage: perPage, selection: selection)
    }
  }

  public static func staff<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.SiteTrendSort>]> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.SiteTrendConnection?>
  ) -> Selection<T, Objects.SiteStatistics> {
    Selection<T, Objects.SiteStatistics> {
      try $0.staff(sort: sort, page: page, perPage: perPage, selection: selection)
    }
  }

  public static func studios<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.SiteTrendSort>]> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.SiteTrendConnection?>
  ) -> Selection<T, Objects.SiteStatistics> {
    Selection<T, Objects.SiteStatistics> {
      try $0.studios(sort: sort, page: page, perPage: perPage, selection: selection)
    }
  }

  public static func reviews<T>(
    sort: OptionalArgument<[OptionalArgument<Enums.SiteTrendSort>]> = .init(),
    page: OptionalArgument<Int> = .init(), perPage: OptionalArgument<Int> = .init(),
    selection: Selection<T, Objects.SiteTrendConnection?>
  ) -> Selection<T, Objects.SiteStatistics> {
    Selection<T, Objects.SiteStatistics> {
      try $0.reviews(sort: sort, page: page, perPage: perPage, selection: selection)
    }
  }
}
extension Objects.SiteTrendConnection {

  public static func edges<T>(selection: Selection<T, [Objects.SiteTrendEdge?]?>) -> Selection<
    T, Objects.SiteTrendConnection
  > {
    Selection<T, Objects.SiteTrendConnection> {
      try $0.edges(selection: selection)
    }
  }

  public static func nodes<T>(selection: Selection<T, [Objects.SiteTrend?]?>) -> Selection<
    T, Objects.SiteTrendConnection
  > {
    Selection<T, Objects.SiteTrendConnection> {
      try $0.nodes(selection: selection)
    }
  }
  /// The pagination information

  public static func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) -> Selection<
    T, Objects.SiteTrendConnection
  > {
    Selection<T, Objects.SiteTrendConnection> {
      try $0.pageInfo(selection: selection)
    }
  }
}
extension Objects.SiteTrendEdge {

  public static func node<T>(selection: Selection<T, Objects.SiteTrend?>) -> Selection<
    T, Objects.SiteTrendEdge
  > {
    Selection<T, Objects.SiteTrendEdge> {
      try $0.node(selection: selection)
    }
  }
}
extension Objects.SiteTrend {
  /// The day the data was recorded (timestamp)

  public static func date() -> Selection<Int, Objects.SiteTrend> {
    Selection<Int, Objects.SiteTrend> {
      try $0.date()
    }
  }

  public static func count() -> Selection<Int, Objects.SiteTrend> {
    Selection<Int, Objects.SiteTrend> {
      try $0.count()
    }
  }
  /// The change from yesterday

  public static func change() -> Selection<Int, Objects.SiteTrend> {
    Selection<Int, Objects.SiteTrend> {
      try $0.change()
    }
  }
}
extension Objects.Mutation {

  public static func updateUser<T>(
    about: OptionalArgument<String> = .init(),
    titleLanguage: OptionalArgument<Enums.UserTitleLanguage> = .init(),
    displayAdultContent: OptionalArgument<Bool> = .init(),
    airingNotifications: OptionalArgument<Bool> = .init(),
    scoreFormat: OptionalArgument<Enums.ScoreFormat> = .init(),
    rowOrder: OptionalArgument<String> = .init(), profileColor: OptionalArgument<String> = .init(),
    donatorBadge: OptionalArgument<String> = .init(),
    notificationOptions: OptionalArgument<
      [OptionalArgument<InputObjects.NotificationOptionInput>]
    > = .init(), timezone: OptionalArgument<String> = .init(),
    activityMergeTime: OptionalArgument<Int> = .init(),
    animeListOptions: OptionalArgument<InputObjects.MediaListOptionsInput> = .init(),
    mangaListOptions: OptionalArgument<InputObjects.MediaListOptionsInput> = .init(),
    staffNameLanguage: OptionalArgument<Enums.UserStaffNameLanguage> = .init(),
    restrictMessagesToFollowing: OptionalArgument<Bool> = .init(),
    disabledListActivity: OptionalArgument<
      [OptionalArgument<InputObjects.ListActivityOptionInput>]
    > = .init(), selection: Selection<T, Objects.User?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.updateUser(
        about: about, titleLanguage: titleLanguage, displayAdultContent: displayAdultContent,
        airingNotifications: airingNotifications, scoreFormat: scoreFormat, rowOrder: rowOrder,
        profileColor: profileColor, donatorBadge: donatorBadge,
        notificationOptions: notificationOptions, timezone: timezone,
        activityMergeTime: activityMergeTime, animeListOptions: animeListOptions,
        mangaListOptions: mangaListOptions, staffNameLanguage: staffNameLanguage,
        restrictMessagesToFollowing: restrictMessagesToFollowing,
        disabledListActivity: disabledListActivity, selection: selection)
    }
  }
  /// Create or update a media list entry

  public static func saveMediaListEntry<T>(
    id: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    status: OptionalArgument<Enums.MediaListStatus> = .init(),
    score: OptionalArgument<Double> = .init(), scoreRaw: OptionalArgument<Int> = .init(),
    progress: OptionalArgument<Int> = .init(), progressVolumes: OptionalArgument<Int> = .init(),
    `repeat`: OptionalArgument<Int> = .init(), priority: OptionalArgument<Int> = .init(),
    `private`: OptionalArgument<Bool> = .init(), notes: OptionalArgument<String> = .init(),
    hiddenFromStatusLists: OptionalArgument<Bool> = .init(),
    customLists: OptionalArgument<[OptionalArgument<String>]> = .init(),
    advancedScores: OptionalArgument<[OptionalArgument<Double>]> = .init(),
    startedAt: OptionalArgument<InputObjects.FuzzyDateInput> = .init(),
    completedAt: OptionalArgument<InputObjects.FuzzyDateInput> = .init(),
    selection: Selection<T, Objects.MediaList?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.saveMediaListEntry(
        id: id, mediaId: mediaId, status: status, score: score, scoreRaw: scoreRaw,
        progress: progress, progressVolumes: progressVolumes, repeat: `repeat`, priority: priority,
        private: `private`, notes: notes, hiddenFromStatusLists: hiddenFromStatusLists,
        customLists: customLists, advancedScores: advancedScores, startedAt: startedAt,
        completedAt: completedAt, selection: selection)
    }
  }
  /// Update multiple media list entries to the same values

  public static func updateMediaListEntries<T>(
    status: OptionalArgument<Enums.MediaListStatus> = .init(),
    score: OptionalArgument<Double> = .init(), scoreRaw: OptionalArgument<Int> = .init(),
    progress: OptionalArgument<Int> = .init(), progressVolumes: OptionalArgument<Int> = .init(),
    `repeat`: OptionalArgument<Int> = .init(), priority: OptionalArgument<Int> = .init(),
    `private`: OptionalArgument<Bool> = .init(), notes: OptionalArgument<String> = .init(),
    hiddenFromStatusLists: OptionalArgument<Bool> = .init(),
    advancedScores: OptionalArgument<[OptionalArgument<Double>]> = .init(),
    startedAt: OptionalArgument<InputObjects.FuzzyDateInput> = .init(),
    completedAt: OptionalArgument<InputObjects.FuzzyDateInput> = .init(),
    ids: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    selection: Selection<T, [Objects.MediaList?]?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.updateMediaListEntries(
        status: status, score: score, scoreRaw: scoreRaw, progress: progress,
        progressVolumes: progressVolumes, repeat: `repeat`, priority: priority, private: `private`,
        notes: notes, hiddenFromStatusLists: hiddenFromStatusLists, advancedScores: advancedScores,
        startedAt: startedAt, completedAt: completedAt, ids: ids, selection: selection)
    }
  }
  /// Delete a media list entry

  public static func deleteMediaListEntry<T>(
    id: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.Deleted?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.deleteMediaListEntry(id: id, selection: selection)
    }
  }
  /// Delete a custom list and remove the list entries from it

  public static func deleteCustomList<T>(
    customList: OptionalArgument<String> = .init(),
    type: OptionalArgument<Enums.MediaType> = .init(), selection: Selection<T, Objects.Deleted?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.deleteCustomList(customList: customList, type: type, selection: selection)
    }
  }
  /// Create or update text activity for the currently authenticated user

  public static func saveTextActivity<T>(
    id: OptionalArgument<Int> = .init(), text: OptionalArgument<String> = .init(),
    locked: OptionalArgument<Bool> = .init(), selection: Selection<T, Objects.TextActivity?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.saveTextActivity(id: id, text: text, locked: locked, selection: selection)
    }
  }
  /// Create or update message activity for the currently authenticated user

  public static func saveMessageActivity<T>(
    id: OptionalArgument<Int> = .init(), message: OptionalArgument<String> = .init(),
    recipientId: OptionalArgument<Int> = .init(), `private`: OptionalArgument<Bool> = .init(),
    locked: OptionalArgument<Bool> = .init(), asMod: OptionalArgument<Bool> = .init(),
    selection: Selection<T, Objects.MessageActivity?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.saveMessageActivity(
        id: id, message: message, recipientId: recipientId, private: `private`, locked: locked,
        asMod: asMod, selection: selection)
    }
  }
  /// Update list activity (Mod Only)

  public static func saveListActivity<T>(
    id: OptionalArgument<Int> = .init(), locked: OptionalArgument<Bool> = .init(),
    selection: Selection<T, Objects.ListActivity?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.saveListActivity(id: id, locked: locked, selection: selection)
    }
  }
  /// Delete an activity item of the authenticated users

  public static func deleteActivity<T>(
    id: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.Deleted?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.deleteActivity(id: id, selection: selection)
    }
  }
  /// Toggle activity to be pinned to the top of the user's activity feed

  public static func toggleActivityPin<T>(
    id: OptionalArgument<Int> = .init(), pinned: OptionalArgument<Bool> = .init(),
    selection: Selection<T, Unions.ActivityUnion?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.toggleActivityPin(id: id, pinned: pinned, selection: selection)
    }
  }
  /// Toggle the subscription of an activity item

  public static func toggleActivitySubscription<T>(
    activityId: OptionalArgument<Int> = .init(), subscribe: OptionalArgument<Bool> = .init(),
    selection: Selection<T, Unions.ActivityUnion?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.toggleActivitySubscription(
        activityId: activityId, subscribe: subscribe, selection: selection)
    }
  }
  /// Create or update an activity reply

  public static func saveActivityReply<T>(
    id: OptionalArgument<Int> = .init(), activityId: OptionalArgument<Int> = .init(),
    text: OptionalArgument<String> = .init(), asMod: OptionalArgument<Bool> = .init(),
    selection: Selection<T, Objects.ActivityReply?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.saveActivityReply(
        id: id, activityId: activityId, text: text, asMod: asMod, selection: selection)
    }
  }
  /// Delete an activity reply of the authenticated users

  public static func deleteActivityReply<T>(
    id: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.Deleted?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.deleteActivityReply(id: id, selection: selection)
    }
  }
  /// Add or remove a like from a likeable type.
  ///                           Returns all the users who liked the same model

  public static func toggleLike<T>(
    id: OptionalArgument<Int> = .init(), type: OptionalArgument<Enums.LikeableType> = .init(),
    selection: Selection<T, [Objects.User?]?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.toggleLike(id: id, type: type, selection: selection)
    }
  }
  /// Add or remove a like from a likeable type.

  public static func toggleLikeV2<T>(
    id: OptionalArgument<Int> = .init(), type: OptionalArgument<Enums.LikeableType> = .init(),
    selection: Selection<T, Unions.LikeableUnion?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.toggleLikeV2(id: id, type: type, selection: selection)
    }
  }
  /// Toggle the un/following of a user

  public static func toggleFollow<T>(
    userId: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.User?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.toggleFollow(userId: userId, selection: selection)
    }
  }
  /// Favourite or unfavourite an anime, manga, character, staff member, or studio

  public static func toggleFavourite<T>(
    animeId: OptionalArgument<Int> = .init(), mangaId: OptionalArgument<Int> = .init(),
    characterId: OptionalArgument<Int> = .init(), staffId: OptionalArgument<Int> = .init(),
    studioId: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.Favourites?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.toggleFavourite(
        animeId: animeId, mangaId: mangaId, characterId: characterId, staffId: staffId,
        studioId: studioId, selection: selection)
    }
  }
  /// Update the order favourites are displayed in

  public static func updateFavouriteOrder<T>(
    animeIds: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mangaIds: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    characterIds: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    staffIds: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    studioIds: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    animeOrder: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mangaOrder: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    characterOrder: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    staffOrder: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    studioOrder: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    selection: Selection<T, Objects.Favourites?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.updateFavouriteOrder(
        animeIds: animeIds, mangaIds: mangaIds, characterIds: characterIds, staffIds: staffIds,
        studioIds: studioIds, animeOrder: animeOrder, mangaOrder: mangaOrder,
        characterOrder: characterOrder, staffOrder: staffOrder, studioOrder: studioOrder,
        selection: selection)
    }
  }
  /// Create or update a review

  public static func saveReview<T>(
    id: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    body: OptionalArgument<String> = .init(), summary: OptionalArgument<String> = .init(),
    score: OptionalArgument<Int> = .init(), `private`: OptionalArgument<Bool> = .init(),
    selection: Selection<T, Objects.Review?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.saveReview(
        id: id, mediaId: mediaId, body: body, summary: summary, score: score, private: `private`,
        selection: selection)
    }
  }
  /// Delete a review

  public static func deleteReview<T>(
    id: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.Deleted?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.deleteReview(id: id, selection: selection)
    }
  }
  /// Rate a review

  public static func rateReview<T>(
    reviewId: OptionalArgument<Int> = .init(),
    rating: OptionalArgument<Enums.ReviewRating> = .init(), selection: Selection<T, Objects.Review?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.rateReview(reviewId: reviewId, rating: rating, selection: selection)
    }
  }
  /// Recommendation a media

  public static func saveRecommendation<T>(
    mediaId: OptionalArgument<Int> = .init(),
    mediaRecommendationId: OptionalArgument<Int> = .init(),
    rating: OptionalArgument<Enums.RecommendationRating> = .init(),
    selection: Selection<T, Objects.Recommendation?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.saveRecommendation(
        mediaId: mediaId, mediaRecommendationId: mediaRecommendationId, rating: rating,
        selection: selection)
    }
  }
  /// Create or update a forum thread

  public static func saveThread<T>(
    id: OptionalArgument<Int> = .init(), title: OptionalArgument<String> = .init(),
    body: OptionalArgument<String> = .init(),
    categories: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaCategories: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sticky: OptionalArgument<Bool> = .init(), locked: OptionalArgument<Bool> = .init(),
    selection: Selection<T, Objects.Thread?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.saveThread(
        id: id, title: title, body: body, categories: categories, mediaCategories: mediaCategories,
        sticky: sticky, locked: locked, selection: selection)
    }
  }
  /// Delete a thread

  public static func deleteThread<T>(
    id: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.Deleted?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.deleteThread(id: id, selection: selection)
    }
  }
  /// Toggle the subscription of a forum thread

  public static func toggleThreadSubscription<T>(
    threadId: OptionalArgument<Int> = .init(), subscribe: OptionalArgument<Bool> = .init(),
    selection: Selection<T, Objects.Thread?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.toggleThreadSubscription(
        threadId: threadId, subscribe: subscribe, selection: selection)
    }
  }
  /// Create or update a thread comment

  public static func saveThreadComment<T>(
    id: OptionalArgument<Int> = .init(), threadId: OptionalArgument<Int> = .init(),
    parentCommentId: OptionalArgument<Int> = .init(), comment: OptionalArgument<String> = .init(),
    locked: OptionalArgument<Bool> = .init(), selection: Selection<T, Objects.ThreadComment?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.saveThreadComment(
        id: id, threadId: threadId, parentCommentId: parentCommentId, comment: comment,
        locked: locked, selection: selection)
    }
  }
  /// Delete a thread comment

  public static func deleteThreadComment<T>(
    id: OptionalArgument<Int> = .init(), selection: Selection<T, Objects.Deleted?>
  ) -> Selection<T, Objects.Mutation> {
    Selection<T, Objects.Mutation> {
      try $0.deleteThreadComment(id: id, selection: selection)
    }
  }

  public static func updateAniChartSettings(
    titleLanguage: OptionalArgument<String> = .init(),
    outgoingLinkProvider: OptionalArgument<String> = .init(),
    theme: OptionalArgument<String> = .init(), sort: OptionalArgument<String> = .init()
  ) -> Selection<AnyCodable?, Objects.Mutation> {
    Selection<AnyCodable?, Objects.Mutation> {
      try $0.updateAniChartSettings(
        titleLanguage: titleLanguage, outgoingLinkProvider: outgoingLinkProvider, theme: theme,
        sort: sort)
    }
  }

  public static func updateAniChartHighlights(
    highlights: OptionalArgument<[OptionalArgument<InputObjects.AniChartHighlightInput>]> = .init()
  ) -> Selection<AnyCodable?, Objects.Mutation> {
    Selection<AnyCodable?, Objects.Mutation> {
      try $0.updateAniChartHighlights(highlights: highlights)
    }
  }
}
extension Objects.Deleted {
  /// If an item has been successfully deleted

  public static func deleted() -> Selection<Bool?, Objects.Deleted> {
    Selection<Bool?, Objects.Deleted> {
      try $0.deleted()
    }
  }
}
extension Objects.InternalPage {

  public static func mediaSubmissions<T>(
    mediaId: OptionalArgument<Int> = .init(), submissionId: OptionalArgument<Int> = .init(),
    userId: OptionalArgument<Int> = .init(), assigneeId: OptionalArgument<Int> = .init(),
    status: OptionalArgument<Enums.SubmissionStatus> = .init(),
    type: OptionalArgument<Enums.MediaType> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.SubmissionSort>]> = .init(),
    selection: Selection<T, [Objects.MediaSubmission?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.mediaSubmissions(
        mediaId: mediaId, submissionId: submissionId, userId: userId, assigneeId: assigneeId,
        status: status, type: type, sort: sort, selection: selection)
    }
  }

  public static func characterSubmissions<T>(
    characterId: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    assigneeId: OptionalArgument<Int> = .init(),
    status: OptionalArgument<Enums.SubmissionStatus> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.SubmissionSort>]> = .init(),
    selection: Selection<T, [Objects.CharacterSubmission?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.characterSubmissions(
        characterId: characterId, userId: userId, assigneeId: assigneeId, status: status,
        sort: sort, selection: selection)
    }
  }

  public static func staffSubmissions<T>(
    staffId: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    assigneeId: OptionalArgument<Int> = .init(),
    status: OptionalArgument<Enums.SubmissionStatus> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.SubmissionSort>]> = .init(),
    selection: Selection<T, [Objects.StaffSubmission?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.staffSubmissions(
        staffId: staffId, userId: userId, assigneeId: assigneeId, status: status, sort: sort,
        selection: selection)
    }
  }

  public static func revisionHistory<T>(
    userId: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    characterId: OptionalArgument<Int> = .init(), staffId: OptionalArgument<Int> = .init(),
    studioId: OptionalArgument<Int> = .init(), selection: Selection<T, [Objects.RevisionHistory?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.revisionHistory(
        userId: userId, mediaId: mediaId, characterId: characterId, staffId: staffId,
        studioId: studioId, selection: selection)
    }
  }

  public static func reports<T>(
    reporterId: OptionalArgument<Int> = .init(), reportedId: OptionalArgument<Int> = .init(),
    selection: Selection<T, [Objects.Report?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.reports(reporterId: reporterId, reportedId: reportedId, selection: selection)
    }
  }

  public static func modActions<T>(
    userId: OptionalArgument<Int> = .init(), modId: OptionalArgument<Int> = .init(),
    selection: Selection<T, [Objects.ModAction?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.modActions(userId: userId, modId: modId, selection: selection)
    }
  }

  public static func userBlockSearch<T>(
    search: OptionalArgument<String> = .init(), selection: Selection<T, [Objects.User?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.userBlockSearch(search: search, selection: selection)
    }
  }
  /// The pagination information

  public static func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) -> Selection<
    T, Objects.InternalPage
  > {
    Selection<T, Objects.InternalPage> {
      try $0.pageInfo(selection: selection)
    }
  }

  public static func users<T>(
    id: OptionalArgument<Int> = .init(), name: OptionalArgument<String> = .init(),
    isModerator: OptionalArgument<Bool> = .init(), search: OptionalArgument<String> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.UserSort>]> = .init(),
    selection: Selection<T, [Objects.User?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.users(
        id: id, name: name, isModerator: isModerator, search: search, sort: sort,
        selection: selection)
    }
  }

  public static func media<T>(
    id: OptionalArgument<Int> = .init(), idMal: OptionalArgument<Int> = .init(),
    startDate: OptionalArgument<AnyCodable> = .init(),
    endDate: OptionalArgument<AnyCodable> = .init(),
    season: OptionalArgument<Enums.MediaSeason> = .init(),
    seasonYear: OptionalArgument<Int> = .init(), type: OptionalArgument<Enums.MediaType> = .init(),
    format: OptionalArgument<Enums.MediaFormat> = .init(),
    status: OptionalArgument<Enums.MediaStatus> = .init(),
    episodes: OptionalArgument<Int> = .init(), duration: OptionalArgument<Int> = .init(),
    chapters: OptionalArgument<Int> = .init(), volumes: OptionalArgument<Int> = .init(),
    isAdult: OptionalArgument<Bool> = .init(), genre: OptionalArgument<String> = .init(),
    tag: OptionalArgument<String> = .init(), minimumTagRank: OptionalArgument<Int> = .init(),
    tagCategory: OptionalArgument<String> = .init(), onList: OptionalArgument<Bool> = .init(),
    licensedBy: OptionalArgument<String> = .init(), licensedById: OptionalArgument<Int> = .init(),
    averageScore: OptionalArgument<Int> = .init(), popularity: OptionalArgument<Int> = .init(),
    source: OptionalArgument<Enums.MediaSource> = .init(),
    countryOfOrigin: OptionalArgument<AnyCodable> = .init(),
    isLicensed: OptionalArgument<Bool> = .init(), search: OptionalArgument<String> = .init(),
    idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idMalNot: OptionalArgument<Int> = .init(),
    idMalIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idMalNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    startDateGreater: OptionalArgument<AnyCodable> = .init(),
    startDateLesser: OptionalArgument<AnyCodable> = .init(),
    startDateLike: OptionalArgument<String> = .init(),
    endDateGreater: OptionalArgument<AnyCodable> = .init(),
    endDateLesser: OptionalArgument<AnyCodable> = .init(),
    endDateLike: OptionalArgument<String> = .init(),
    formatIn: OptionalArgument<[OptionalArgument<Enums.MediaFormat>]> = .init(),
    formatNot: OptionalArgument<Enums.MediaFormat> = .init(),
    formatNotIn: OptionalArgument<[OptionalArgument<Enums.MediaFormat>]> = .init(),
    statusIn: OptionalArgument<[OptionalArgument<Enums.MediaStatus>]> = .init(),
    statusNot: OptionalArgument<Enums.MediaStatus> = .init(),
    statusNotIn: OptionalArgument<[OptionalArgument<Enums.MediaStatus>]> = .init(),
    episodesGreater: OptionalArgument<Int> = .init(),
    episodesLesser: OptionalArgument<Int> = .init(),
    durationGreater: OptionalArgument<Int> = .init(),
    durationLesser: OptionalArgument<Int> = .init(),
    chaptersGreater: OptionalArgument<Int> = .init(),
    chaptersLesser: OptionalArgument<Int> = .init(),
    volumesGreater: OptionalArgument<Int> = .init(), volumesLesser: OptionalArgument<Int> = .init(),
    genreIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    genreNotIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagNotIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagCategoryIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    tagCategoryNotIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    licensedByIn: OptionalArgument<[OptionalArgument<String>]> = .init(),
    licensedByIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    averageScoreNot: OptionalArgument<Int> = .init(),
    averageScoreGreater: OptionalArgument<Int> = .init(),
    averageScoreLesser: OptionalArgument<Int> = .init(),
    popularityNot: OptionalArgument<Int> = .init(),
    popularityGreater: OptionalArgument<Int> = .init(),
    popularityLesser: OptionalArgument<Int> = .init(),
    sourceIn: OptionalArgument<[OptionalArgument<Enums.MediaSource>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.MediaSort>]> = .init(),
    selection: Selection<T, [Objects.Media?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.media(
        id: id, idMal: idMal, startDate: startDate, endDate: endDate, season: season,
        seasonYear: seasonYear, type: type, format: format, status: status, episodes: episodes,
        duration: duration, chapters: chapters, volumes: volumes, isAdult: isAdult, genre: genre,
        tag: tag, minimumTagRank: minimumTagRank, tagCategory: tagCategory, onList: onList,
        licensedBy: licensedBy, licensedById: licensedById, averageScore: averageScore,
        popularity: popularity, source: source, countryOfOrigin: countryOfOrigin,
        isLicensed: isLicensed, search: search, idNot: idNot, idIn: idIn, idNotIn: idNotIn,
        idMalNot: idMalNot, idMalIn: idMalIn, idMalNotIn: idMalNotIn,
        startDateGreater: startDateGreater, startDateLesser: startDateLesser,
        startDateLike: startDateLike, endDateGreater: endDateGreater, endDateLesser: endDateLesser,
        endDateLike: endDateLike, formatIn: formatIn, formatNot: formatNot,
        formatNotIn: formatNotIn, statusIn: statusIn, statusNot: statusNot,
        statusNotIn: statusNotIn, episodesGreater: episodesGreater, episodesLesser: episodesLesser,
        durationGreater: durationGreater, durationLesser: durationLesser,
        chaptersGreater: chaptersGreater, chaptersLesser: chaptersLesser,
        volumesGreater: volumesGreater, volumesLesser: volumesLesser, genreIn: genreIn,
        genreNotIn: genreNotIn, tagIn: tagIn, tagNotIn: tagNotIn, tagCategoryIn: tagCategoryIn,
        tagCategoryNotIn: tagCategoryNotIn, licensedByIn: licensedByIn,
        licensedByIdIn: licensedByIdIn, averageScoreNot: averageScoreNot,
        averageScoreGreater: averageScoreGreater, averageScoreLesser: averageScoreLesser,
        popularityNot: popularityNot, popularityGreater: popularityGreater,
        popularityLesser: popularityLesser, sourceIn: sourceIn, sort: sort, selection: selection)
    }
  }

  public static func characters<T>(
    id: OptionalArgument<Int> = .init(), isBirthday: OptionalArgument<Bool> = .init(),
    search: OptionalArgument<String> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.CharacterSort>]> = .init(),
    selection: Selection<T, [Objects.Character?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.characters(
        id: id, isBirthday: isBirthday, search: search, idNot: idNot, idIn: idIn, idNotIn: idNotIn,
        sort: sort, selection: selection)
    }
  }

  public static func staff<T>(
    id: OptionalArgument<Int> = .init(), isBirthday: OptionalArgument<Bool> = .init(),
    search: OptionalArgument<String> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.StaffSort>]> = .init(),
    selection: Selection<T, [Objects.Staff?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.staff(
        id: id, isBirthday: isBirthday, search: search, idNot: idNot, idIn: idIn, idNotIn: idNotIn,
        sort: sort, selection: selection)
    }
  }

  public static func studios<T>(
    id: OptionalArgument<Int> = .init(), search: OptionalArgument<String> = .init(),
    idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.StudioSort>]> = .init(),
    selection: Selection<T, [Objects.Studio?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.studios(
        id: id, search: search, idNot: idNot, idIn: idIn, idNotIn: idNotIn, sort: sort,
        selection: selection)
    }
  }

  public static func mediaList<T>(
    id: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    userName: OptionalArgument<String> = .init(), type: OptionalArgument<Enums.MediaType> = .init(),
    status: OptionalArgument<Enums.MediaListStatus> = .init(),
    mediaId: OptionalArgument<Int> = .init(), isFollowing: OptionalArgument<Bool> = .init(),
    notes: OptionalArgument<String> = .init(), startedAt: OptionalArgument<AnyCodable> = .init(),
    completedAt: OptionalArgument<AnyCodable> = .init(),
    compareWithAuthList: OptionalArgument<Bool> = .init(),
    userIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    statusIn: OptionalArgument<[OptionalArgument<Enums.MediaListStatus>]> = .init(),
    statusNotIn: OptionalArgument<[OptionalArgument<Enums.MediaListStatus>]> = .init(),
    statusNot: OptionalArgument<Enums.MediaListStatus> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    notesLike: OptionalArgument<String> = .init(),
    startedAtGreater: OptionalArgument<AnyCodable> = .init(),
    startedAtLesser: OptionalArgument<AnyCodable> = .init(),
    startedAtLike: OptionalArgument<String> = .init(),
    completedAtGreater: OptionalArgument<AnyCodable> = .init(),
    completedAtLesser: OptionalArgument<AnyCodable> = .init(),
    completedAtLike: OptionalArgument<String> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.MediaListSort>]> = .init(),
    selection: Selection<T, [Objects.MediaList?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.mediaList(
        id: id, userId: userId, userName: userName, type: type, status: status, mediaId: mediaId,
        isFollowing: isFollowing, notes: notes, startedAt: startedAt, completedAt: completedAt,
        compareWithAuthList: compareWithAuthList, userIdIn: userIdIn, statusIn: statusIn,
        statusNotIn: statusNotIn, statusNot: statusNot, mediaIdIn: mediaIdIn,
        mediaIdNotIn: mediaIdNotIn, notesLike: notesLike, startedAtGreater: startedAtGreater,
        startedAtLesser: startedAtLesser, startedAtLike: startedAtLike,
        completedAtGreater: completedAtGreater, completedAtLesser: completedAtLesser,
        completedAtLike: completedAtLike, sort: sort, selection: selection)
    }
  }

  public static func airingSchedules<T>(
    id: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    episode: OptionalArgument<Int> = .init(), airingAt: OptionalArgument<Int> = .init(),
    notYetAired: OptionalArgument<Bool> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNot: OptionalArgument<Int> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    episodeNot: OptionalArgument<Int> = .init(),
    episodeIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    episodeNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    episodeGreater: OptionalArgument<Int> = .init(), episodeLesser: OptionalArgument<Int> = .init(),
    airingAtGreater: OptionalArgument<Int> = .init(),
    airingAtLesser: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.AiringSort>]> = .init(),
    selection: Selection<T, [Objects.AiringSchedule?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.airingSchedules(
        id: id, mediaId: mediaId, episode: episode, airingAt: airingAt, notYetAired: notYetAired,
        idNot: idNot, idIn: idIn, idNotIn: idNotIn, mediaIdNot: mediaIdNot, mediaIdIn: mediaIdIn,
        mediaIdNotIn: mediaIdNotIn, episodeNot: episodeNot, episodeIn: episodeIn,
        episodeNotIn: episodeNotIn, episodeGreater: episodeGreater, episodeLesser: episodeLesser,
        airingAtGreater: airingAtGreater, airingAtLesser: airingAtLesser, sort: sort,
        selection: selection)
    }
  }

  public static func mediaTrends<T>(
    mediaId: OptionalArgument<Int> = .init(), date: OptionalArgument<Int> = .init(),
    trending: OptionalArgument<Int> = .init(), averageScore: OptionalArgument<Int> = .init(),
    popularity: OptionalArgument<Int> = .init(), episode: OptionalArgument<Int> = .init(),
    releasing: OptionalArgument<Bool> = .init(), mediaIdNot: OptionalArgument<Int> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    dateGreater: OptionalArgument<Int> = .init(), dateLesser: OptionalArgument<Int> = .init(),
    trendingGreater: OptionalArgument<Int> = .init(),
    trendingLesser: OptionalArgument<Int> = .init(), trendingNot: OptionalArgument<Int> = .init(),
    averageScoreGreater: OptionalArgument<Int> = .init(),
    averageScoreLesser: OptionalArgument<Int> = .init(),
    averageScoreNot: OptionalArgument<Int> = .init(),
    popularityGreater: OptionalArgument<Int> = .init(),
    popularityLesser: OptionalArgument<Int> = .init(),
    popularityNot: OptionalArgument<Int> = .init(), episodeGreater: OptionalArgument<Int> = .init(),
    episodeLesser: OptionalArgument<Int> = .init(), episodeNot: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.MediaTrendSort>]> = .init(),
    selection: Selection<T, [Objects.MediaTrend?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.mediaTrends(
        mediaId: mediaId, date: date, trending: trending, averageScore: averageScore,
        popularity: popularity, episode: episode, releasing: releasing, mediaIdNot: mediaIdNot,
        mediaIdIn: mediaIdIn, mediaIdNotIn: mediaIdNotIn, dateGreater: dateGreater,
        dateLesser: dateLesser, trendingGreater: trendingGreater, trendingLesser: trendingLesser,
        trendingNot: trendingNot, averageScoreGreater: averageScoreGreater,
        averageScoreLesser: averageScoreLesser, averageScoreNot: averageScoreNot,
        popularityGreater: popularityGreater, popularityLesser: popularityLesser,
        popularityNot: popularityNot, episodeGreater: episodeGreater, episodeLesser: episodeLesser,
        episodeNot: episodeNot, sort: sort, selection: selection)
    }
  }

  public static func notifications<T>(
    type: OptionalArgument<Enums.NotificationType> = .init(),
    resetNotificationCount: OptionalArgument<Bool> = .init(),
    typeIn: OptionalArgument<[OptionalArgument<Enums.NotificationType>]> = .init(),
    selection: Selection<T, [Unions.NotificationUnion?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.notifications(
        type: type, resetNotificationCount: resetNotificationCount, typeIn: typeIn,
        selection: selection)
    }
  }

  public static func followers<T>(
    userId: Int, sort: OptionalArgument<[OptionalArgument<Enums.UserSort>]> = .init(),
    selection: Selection<T, [Objects.User?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.followers(userId: userId, sort: sort, selection: selection)
    }
  }

  public static func following<T>(
    userId: Int, sort: OptionalArgument<[OptionalArgument<Enums.UserSort>]> = .init(),
    selection: Selection<T, [Objects.User?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.following(userId: userId, sort: sort, selection: selection)
    }
  }

  public static func activities<T>(
    id: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    messengerId: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    type: OptionalArgument<Enums.ActivityType> = .init(),
    isFollowing: OptionalArgument<Bool> = .init(), hasReplies: OptionalArgument<Bool> = .init(),
    hasRepliesOrTypeText: OptionalArgument<Bool> = .init(),
    createdAt: OptionalArgument<Int> = .init(), idNot: OptionalArgument<Int> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    idNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    userIdNot: OptionalArgument<Int> = .init(),
    userIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    userIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    messengerIdNot: OptionalArgument<Int> = .init(),
    messengerIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    messengerIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNot: OptionalArgument<Int> = .init(),
    mediaIdIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    mediaIdNotIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    typeNot: OptionalArgument<Enums.ActivityType> = .init(),
    typeIn: OptionalArgument<[OptionalArgument<Enums.ActivityType>]> = .init(),
    typeNotIn: OptionalArgument<[OptionalArgument<Enums.ActivityType>]> = .init(),
    createdAtGreater: OptionalArgument<Int> = .init(),
    createdAtLesser: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ActivitySort>]> = .init(),
    selection: Selection<T, [Unions.ActivityUnion?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.activities(
        id: id, userId: userId, messengerId: messengerId, mediaId: mediaId, type: type,
        isFollowing: isFollowing, hasReplies: hasReplies,
        hasRepliesOrTypeText: hasRepliesOrTypeText, createdAt: createdAt, idNot: idNot, idIn: idIn,
        idNotIn: idNotIn, userIdNot: userIdNot, userIdIn: userIdIn, userIdNotIn: userIdNotIn,
        messengerIdNot: messengerIdNot, messengerIdIn: messengerIdIn,
        messengerIdNotIn: messengerIdNotIn, mediaIdNot: mediaIdNot, mediaIdIn: mediaIdIn,
        mediaIdNotIn: mediaIdNotIn, typeNot: typeNot, typeIn: typeIn, typeNotIn: typeNotIn,
        createdAtGreater: createdAtGreater, createdAtLesser: createdAtLesser, sort: sort,
        selection: selection)
    }
  }

  public static func activityReplies<T>(
    id: OptionalArgument<Int> = .init(), activityId: OptionalArgument<Int> = .init(),
    selection: Selection<T, [Objects.ActivityReply?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.activityReplies(id: id, activityId: activityId, selection: selection)
    }
  }

  public static func threads<T>(
    id: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    replyUserId: OptionalArgument<Int> = .init(), subscribed: OptionalArgument<Bool> = .init(),
    categoryId: OptionalArgument<Int> = .init(), mediaCategoryId: OptionalArgument<Int> = .init(),
    search: OptionalArgument<String> = .init(),
    idIn: OptionalArgument<[OptionalArgument<Int>]> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ThreadSort>]> = .init(),
    selection: Selection<T, [Objects.Thread?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.threads(
        id: id, userId: userId, replyUserId: replyUserId, subscribed: subscribed,
        categoryId: categoryId, mediaCategoryId: mediaCategoryId, search: search, idIn: idIn,
        sort: sort, selection: selection)
    }
  }

  public static func threadComments<T>(
    id: OptionalArgument<Int> = .init(), threadId: OptionalArgument<Int> = .init(),
    userId: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ThreadCommentSort>]> = .init(),
    selection: Selection<T, [Objects.ThreadComment?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.threadComments(
        id: id, threadId: threadId, userId: userId, sort: sort, selection: selection)
    }
  }

  public static func reviews<T>(
    id: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    userId: OptionalArgument<Int> = .init(), mediaType: OptionalArgument<Enums.MediaType> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.ReviewSort>]> = .init(),
    selection: Selection<T, [Objects.Review?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.reviews(
        id: id, mediaId: mediaId, userId: userId, mediaType: mediaType, sort: sort,
        selection: selection)
    }
  }

  public static func recommendations<T>(
    id: OptionalArgument<Int> = .init(), mediaId: OptionalArgument<Int> = .init(),
    mediaRecommendationId: OptionalArgument<Int> = .init(), userId: OptionalArgument<Int> = .init(),
    rating: OptionalArgument<Int> = .init(), onList: OptionalArgument<Bool> = .init(),
    ratingGreater: OptionalArgument<Int> = .init(), ratingLesser: OptionalArgument<Int> = .init(),
    sort: OptionalArgument<[OptionalArgument<Enums.RecommendationSort>]> = .init(),
    selection: Selection<T, [Objects.Recommendation?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.recommendations(
        id: id, mediaId: mediaId, mediaRecommendationId: mediaRecommendationId, userId: userId,
        rating: rating, onList: onList, ratingGreater: ratingGreater, ratingLesser: ratingLesser,
        sort: sort, selection: selection)
    }
  }

  public static func likes<T>(
    likeableId: OptionalArgument<Int> = .init(),
    type: OptionalArgument<Enums.LikeableType> = .init(), selection: Selection<T, [Objects.User?]?>
  ) -> Selection<T, Objects.InternalPage> {
    Selection<T, Objects.InternalPage> {
      try $0.likes(likeableId: likeableId, type: type, selection: selection)
    }
  }
}
extension Objects.MediaSubmission {
  /// The id of the submission

  public static func id() -> Selection<Int, Objects.MediaSubmission> {
    Selection<Int, Objects.MediaSubmission> {
      try $0.id()
    }
  }
  /// User submitter of the submission

  public static func submitter<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.MediaSubmission
  > {
    Selection<T, Objects.MediaSubmission> {
      try $0.submitter(selection: selection)
    }
  }
  /// Data Mod assigned to handle the submission

  public static func assignee<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.MediaSubmission
  > {
    Selection<T, Objects.MediaSubmission> {
      try $0.assignee(selection: selection)
    }
  }
  /// Status of the submission

  public static func status() -> Selection<Enums.SubmissionStatus?, Objects.MediaSubmission> {
    Selection<Enums.SubmissionStatus?, Objects.MediaSubmission> {
      try $0.status()
    }
  }

  public static func submitterStats() -> Selection<AnyCodable?, Objects.MediaSubmission> {
    Selection<AnyCodable?, Objects.MediaSubmission> {
      try $0.submitterStats()
    }
  }

  public static func notes() -> Selection<String?, Objects.MediaSubmission> {
    Selection<String?, Objects.MediaSubmission> {
      try $0.notes()
    }
  }

  public static func source() -> Selection<String?, Objects.MediaSubmission> {
    Selection<String?, Objects.MediaSubmission> {
      try $0.source()
    }
  }

  public static func changes() -> Selection<[String?]?, Objects.MediaSubmission> {
    Selection<[String?]?, Objects.MediaSubmission> {
      try $0.changes()
    }
  }
  /// Whether the submission is locked

  public static func locked() -> Selection<Bool?, Objects.MediaSubmission> {
    Selection<Bool?, Objects.MediaSubmission> {
      try $0.locked()
    }
  }

  public static func media<T>(selection: Selection<T, Objects.Media?>) -> Selection<
    T, Objects.MediaSubmission
  > {
    Selection<T, Objects.MediaSubmission> {
      try $0.media(selection: selection)
    }
  }

  public static func submission<T>(selection: Selection<T, Objects.Media?>) -> Selection<
    T, Objects.MediaSubmission
  > {
    Selection<T, Objects.MediaSubmission> {
      try $0.submission(selection: selection)
    }
  }

  public static func characters<T>(selection: Selection<T, [Objects.MediaSubmissionComparison?]?>)
    -> Selection<T, Objects.MediaSubmission>
  {
    Selection<T, Objects.MediaSubmission> {
      try $0.characters(selection: selection)
    }
  }

  public static func staff<T>(selection: Selection<T, [Objects.MediaSubmissionComparison?]?>)
    -> Selection<T, Objects.MediaSubmission>
  {
    Selection<T, Objects.MediaSubmission> {
      try $0.staff(selection: selection)
    }
  }

  public static func studios<T>(selection: Selection<T, [Objects.MediaSubmissionComparison?]?>)
    -> Selection<T, Objects.MediaSubmission>
  {
    Selection<T, Objects.MediaSubmission> {
      try $0.studios(selection: selection)
    }
  }

  public static func relations<T>(selection: Selection<T, [Objects.MediaEdge?]?>) -> Selection<
    T, Objects.MediaSubmission
  > {
    Selection<T, Objects.MediaSubmission> {
      try $0.relations(selection: selection)
    }
  }

  public static func externalLinks<T>(
    selection: Selection<T, [Objects.MediaSubmissionComparison?]?>
  ) -> Selection<T, Objects.MediaSubmission> {
    Selection<T, Objects.MediaSubmission> {
      try $0.externalLinks(selection: selection)
    }
  }

  public static func createdAt() -> Selection<Int?, Objects.MediaSubmission> {
    Selection<Int?, Objects.MediaSubmission> {
      try $0.createdAt()
    }
  }
}
extension Objects.MediaSubmissionComparison {

  public static func submission<T>(selection: Selection<T, Objects.MediaSubmissionEdge?>)
    -> Selection<T, Objects.MediaSubmissionComparison>
  {
    Selection<T, Objects.MediaSubmissionComparison> {
      try $0.submission(selection: selection)
    }
  }

  public static func character<T>(selection: Selection<T, Objects.MediaCharacter?>) -> Selection<
    T, Objects.MediaSubmissionComparison
  > {
    Selection<T, Objects.MediaSubmissionComparison> {
      try $0.character(selection: selection)
    }
  }

  public static func staff<T>(selection: Selection<T, Objects.StaffEdge?>) -> Selection<
    T, Objects.MediaSubmissionComparison
  > {
    Selection<T, Objects.MediaSubmissionComparison> {
      try $0.staff(selection: selection)
    }
  }

  public static func studio<T>(selection: Selection<T, Objects.StudioEdge?>) -> Selection<
    T, Objects.MediaSubmissionComparison
  > {
    Selection<T, Objects.MediaSubmissionComparison> {
      try $0.studio(selection: selection)
    }
  }

  public static func externalLink<T>(selection: Selection<T, Objects.MediaExternalLink?>)
    -> Selection<T, Objects.MediaSubmissionComparison>
  {
    Selection<T, Objects.MediaSubmissionComparison> {
      try $0.externalLink(selection: selection)
    }
  }
}
extension Objects.MediaSubmissionEdge {
  /// The id of the direct submission

  public static func id() -> Selection<Int?, Objects.MediaSubmissionEdge> {
    Selection<Int?, Objects.MediaSubmissionEdge> {
      try $0.id()
    }
  }

  public static func characterRole() -> Selection<Enums.CharacterRole?, Objects.MediaSubmissionEdge>
  {
    Selection<Enums.CharacterRole?, Objects.MediaSubmissionEdge> {
      try $0.characterRole()
    }
  }

  public static func staffRole() -> Selection<String?, Objects.MediaSubmissionEdge> {
    Selection<String?, Objects.MediaSubmissionEdge> {
      try $0.staffRole()
    }
  }

  public static func roleNotes() -> Selection<String?, Objects.MediaSubmissionEdge> {
    Selection<String?, Objects.MediaSubmissionEdge> {
      try $0.roleNotes()
    }
  }

  public static func dubGroup() -> Selection<String?, Objects.MediaSubmissionEdge> {
    Selection<String?, Objects.MediaSubmissionEdge> {
      try $0.dubGroup()
    }
  }

  public static func characterName() -> Selection<String?, Objects.MediaSubmissionEdge> {
    Selection<String?, Objects.MediaSubmissionEdge> {
      try $0.characterName()
    }
  }

  public static func isMain() -> Selection<Bool?, Objects.MediaSubmissionEdge> {
    Selection<Bool?, Objects.MediaSubmissionEdge> {
      try $0.isMain()
    }
  }

  public static func character<T>(selection: Selection<T, Objects.Character?>) -> Selection<
    T, Objects.MediaSubmissionEdge
  > {
    Selection<T, Objects.MediaSubmissionEdge> {
      try $0.character(selection: selection)
    }
  }

  public static func characterSubmission<T>(selection: Selection<T, Objects.Character?>)
    -> Selection<T, Objects.MediaSubmissionEdge>
  {
    Selection<T, Objects.MediaSubmissionEdge> {
      try $0.characterSubmission(selection: selection)
    }
  }

  public static func voiceActor<T>(selection: Selection<T, Objects.Staff?>) -> Selection<
    T, Objects.MediaSubmissionEdge
  > {
    Selection<T, Objects.MediaSubmissionEdge> {
      try $0.voiceActor(selection: selection)
    }
  }

  public static func voiceActorSubmission<T>(selection: Selection<T, Objects.Staff?>) -> Selection<
    T, Objects.MediaSubmissionEdge
  > {
    Selection<T, Objects.MediaSubmissionEdge> {
      try $0.voiceActorSubmission(selection: selection)
    }
  }

  public static func staff<T>(selection: Selection<T, Objects.Staff?>) -> Selection<
    T, Objects.MediaSubmissionEdge
  > {
    Selection<T, Objects.MediaSubmissionEdge> {
      try $0.staff(selection: selection)
    }
  }

  public static func staffSubmission<T>(selection: Selection<T, Objects.Staff?>) -> Selection<
    T, Objects.MediaSubmissionEdge
  > {
    Selection<T, Objects.MediaSubmissionEdge> {
      try $0.staffSubmission(selection: selection)
    }
  }

  public static func studio<T>(selection: Selection<T, Objects.Studio?>) -> Selection<
    T, Objects.MediaSubmissionEdge
  > {
    Selection<T, Objects.MediaSubmissionEdge> {
      try $0.studio(selection: selection)
    }
  }

  public static func externalLink<T>(selection: Selection<T, Objects.MediaExternalLink?>)
    -> Selection<T, Objects.MediaSubmissionEdge>
  {
    Selection<T, Objects.MediaSubmissionEdge> {
      try $0.externalLink(selection: selection)
    }
  }

  public static func media<T>(selection: Selection<T, Objects.Media?>) -> Selection<
    T, Objects.MediaSubmissionEdge
  > {
    Selection<T, Objects.MediaSubmissionEdge> {
      try $0.media(selection: selection)
    }
  }
}
extension Objects.MediaCharacter {
  /// The id of the connection

  public static func id() -> Selection<Int?, Objects.MediaCharacter> {
    Selection<Int?, Objects.MediaCharacter> {
      try $0.id()
    }
  }
  /// The characters role in the media

  public static func role() -> Selection<Enums.CharacterRole?, Objects.MediaCharacter> {
    Selection<Enums.CharacterRole?, Objects.MediaCharacter> {
      try $0.role()
    }
  }

  public static func roleNotes() -> Selection<String?, Objects.MediaCharacter> {
    Selection<String?, Objects.MediaCharacter> {
      try $0.roleNotes()
    }
  }

  public static func dubGroup() -> Selection<String?, Objects.MediaCharacter> {
    Selection<String?, Objects.MediaCharacter> {
      try $0.dubGroup()
    }
  }
  /// Media specific character name

  public static func characterName() -> Selection<String?, Objects.MediaCharacter> {
    Selection<String?, Objects.MediaCharacter> {
      try $0.characterName()
    }
  }
  /// The characters in the media voiced by the parent actor

  public static func character<T>(selection: Selection<T, Objects.Character?>) -> Selection<
    T, Objects.MediaCharacter
  > {
    Selection<T, Objects.MediaCharacter> {
      try $0.character(selection: selection)
    }
  }
  /// The voice actor of the character

  public static func voiceActor<T>(selection: Selection<T, Objects.Staff?>) -> Selection<
    T, Objects.MediaCharacter
  > {
    Selection<T, Objects.MediaCharacter> {
      try $0.voiceActor(selection: selection)
    }
  }
}
extension Objects.CharacterSubmission {
  /// The id of the submission

  public static func id() -> Selection<Int, Objects.CharacterSubmission> {
    Selection<Int, Objects.CharacterSubmission> {
      try $0.id()
    }
  }
  /// Character that the submission is referencing

  public static func character<T>(selection: Selection<T, Objects.Character?>) -> Selection<
    T, Objects.CharacterSubmission
  > {
    Selection<T, Objects.CharacterSubmission> {
      try $0.character(selection: selection)
    }
  }
  /// The character submission changes

  public static func submission<T>(selection: Selection<T, Objects.Character?>) -> Selection<
    T, Objects.CharacterSubmission
  > {
    Selection<T, Objects.CharacterSubmission> {
      try $0.submission(selection: selection)
    }
  }
  /// Submitter for the submission

  public static func submitter<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.CharacterSubmission
  > {
    Selection<T, Objects.CharacterSubmission> {
      try $0.submitter(selection: selection)
    }
  }
  /// Data Mod assigned to handle the submission

  public static func assignee<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.CharacterSubmission
  > {
    Selection<T, Objects.CharacterSubmission> {
      try $0.assignee(selection: selection)
    }
  }
  /// Status of the submission

  public static func status() -> Selection<Enums.SubmissionStatus?, Objects.CharacterSubmission> {
    Selection<Enums.SubmissionStatus?, Objects.CharacterSubmission> {
      try $0.status()
    }
  }
  /// Inner details of submission status

  public static func notes() -> Selection<String?, Objects.CharacterSubmission> {
    Selection<String?, Objects.CharacterSubmission> {
      try $0.notes()
    }
  }

  public static func source() -> Selection<String?, Objects.CharacterSubmission> {
    Selection<String?, Objects.CharacterSubmission> {
      try $0.source()
    }
  }
  /// Whether the submission is locked

  public static func locked() -> Selection<Bool?, Objects.CharacterSubmission> {
    Selection<Bool?, Objects.CharacterSubmission> {
      try $0.locked()
    }
  }

  public static func createdAt() -> Selection<Int?, Objects.CharacterSubmission> {
    Selection<Int?, Objects.CharacterSubmission> {
      try $0.createdAt()
    }
  }
}
extension Objects.StaffSubmission {
  /// The id of the submission

  public static func id() -> Selection<Int, Objects.StaffSubmission> {
    Selection<Int, Objects.StaffSubmission> {
      try $0.id()
    }
  }
  /// Staff that the submission is referencing

  public static func staff<T>(selection: Selection<T, Objects.Staff?>) -> Selection<
    T, Objects.StaffSubmission
  > {
    Selection<T, Objects.StaffSubmission> {
      try $0.staff(selection: selection)
    }
  }
  /// The staff submission changes

  public static func submission<T>(selection: Selection<T, Objects.Staff?>) -> Selection<
    T, Objects.StaffSubmission
  > {
    Selection<T, Objects.StaffSubmission> {
      try $0.submission(selection: selection)
    }
  }
  /// Submitter for the submission

  public static func submitter<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.StaffSubmission
  > {
    Selection<T, Objects.StaffSubmission> {
      try $0.submitter(selection: selection)
    }
  }
  /// Data Mod assigned to handle the submission

  public static func assignee<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.StaffSubmission
  > {
    Selection<T, Objects.StaffSubmission> {
      try $0.assignee(selection: selection)
    }
  }
  /// Status of the submission

  public static func status() -> Selection<Enums.SubmissionStatus?, Objects.StaffSubmission> {
    Selection<Enums.SubmissionStatus?, Objects.StaffSubmission> {
      try $0.status()
    }
  }
  /// Inner details of submission status

  public static func notes() -> Selection<String?, Objects.StaffSubmission> {
    Selection<String?, Objects.StaffSubmission> {
      try $0.notes()
    }
  }

  public static func source() -> Selection<String?, Objects.StaffSubmission> {
    Selection<String?, Objects.StaffSubmission> {
      try $0.source()
    }
  }
  /// Whether the submission is locked

  public static func locked() -> Selection<Bool?, Objects.StaffSubmission> {
    Selection<Bool?, Objects.StaffSubmission> {
      try $0.locked()
    }
  }

  public static func createdAt() -> Selection<Int?, Objects.StaffSubmission> {
    Selection<Int?, Objects.StaffSubmission> {
      try $0.createdAt()
    }
  }
}
extension Objects.RevisionHistory {
  /// The id of the media

  public static func id() -> Selection<Int, Objects.RevisionHistory> {
    Selection<Int, Objects.RevisionHistory> {
      try $0.id()
    }
  }
  /// The action taken on the objects

  public static func action() -> Selection<Enums.RevisionHistoryAction?, Objects.RevisionHistory> {
    Selection<Enums.RevisionHistoryAction?, Objects.RevisionHistory> {
      try $0.action()
    }
  }
  /// A JSON object of the fields that changed

  public static func changes() -> Selection<AnyCodable?, Objects.RevisionHistory> {
    Selection<AnyCodable?, Objects.RevisionHistory> {
      try $0.changes()
    }
  }
  /// The user who made the edit to the object

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.RevisionHistory
  > {
    Selection<T, Objects.RevisionHistory> {
      try $0.user(selection: selection)
    }
  }
  /// The media the mod feed entry references

  public static func media<T>(selection: Selection<T, Objects.Media?>) -> Selection<
    T, Objects.RevisionHistory
  > {
    Selection<T, Objects.RevisionHistory> {
      try $0.media(selection: selection)
    }
  }
  /// The character the mod feed entry references

  public static func character<T>(selection: Selection<T, Objects.Character?>) -> Selection<
    T, Objects.RevisionHistory
  > {
    Selection<T, Objects.RevisionHistory> {
      try $0.character(selection: selection)
    }
  }
  /// The staff member the mod feed entry references

  public static func staff<T>(selection: Selection<T, Objects.Staff?>) -> Selection<
    T, Objects.RevisionHistory
  > {
    Selection<T, Objects.RevisionHistory> {
      try $0.staff(selection: selection)
    }
  }
  /// The studio the mod feed entry references

  public static func studio<T>(selection: Selection<T, Objects.Studio?>) -> Selection<
    T, Objects.RevisionHistory
  > {
    Selection<T, Objects.RevisionHistory> {
      try $0.studio(selection: selection)
    }
  }
  /// The external link source the mod feed entry references

  public static func externalLink<T>(selection: Selection<T, Objects.MediaExternalLink?>)
    -> Selection<T, Objects.RevisionHistory>
  {
    Selection<T, Objects.RevisionHistory> {
      try $0.externalLink(selection: selection)
    }
  }
  /// When the mod feed entry was created

  public static func createdAt() -> Selection<Int?, Objects.RevisionHistory> {
    Selection<Int?, Objects.RevisionHistory> {
      try $0.createdAt()
    }
  }
}
extension Objects.Report {

  public static func id() -> Selection<Int, Objects.Report> {
    Selection<Int, Objects.Report> {
      try $0.id()
    }
  }

  public static func reporter<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.Report
  > {
    Selection<T, Objects.Report> {
      try $0.reporter(selection: selection)
    }
  }

  public static func reported<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.Report
  > {
    Selection<T, Objects.Report> {
      try $0.reported(selection: selection)
    }
  }

  public static func reason() -> Selection<String?, Objects.Report> {
    Selection<String?, Objects.Report> {
      try $0.reason()
    }
  }
  /// When the entry data was created

  public static func createdAt() -> Selection<Int?, Objects.Report> {
    Selection<Int?, Objects.Report> {
      try $0.createdAt()
    }
  }

  public static func cleared() -> Selection<Bool?, Objects.Report> {
    Selection<Bool?, Objects.Report> {
      try $0.cleared()
    }
  }
}
extension Objects.ModAction {
  /// The id of the action

  public static func id() -> Selection<Int, Objects.ModAction> {
    Selection<Int, Objects.ModAction> {
      try $0.id()
    }
  }

  public static func user<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.ModAction
  > {
    Selection<T, Objects.ModAction> {
      try $0.user(selection: selection)
    }
  }

  public static func mod<T>(selection: Selection<T, Objects.User?>) -> Selection<
    T, Objects.ModAction
  > {
    Selection<T, Objects.ModAction> {
      try $0.mod(selection: selection)
    }
  }

  public static func type() -> Selection<Enums.ModActionType?, Objects.ModAction> {
    Selection<Enums.ModActionType?, Objects.ModAction> {
      try $0.type()
    }
  }

  public static func objectId() -> Selection<Int?, Objects.ModAction> {
    Selection<Int?, Objects.ModAction> {
      try $0.objectId()
    }
  }

  public static func objectType() -> Selection<String?, Objects.ModAction> {
    Selection<String?, Objects.ModAction> {
      try $0.objectType()
    }
  }

  public static func data() -> Selection<String?, Objects.ModAction> {
    Selection<String?, Objects.ModAction> {
      try $0.data()
    }
  }

  public static func createdAt() -> Selection<Int, Objects.ModAction> {
    Selection<Int, Objects.ModAction> {
      try $0.createdAt()
    }
  }
}
extension Objects.CharacterSubmissionConnection {

  public static func edges<T>(selection: Selection<T, [Objects.CharacterSubmissionEdge?]?>)
    -> Selection<T, Objects.CharacterSubmissionConnection>
  {
    Selection<T, Objects.CharacterSubmissionConnection> {
      try $0.edges(selection: selection)
    }
  }

  public static func nodes<T>(selection: Selection<T, [Objects.CharacterSubmission?]?>)
    -> Selection<T, Objects.CharacterSubmissionConnection>
  {
    Selection<T, Objects.CharacterSubmissionConnection> {
      try $0.nodes(selection: selection)
    }
  }
  /// The pagination information

  public static func pageInfo<T>(selection: Selection<T, Objects.PageInfo?>) -> Selection<
    T, Objects.CharacterSubmissionConnection
  > {
    Selection<T, Objects.CharacterSubmissionConnection> {
      try $0.pageInfo(selection: selection)
    }
  }
}
extension Objects.CharacterSubmissionEdge {

  public static func node<T>(selection: Selection<T, Objects.CharacterSubmission?>) -> Selection<
    T, Objects.CharacterSubmissionEdge
  > {
    Selection<T, Objects.CharacterSubmissionEdge> {
      try $0.node(selection: selection)
    }
  }
  /// The characters role in the media

  public static func role() -> Selection<Enums.CharacterRole?, Objects.CharacterSubmissionEdge> {
    Selection<Enums.CharacterRole?, Objects.CharacterSubmissionEdge> {
      try $0.role()
    }
  }
  /// The voice actors of the character

  public static func voiceActors<T>(selection: Selection<T, [Objects.Staff?]?>) -> Selection<
    T, Objects.CharacterSubmissionEdge
  > {
    Selection<T, Objects.CharacterSubmissionEdge> {
      try $0.voiceActors(selection: selection)
    }
  }
  /// The submitted voice actors of the character

  public static func submittedVoiceActors<T>(selection: Selection<T, [Objects.StaffSubmission?]?>)
    -> Selection<T, Objects.CharacterSubmissionEdge>
  {
    Selection<T, Objects.CharacterSubmissionEdge> {
      try $0.submittedVoiceActors(selection: selection)
    }
  }
}
extension Objects.UserModData {

  public static func alts<T>(selection: Selection<T, [Objects.User?]?>) -> Selection<
    T, Objects.UserModData
  > {
    Selection<T, Objects.UserModData> {
      try $0.alts(selection: selection)
    }
  }

  public static func bans() -> Selection<AnyCodable?, Objects.UserModData> {
    Selection<AnyCodable?, Objects.UserModData> {
      try $0.bans()
    }
  }

  public static func ip() -> Selection<AnyCodable?, Objects.UserModData> {
    Selection<AnyCodable?, Objects.UserModData> {
      try $0.ip()
    }
  }

  public static func counts() -> Selection<AnyCodable?, Objects.UserModData> {
    Selection<AnyCodable?, Objects.UserModData> {
      try $0.counts()
    }
  }

  public static func privacy() -> Selection<Int?, Objects.UserModData> {
    Selection<Int?, Objects.UserModData> {
      try $0.privacy()
    }
  }

  public static func email() -> Selection<String?, Objects.UserModData> {
    Selection<String?, Objects.UserModData> {
      try $0.email()
    }
  }
}

// MARK: - Interfaces
public enum Interfaces {}

// MARK: - Unions
public enum Unions {}
extension Unions {
  public struct NotificationUnion {}
}

extension Fields where TypeLock == Unions.NotificationUnion {
  public func on<T>(
    airingNotification: Selection<T, Objects.AiringNotification>,
    followingNotification: Selection<T, Objects.FollowingNotification>,
    activityMessageNotification: Selection<T, Objects.ActivityMessageNotification>,
    activityMentionNotification: Selection<T, Objects.ActivityMentionNotification>,
    activityReplyNotification: Selection<T, Objects.ActivityReplyNotification>,
    activityReplySubscribedNotification: Selection<T, Objects.ActivityReplySubscribedNotification>,
    activityLikeNotification: Selection<T, Objects.ActivityLikeNotification>,
    activityReplyLikeNotification: Selection<T, Objects.ActivityReplyLikeNotification>,
    threadCommentMentionNotification: Selection<T, Objects.ThreadCommentMentionNotification>,
    threadCommentReplyNotification: Selection<T, Objects.ThreadCommentReplyNotification>,
    threadCommentSubscribedNotification: Selection<T, Objects.ThreadCommentSubscribedNotification>,
    threadCommentLikeNotification: Selection<T, Objects.ThreadCommentLikeNotification>,
    threadLikeNotification: Selection<T, Objects.ThreadLikeNotification>,
    relatedMediaAdditionNotification: Selection<T, Objects.RelatedMediaAdditionNotification>,
    mediaDataChangeNotification: Selection<T, Objects.MediaDataChangeNotification>,
    mediaMergeNotification: Selection<T, Objects.MediaMergeNotification>,
    mediaDeletionNotification: Selection<T, Objects.MediaDeletionNotification>
  ) throws -> T {
    self.__select([
      GraphQLField.fragment(
        type: "AiringNotification", interface: "Unions.NotificationUnion",
        selection: airingNotification.__selection()),
      GraphQLField.fragment(
        type: "FollowingNotification", interface: "Unions.NotificationUnion",
        selection: followingNotification.__selection()),
      GraphQLField.fragment(
        type: "ActivityMessageNotification", interface: "Unions.NotificationUnion",
        selection: activityMessageNotification.__selection()),
      GraphQLField.fragment(
        type: "ActivityMentionNotification", interface: "Unions.NotificationUnion",
        selection: activityMentionNotification.__selection()),
      GraphQLField.fragment(
        type: "ActivityReplyNotification", interface: "Unions.NotificationUnion",
        selection: activityReplyNotification.__selection()),
      GraphQLField.fragment(
        type: "ActivityReplySubscribedNotification", interface: "Unions.NotificationUnion",
        selection: activityReplySubscribedNotification.__selection()),
      GraphQLField.fragment(
        type: "ActivityLikeNotification", interface: "Unions.NotificationUnion",
        selection: activityLikeNotification.__selection()),
      GraphQLField.fragment(
        type: "ActivityReplyLikeNotification", interface: "Unions.NotificationUnion",
        selection: activityReplyLikeNotification.__selection()),
      GraphQLField.fragment(
        type: "ThreadCommentMentionNotification", interface: "Unions.NotificationUnion",
        selection: threadCommentMentionNotification.__selection()),
      GraphQLField.fragment(
        type: "ThreadCommentReplyNotification", interface: "Unions.NotificationUnion",
        selection: threadCommentReplyNotification.__selection()),
      GraphQLField.fragment(
        type: "ThreadCommentSubscribedNotification", interface: "Unions.NotificationUnion",
        selection: threadCommentSubscribedNotification.__selection()),
      GraphQLField.fragment(
        type: "ThreadCommentLikeNotification", interface: "Unions.NotificationUnion",
        selection: threadCommentLikeNotification.__selection()),
      GraphQLField.fragment(
        type: "ThreadLikeNotification", interface: "Unions.NotificationUnion",
        selection: threadLikeNotification.__selection()),
      GraphQLField.fragment(
        type: "RelatedMediaAdditionNotification", interface: "Unions.NotificationUnion",
        selection: relatedMediaAdditionNotification.__selection()),
      GraphQLField.fragment(
        type: "MediaDataChangeNotification", interface: "Unions.NotificationUnion",
        selection: mediaDataChangeNotification.__selection()),
      GraphQLField.fragment(
        type: "MediaMergeNotification", interface: "Unions.NotificationUnion",
        selection: mediaMergeNotification.__selection()),
      GraphQLField.fragment(
        type: "MediaDeletionNotification", interface: "Unions.NotificationUnion",
        selection: mediaDeletionNotification.__selection()),
    ])

    switch self.__state {
    case .decoding(let data):
      let typename = try self.__decode(field: "__typename") { $0.value as? String }
      switch typename {
      case "AiringNotification":
        return try airingNotification.__decode(data: data)
      case "FollowingNotification":
        return try followingNotification.__decode(data: data)
      case "ActivityMessageNotification":
        return try activityMessageNotification.__decode(data: data)
      case "ActivityMentionNotification":
        return try activityMentionNotification.__decode(data: data)
      case "ActivityReplyNotification":
        return try activityReplyNotification.__decode(data: data)
      case "ActivityReplySubscribedNotification":
        return try activityReplySubscribedNotification.__decode(data: data)
      case "ActivityLikeNotification":
        return try activityLikeNotification.__decode(data: data)
      case "ActivityReplyLikeNotification":
        return try activityReplyLikeNotification.__decode(data: data)
      case "ThreadCommentMentionNotification":
        return try threadCommentMentionNotification.__decode(data: data)
      case "ThreadCommentReplyNotification":
        return try threadCommentReplyNotification.__decode(data: data)
      case "ThreadCommentSubscribedNotification":
        return try threadCommentSubscribedNotification.__decode(data: data)
      case "ThreadCommentLikeNotification":
        return try threadCommentLikeNotification.__decode(data: data)
      case "ThreadLikeNotification":
        return try threadLikeNotification.__decode(data: data)
      case "RelatedMediaAdditionNotification":
        return try relatedMediaAdditionNotification.__decode(data: data)
      case "MediaDataChangeNotification":
        return try mediaDataChangeNotification.__decode(data: data)
      case "MediaMergeNotification":
        return try mediaMergeNotification.__decode(data: data)
      case "MediaDeletionNotification":
        return try mediaDeletionNotification.__decode(data: data)
      default:
        throw ObjectDecodingError.unknownInterfaceType(
          interface: "Unions.NotificationUnion", typename: typename)
      }
    case .selecting:
      return try airingNotification.__mock()
    }
  }
}

extension Selection where T == Never, TypeLock == Never {
  public typealias NotificationUnion<W> = Selection<W, Unions.NotificationUnion>
}
extension Unions {
  public struct ActivityUnion {}
}

extension Fields where TypeLock == Unions.ActivityUnion {
  public func on<T>(
    textActivity: Selection<T, Objects.TextActivity>,
    listActivity: Selection<T, Objects.ListActivity>,
    messageActivity: Selection<T, Objects.MessageActivity>
  ) throws -> T {
    self.__select([
      GraphQLField.fragment(
        type: "TextActivity", interface: "Unions.ActivityUnion",
        selection: textActivity.__selection()),
      GraphQLField.fragment(
        type: "ListActivity", interface: "Unions.ActivityUnion",
        selection: listActivity.__selection()),
      GraphQLField.fragment(
        type: "MessageActivity", interface: "Unions.ActivityUnion",
        selection: messageActivity.__selection()),
    ])

    switch self.__state {
    case .decoding(let data):
      let typename = try self.__decode(field: "__typename") { $0.value as? String }
      switch typename {
      case "TextActivity":
        return try textActivity.__decode(data: data)
      case "ListActivity":
        return try listActivity.__decode(data: data)
      case "MessageActivity":
        return try messageActivity.__decode(data: data)
      default:
        throw ObjectDecodingError.unknownInterfaceType(
          interface: "Unions.ActivityUnion", typename: typename)
      }
    case .selecting:
      return try textActivity.__mock()
    }
  }
}

extension Selection where T == Never, TypeLock == Never {
  public typealias ActivityUnion<W> = Selection<W, Unions.ActivityUnion>
}
extension Unions {
  public struct LikeableUnion {}
}

extension Fields where TypeLock == Unions.LikeableUnion {
  public func on<T>(
    listActivity: Selection<T, Objects.ListActivity>,
    textActivity: Selection<T, Objects.TextActivity>,
    messageActivity: Selection<T, Objects.MessageActivity>,
    activityReply: Selection<T, Objects.ActivityReply>, thread: Selection<T, Objects.Thread>,
    threadComment: Selection<T, Objects.ThreadComment>
  ) throws -> T {
    self.__select([
      GraphQLField.fragment(
        type: "ListActivity", interface: "Unions.LikeableUnion",
        selection: listActivity.__selection()),
      GraphQLField.fragment(
        type: "TextActivity", interface: "Unions.LikeableUnion",
        selection: textActivity.__selection()),
      GraphQLField.fragment(
        type: "MessageActivity", interface: "Unions.LikeableUnion",
        selection: messageActivity.__selection()),
      GraphQLField.fragment(
        type: "ActivityReply", interface: "Unions.LikeableUnion",
        selection: activityReply.__selection()),
      GraphQLField.fragment(
        type: "Thread", interface: "Unions.LikeableUnion", selection: thread.__selection()),
      GraphQLField.fragment(
        type: "ThreadComment", interface: "Unions.LikeableUnion",
        selection: threadComment.__selection()),
    ])

    switch self.__state {
    case .decoding(let data):
      let typename = try self.__decode(field: "__typename") { $0.value as? String }
      switch typename {
      case "ListActivity":
        return try listActivity.__decode(data: data)
      case "TextActivity":
        return try textActivity.__decode(data: data)
      case "MessageActivity":
        return try messageActivity.__decode(data: data)
      case "ActivityReply":
        return try activityReply.__decode(data: data)
      case "Thread":
        return try thread.__decode(data: data)
      case "ThreadComment":
        return try threadComment.__decode(data: data)
      default:
        throw ObjectDecodingError.unknownInterfaceType(
          interface: "Unions.LikeableUnion", typename: typename)
      }
    case .selecting:
      return try listActivity.__mock()
    }
  }
}

extension Selection where T == Never, TypeLock == Never {
  public typealias LikeableUnion<W> = Selection<W, Unions.LikeableUnion>
}

// MARK: - Enums
public enum Enums {}
extension Enums {
  /// User sort enums
  public enum UserSort: String, CaseIterable, Codable {

    case id = "ID"

    case idDesc = "ID_DESC"

    case username = "USERNAME"

    case usernameDesc = "USERNAME_DESC"

    case watchedTime = "WATCHED_TIME"

    case watchedTimeDesc = "WATCHED_TIME_DESC"

    case chaptersRead = "CHAPTERS_READ"

    case chaptersReadDesc = "CHAPTERS_READ_DESC"

    case searchMatch = "SEARCH_MATCH"
  }
}

extension Enums.UserSort: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.UserSort(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "UserSort",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.id
}
extension Enums {
  /// The language the user wants to see media titles in
  public enum UserTitleLanguage: String, CaseIterable, Codable {
    /// The romanization of the native language title
    case romaji = "ROMAJI"
    /// The official english title
    case english = "ENGLISH"
    /// Official title in it's native language
    case native = "NATIVE"
    /// The romanization of the native language title, stylised by media creator
    case romajiStylised = "ROMAJI_STYLISED"
    /// The official english title, stylised by media creator
    case englishStylised = "ENGLISH_STYLISED"
    /// Official title in it's native language, stylised by media creator
    case nativeStylised = "NATIVE_STYLISED"
  }
}

extension Enums.UserTitleLanguage: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.UserTitleLanguage(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "UserTitleLanguage",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.romaji
}
extension Enums {
  /// Notification type enum
  public enum NotificationType: String, CaseIterable, Codable {
    /// A user has sent you message
    case activityMessage = "ACTIVITY_MESSAGE"
    /// A user has replied to your activity
    case activityReply = "ACTIVITY_REPLY"
    /// A user has followed you
    case following = "FOLLOWING"
    /// A user has mentioned you in their activity
    case activityMention = "ACTIVITY_MENTION"
    /// A user has mentioned you in a forum comment
    case threadCommentMention = "THREAD_COMMENT_MENTION"
    /// A user has commented in one of your subscribed forum threads
    case threadSubscribed = "THREAD_SUBSCRIBED"
    /// A user has replied to your forum comment
    case threadCommentReply = "THREAD_COMMENT_REPLY"
    /// An anime you are currently watching has aired
    case airing = "AIRING"
    /// A user has liked your activity
    case activityLike = "ACTIVITY_LIKE"
    /// A user has liked your activity reply
    case activityReplyLike = "ACTIVITY_REPLY_LIKE"
    /// A user has liked your forum thread
    case threadLike = "THREAD_LIKE"
    /// A user has liked your forum comment
    case threadCommentLike = "THREAD_COMMENT_LIKE"
    /// A user has replied to activity you have also replied to
    case activityReplySubscribed = "ACTIVITY_REPLY_SUBSCRIBED"
    /// A new anime or manga has been added to the site where its related media is on the user's list
    case relatedMediaAddition = "RELATED_MEDIA_ADDITION"
    /// An anime or manga has had a data change that affects how a user may track it in their lists
    case mediaDataChange = "MEDIA_DATA_CHANGE"
    /// Anime or manga entries on the user's list have been merged into a single entry
    case mediaMerge = "MEDIA_MERGE"
    /// An anime or manga on the user's list has been deleted from the site
    case mediaDeletion = "MEDIA_DELETION"
  }
}

extension Enums.NotificationType: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.NotificationType(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "NotificationType",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.activityMessage
}
extension Enums {
  /// The language the user wants to see staff and character names in
  public enum UserStaffNameLanguage: String, CaseIterable, Codable {
    /// The romanization of the staff or character's native name, with western name ordering
    case romajiWestern = "ROMAJI_WESTERN"
    /// The romanization of the staff or character's native name
    case romaji = "ROMAJI"
    /// The staff or character's name in their native language
    case native = "NATIVE"
  }
}

extension Enums.UserStaffNameLanguage: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.UserStaffNameLanguage(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "UserStaffNameLanguage",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.romajiWestern
}
extension Enums {
  /// Media list watching/reading status enum.
  public enum MediaListStatus: String, CaseIterable, Codable {
    /// Currently watching/reading
    case current = "CURRENT"
    /// Planning to watch/read
    case planning = "PLANNING"
    /// Finished watching/reading
    case completed = "COMPLETED"
    /// Stopped watching/reading before completing
    case dropped = "DROPPED"
    /// Paused watching/reading
    case paused = "PAUSED"
    /// Re-watching/reading
    case repeating = "REPEATING"
  }
}

extension Enums.MediaListStatus: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.MediaListStatus(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "MediaListStatus",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.current
}
extension Enums {
  /// Media list scoring type
  public enum ScoreFormat: String, CaseIterable, Codable {
    /// An integer from 0-100
    case point100 = "POINT_100"
    /// A float from 0-10 with 1 decimal place
    case point10Decimal = "POINT_10_DECIMAL"
    /// An integer from 0-10
    case point10 = "POINT_10"
    /// An integer from 0-5. Should be represented in Stars
    case point5 = "POINT_5"
    /// An integer from 0-3. Should be represented in Smileys. 0 => No Score, 1 => :(, 2 => :|, 3 => :)
    case point3 = "POINT_3"
  }
}

extension Enums.ScoreFormat: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.ScoreFormat(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "ScoreFormat",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.point100
}
extension Enums {
  /// Media type enum, anime or manga.
  public enum MediaType: String, CaseIterable, Codable {
    /// Japanese Anime
    case anime = "ANIME"
    /// Asian comic
    case manga = "MANGA"
  }
}

extension Enums.MediaType: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.MediaType(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "MediaType",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.anime
}
extension Enums {
  /// The format the media was released in
  public enum MediaFormat: String, CaseIterable, Codable {
    /// Anime broadcast on television
    case tv = "TV"
    /// Anime which are under 15 minutes in length and broadcast on television
    case tvShort = "TV_SHORT"
    /// Anime movies with a theatrical release
    case movie = "MOVIE"
    /// Special episodes that have been included in DVD/Blu-ray releases, picture dramas, pilots, etc
    case special = "SPECIAL"
    /// (Original Video Animation) Anime that have been released directly on DVD/Blu-ray without originally going through a theatrical release or television broadcast
    case ova = "OVA"
    /// (Original Net Animation) Anime that have been originally released online or are only available through streaming services.
    case ona = "ONA"
    /// Short anime released as a music video
    case music = "MUSIC"
    /// Professionally published manga with more than one chapter
    case manga = "MANGA"
    /// Written books released as a series of light novels
    case novel = "NOVEL"
    /// Manga with just one chapter
    case oneShot = "ONE_SHOT"
  }
}

extension Enums.MediaFormat: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.MediaFormat(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "MediaFormat",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.tv
}
extension Enums {
  /// The current releasing status of the media
  public enum MediaStatus: String, CaseIterable, Codable {
    /// Has completed and is no longer being released
    case finished = "FINISHED"
    /// Currently releasing
    case releasing = "RELEASING"
    /// To be released at a later date
    case notYetReleased = "NOT_YET_RELEASED"
    /// Ended before the work could be finished
    case cancelled = "CANCELLED"
    /// Version 2 only. Is currently paused from releasing and will resume at a later date
    case hiatus = "HIATUS"
  }
}

extension Enums.MediaStatus: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.MediaStatus(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "MediaStatus",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.finished
}
extension Enums {
  /// MediaSeason
  public enum MediaSeason: String, CaseIterable, Codable {
    /// Months December to February
    case winter = "WINTER"
    /// Months March to May
    case spring = "SPRING"
    /// Months June to August
    case summer = "SUMMER"
    /// Months September to November
    case fall = "FALL"
  }
}

extension Enums.MediaSeason: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.MediaSeason(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "MediaSeason",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.winter
}
extension Enums {
  /// Source type the media was adapted from
  public enum MediaSource: String, CaseIterable, Codable {
    /// An original production not based of another work
    case original = "ORIGINAL"
    /// Asian comic book
    case manga = "MANGA"
    /// Written work published in volumes
    case lightNovel = "LIGHT_NOVEL"
    /// Video game driven primary by text and narrative
    case visualNovel = "VISUAL_NOVEL"
    /// Video game
    case videoGame = "VIDEO_GAME"
    /// Other
    case other = "OTHER"
    /// Version 2+ only. Written works not published in volumes
    case novel = "NOVEL"
    /// Version 2+ only. Self-published works
    case doujinshi = "DOUJINSHI"
    /// Version 2+ only. Japanese Anime
    case anime = "ANIME"
    /// Version 3 only. Written works published online
    case webNovel = "WEB_NOVEL"
    /// Version 3 only. Live action media such as movies or TV show
    case liveAction = "LIVE_ACTION"
    /// Version 3 only. Games excluding video games
    case game = "GAME"
    /// Version 3 only. Comics excluding manga
    case comic = "COMIC"
    /// Version 3 only. Multimedia project
    case multimediaProject = "MULTIMEDIA_PROJECT"
    /// Version 3 only. Picture book
    case pictureBook = "PICTURE_BOOK"
  }
}

extension Enums.MediaSource: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.MediaSource(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "MediaSource",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.original
}
extension Enums {
  /// Character sort enums
  public enum CharacterSort: String, CaseIterable, Codable {

    case id = "ID"

    case idDesc = "ID_DESC"

    case role = "ROLE"

    case roleDesc = "ROLE_DESC"

    case searchMatch = "SEARCH_MATCH"

    case favourites = "FAVOURITES"

    case favouritesDesc = "FAVOURITES_DESC"
    /// Order manually decided by moderators
    case relevance = "RELEVANCE"
  }
}

extension Enums.CharacterSort: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.CharacterSort(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "CharacterSort",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.id
}
extension Enums {
  /// The role the character plays in the media
  public enum CharacterRole: String, CaseIterable, Codable {
    /// A primary character role in the media
    case main = "MAIN"
    /// A supporting character role in the media
    case supporting = "SUPPORTING"
    /// A background character in the media
    case background = "BACKGROUND"
  }
}

extension Enums.CharacterRole: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.CharacterRole(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "CharacterRole",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.main
}
extension Enums {
  /// Media sort enums
  public enum MediaSort: String, CaseIterable, Codable {

    case id = "ID"

    case idDesc = "ID_DESC"

    case titleRomaji = "TITLE_ROMAJI"

    case titleRomajiDesc = "TITLE_ROMAJI_DESC"

    case titleEnglish = "TITLE_ENGLISH"

    case titleEnglishDesc = "TITLE_ENGLISH_DESC"

    case titleNative = "TITLE_NATIVE"

    case titleNativeDesc = "TITLE_NATIVE_DESC"

    case type = "TYPE"

    case typeDesc = "TYPE_DESC"

    case format = "FORMAT"

    case formatDesc = "FORMAT_DESC"

    case startDate = "START_DATE"

    case startDateDesc = "START_DATE_DESC"

    case endDate = "END_DATE"

    case endDateDesc = "END_DATE_DESC"

    case score = "SCORE"

    case scoreDesc = "SCORE_DESC"

    case popularity = "POPULARITY"

    case popularityDesc = "POPULARITY_DESC"

    case trending = "TRENDING"

    case trendingDesc = "TRENDING_DESC"

    case episodes = "EPISODES"

    case episodesDesc = "EPISODES_DESC"

    case duration = "DURATION"

    case durationDesc = "DURATION_DESC"

    case status = "STATUS"

    case statusDesc = "STATUS_DESC"

    case chapters = "CHAPTERS"

    case chaptersDesc = "CHAPTERS_DESC"

    case volumes = "VOLUMES"

    case volumesDesc = "VOLUMES_DESC"

    case updatedAt = "UPDATED_AT"

    case updatedAtDesc = "UPDATED_AT_DESC"

    case searchMatch = "SEARCH_MATCH"

    case favourites = "FAVOURITES"

    case favouritesDesc = "FAVOURITES_DESC"
  }
}

extension Enums.MediaSort: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.MediaSort(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "MediaSort",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.id
}
extension Enums {
  /// The primary language of the voice actor
  public enum StaffLanguage: String, CaseIterable, Codable {
    /// Japanese
    case japanese = "JAPANESE"
    /// English
    case english = "ENGLISH"
    /// Korean
    case korean = "KOREAN"
    /// Italian
    case italian = "ITALIAN"
    /// Spanish
    case spanish = "SPANISH"
    /// Portuguese
    case portuguese = "PORTUGUESE"
    /// French
    case french = "FRENCH"
    /// German
    case german = "GERMAN"
    /// Hebrew
    case hebrew = "HEBREW"
    /// Hungarian
    case hungarian = "HUNGARIAN"
  }
}

extension Enums.StaffLanguage: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.StaffLanguage(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "StaffLanguage",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.japanese
}
extension Enums {
  /// Staff sort enums
  public enum StaffSort: String, CaseIterable, Codable {

    case id = "ID"

    case idDesc = "ID_DESC"

    case role = "ROLE"

    case roleDesc = "ROLE_DESC"

    case language = "LANGUAGE"

    case languageDesc = "LANGUAGE_DESC"

    case searchMatch = "SEARCH_MATCH"

    case favourites = "FAVOURITES"

    case favouritesDesc = "FAVOURITES_DESC"
    /// Order manually decided by moderators
    case relevance = "RELEVANCE"
  }
}

extension Enums.StaffSort: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.StaffSort(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "StaffSort",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.id
}
extension Enums {
  /// Studio sort enums
  public enum StudioSort: String, CaseIterable, Codable {

    case id = "ID"

    case idDesc = "ID_DESC"

    case name = "NAME"

    case nameDesc = "NAME_DESC"

    case searchMatch = "SEARCH_MATCH"

    case favourites = "FAVOURITES"

    case favouritesDesc = "FAVOURITES_DESC"
  }
}

extension Enums.StudioSort: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.StudioSort(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "StudioSort",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.id
}
extension Enums {
  /// Media trend sort enums
  public enum MediaTrendSort: String, CaseIterable, Codable {

    case id = "ID"

    case idDesc = "ID_DESC"

    case mediaId = "MEDIA_ID"

    case mediaIdDesc = "MEDIA_ID_DESC"

    case date = "DATE"

    case dateDesc = "DATE_DESC"

    case score = "SCORE"

    case scoreDesc = "SCORE_DESC"

    case popularity = "POPULARITY"

    case popularityDesc = "POPULARITY_DESC"

    case trending = "TRENDING"

    case trendingDesc = "TRENDING_DESC"

    case episode = "EPISODE"

    case episodeDesc = "EPISODE_DESC"
  }
}

extension Enums.MediaTrendSort: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.MediaTrendSort(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "MediaTrendSort",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.id
}
extension Enums {
  /// ExternalLinkType
  public enum ExternalLinkType: String, CaseIterable, Codable {

    case info = "INFO"

    case streaming = "STREAMING"

    case social = "SOCIAL"
  }
}

extension Enums.ExternalLinkType: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.ExternalLinkType(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "ExternalLinkType",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.info
}
extension Enums {
  /// The type of ranking
  public enum MediaRankType: String, CaseIterable, Codable {
    /// Ranking is based on the media's ratings/score
    case rated = "RATED"
    /// Ranking is based on the media's popularity
    case popular = "POPULAR"
  }
}

extension Enums.MediaRankType: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.MediaRankType(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "MediaRankType",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.rated
}
extension Enums {
  /// Review sort enums
  public enum ReviewSort: String, CaseIterable, Codable {

    case id = "ID"

    case idDesc = "ID_DESC"

    case score = "SCORE"

    case scoreDesc = "SCORE_DESC"

    case rating = "RATING"

    case ratingDesc = "RATING_DESC"

    case createdAt = "CREATED_AT"

    case createdAtDesc = "CREATED_AT_DESC"

    case updatedAt = "UPDATED_AT"

    case updatedAtDesc = "UPDATED_AT_DESC"
  }
}

extension Enums.ReviewSort: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.ReviewSort(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "ReviewSort",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.id
}
extension Enums {
  /// Review rating enums
  public enum ReviewRating: String, CaseIterable, Codable {

    case noVote = "NO_VOTE"

    case upVote = "UP_VOTE"

    case downVote = "DOWN_VOTE"
  }
}

extension Enums.ReviewRating: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.ReviewRating(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "ReviewRating",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.noVote
}
extension Enums {
  /// Recommendation sort enums
  public enum RecommendationSort: String, CaseIterable, Codable {

    case id = "ID"

    case idDesc = "ID_DESC"

    case rating = "RATING"

    case ratingDesc = "RATING_DESC"
  }
}

extension Enums.RecommendationSort: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.RecommendationSort(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "RecommendationSort",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.id
}
extension Enums {
  /// Recommendation rating enums
  public enum RecommendationRating: String, CaseIterable, Codable {

    case noRating = "NO_RATING"

    case rateUp = "RATE_UP"

    case rateDown = "RATE_DOWN"
  }
}

extension Enums.RecommendationRating: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.RecommendationRating(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "RecommendationRating",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.noRating
}
extension Enums {
  /// Type of relation media has to its parent.
  public enum MediaRelation: String, CaseIterable, Codable {
    /// An adaption of this media into a different format
    case adaptation = "ADAPTATION"
    /// Released before the relation
    case prequel = "PREQUEL"
    /// Released after the relation
    case sequel = "SEQUEL"
    /// The media a side story is from
    case parent = "PARENT"
    /// A side story of the parent media
    case sideStory = "SIDE_STORY"
    /// Shares at least 1 character
    case character = "CHARACTER"
    /// A shortened and summarized version
    case summary = "SUMMARY"
    /// An alternative version of the same media
    case alternative = "ALTERNATIVE"
    /// An alternative version of the media with a different primary focus
    case spinOff = "SPIN_OFF"
    /// Other
    case other = "OTHER"
    /// Version 2 only. The source material the media was adapted from
    case source = "SOURCE"
    /// Version 2 only.
    case compilation = "COMPILATION"
    /// Version 2 only.
    case contains = "CONTAINS"
  }
}

extension Enums.MediaRelation: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.MediaRelation(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "MediaRelation",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.adaptation
}
extension Enums {
  /// User statistics sort enum
  public enum UserStatisticsSort: String, CaseIterable, Codable {

    case id = "ID"

    case idDesc = "ID_DESC"

    case count = "COUNT"

    case countDesc = "COUNT_DESC"

    case progress = "PROGRESS"

    case progressDesc = "PROGRESS_DESC"

    case meanScore = "MEAN_SCORE"

    case meanScoreDesc = "MEAN_SCORE_DESC"
  }
}

extension Enums.UserStatisticsSort: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.UserStatisticsSort(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "UserStatisticsSort",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.id
}
extension Enums {
  /// Mod role enums
  public enum ModRole: String, CaseIterable, Codable {
    /// An AniList administrator
    case admin = "ADMIN"
    /// A head developer of AniList
    case leadDeveloper = "LEAD_DEVELOPER"
    /// An AniList developer
    case developer = "DEVELOPER"
    /// A lead community moderator
    case leadCommunity = "LEAD_COMMUNITY"
    /// A community moderator
    case community = "COMMUNITY"
    /// A discord community moderator
    case discordCommunity = "DISCORD_COMMUNITY"
    /// A lead anime data moderator
    case leadAnimeData = "LEAD_ANIME_DATA"
    /// An anime data moderator
    case animeData = "ANIME_DATA"
    /// A lead manga data moderator
    case leadMangaData = "LEAD_MANGA_DATA"
    /// A manga data moderator
    case mangaData = "MANGA_DATA"
    /// A lead social media moderator
    case leadSocialMedia = "LEAD_SOCIAL_MEDIA"
    /// A social media moderator
    case socialMedia = "SOCIAL_MEDIA"
    /// A retired moderator
    case retired = "RETIRED"
    /// A character data moderator
    case characterData = "CHARACTER_DATA"
    /// A staff data moderator
    case staffData = "STAFF_DATA"
  }
}

extension Enums.ModRole: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.ModRole(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "ModRole",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.admin
}
extension Enums {
  /// Media list sort enums
  public enum MediaListSort: String, CaseIterable, Codable {

    case mediaId = "MEDIA_ID"

    case mediaIdDesc = "MEDIA_ID_DESC"

    case score = "SCORE"

    case scoreDesc = "SCORE_DESC"

    case status = "STATUS"

    case statusDesc = "STATUS_DESC"

    case progress = "PROGRESS"

    case progressDesc = "PROGRESS_DESC"

    case progressVolumes = "PROGRESS_VOLUMES"

    case progressVolumesDesc = "PROGRESS_VOLUMES_DESC"

    case `repeat` = "REPEAT"

    case repeatDesc = "REPEAT_DESC"

    case priority = "PRIORITY"

    case priorityDesc = "PRIORITY_DESC"

    case startedOn = "STARTED_ON"

    case startedOnDesc = "STARTED_ON_DESC"

    case finishedOn = "FINISHED_ON"

    case finishedOnDesc = "FINISHED_ON_DESC"

    case addedTime = "ADDED_TIME"

    case addedTimeDesc = "ADDED_TIME_DESC"

    case updatedTime = "UPDATED_TIME"

    case updatedTimeDesc = "UPDATED_TIME_DESC"

    case mediaTitleRomaji = "MEDIA_TITLE_ROMAJI"

    case mediaTitleRomajiDesc = "MEDIA_TITLE_ROMAJI_DESC"

    case mediaTitleEnglish = "MEDIA_TITLE_ENGLISH"

    case mediaTitleEnglishDesc = "MEDIA_TITLE_ENGLISH_DESC"

    case mediaTitleNative = "MEDIA_TITLE_NATIVE"

    case mediaTitleNativeDesc = "MEDIA_TITLE_NATIVE_DESC"

    case mediaPopularity = "MEDIA_POPULARITY"

    case mediaPopularityDesc = "MEDIA_POPULARITY_DESC"
  }
}

extension Enums.MediaListSort: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.MediaListSort(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "MediaListSort",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.mediaId
}
extension Enums {
  /// Airing schedule sort enums
  public enum AiringSort: String, CaseIterable, Codable {

    case id = "ID"

    case idDesc = "ID_DESC"

    case mediaId = "MEDIA_ID"

    case mediaIdDesc = "MEDIA_ID_DESC"

    case time = "TIME"

    case timeDesc = "TIME_DESC"

    case episode = "EPISODE"

    case episodeDesc = "EPISODE_DESC"
  }
}

extension Enums.AiringSort: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.AiringSort(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "AiringSort",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.id
}
extension Enums {
  /// Activity type enum.
  public enum ActivityType: String, CaseIterable, Codable {
    /// A text activity
    case text = "TEXT"
    /// A anime list update activity
    case animeList = "ANIME_LIST"
    /// A manga list update activity
    case mangaList = "MANGA_LIST"
    /// A text message activity sent to another user
    case message = "MESSAGE"
    /// Anime & Manga list update, only used in query arguments
    case mediaList = "MEDIA_LIST"
  }
}

extension Enums.ActivityType: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.ActivityType(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "ActivityType",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.text
}
extension Enums {
  /// Activity sort enums
  public enum ActivitySort: String, CaseIterable, Codable {

    case id = "ID"

    case idDesc = "ID_DESC"

    case pinned = "PINNED"
  }
}

extension Enums.ActivitySort: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.ActivitySort(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "ActivitySort",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.id
}
extension Enums {
  /// Thread sort enums
  public enum ThreadSort: String, CaseIterable, Codable {

    case id = "ID"

    case idDesc = "ID_DESC"

    case title = "TITLE"

    case titleDesc = "TITLE_DESC"

    case createdAt = "CREATED_AT"

    case createdAtDesc = "CREATED_AT_DESC"

    case updatedAt = "UPDATED_AT"

    case updatedAtDesc = "UPDATED_AT_DESC"

    case repliedAt = "REPLIED_AT"

    case repliedAtDesc = "REPLIED_AT_DESC"

    case replyCount = "REPLY_COUNT"

    case replyCountDesc = "REPLY_COUNT_DESC"

    case viewCount = "VIEW_COUNT"

    case viewCountDesc = "VIEW_COUNT_DESC"

    case isSticky = "IS_STICKY"

    case searchMatch = "SEARCH_MATCH"
  }
}

extension Enums.ThreadSort: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.ThreadSort(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "ThreadSort",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.id
}
extension Enums {
  /// Thread comments sort enums
  public enum ThreadCommentSort: String, CaseIterable, Codable {

    case id = "ID"

    case idDesc = "ID_DESC"
  }
}

extension Enums.ThreadCommentSort: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.ThreadCommentSort(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "ThreadCommentSort",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.id
}
extension Enums {
  /// Types that can be liked
  public enum LikeableType: String, CaseIterable, Codable {

    case thread = "THREAD"

    case threadComment = "THREAD_COMMENT"

    case activity = "ACTIVITY"

    case activityReply = "ACTIVITY_REPLY"
  }
}

extension Enums.LikeableType: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.LikeableType(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "LikeableType",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.thread
}
extension Enums {
  /// Site trend sort enums
  public enum SiteTrendSort: String, CaseIterable, Codable {

    case date = "DATE"

    case dateDesc = "DATE_DESC"

    case count = "COUNT"

    case countDesc = "COUNT_DESC"

    case change = "CHANGE"

    case changeDesc = "CHANGE_DESC"
  }
}

extension Enums.SiteTrendSort: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.SiteTrendSort(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "SiteTrendSort",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.date
}
extension Enums {
  /// ExternalLinkMediaType
  public enum ExternalLinkMediaType: String, CaseIterable, Codable {

    case anime = "ANIME"

    case manga = "MANGA"

    case staff = "STAFF"
  }
}

extension Enums.ExternalLinkMediaType: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.ExternalLinkMediaType(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "ExternalLinkMediaType",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.anime
}
extension Enums {
  /// Submission status
  public enum SubmissionStatus: String, CaseIterable, Codable {

    case pending = "PENDING"

    case rejected = "REJECTED"

    case partiallyAccepted = "PARTIALLY_ACCEPTED"

    case accepted = "ACCEPTED"
  }
}

extension Enums.SubmissionStatus: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.SubmissionStatus(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "SubmissionStatus",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.pending
}
extension Enums {
  /// Submission sort enums
  public enum SubmissionSort: String, CaseIterable, Codable {

    case id = "ID"

    case idDesc = "ID_DESC"
  }
}

extension Enums.SubmissionSort: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.SubmissionSort(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "SubmissionSort",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.id
}
extension Enums {
  /// Revision history actions
  public enum RevisionHistoryAction: String, CaseIterable, Codable {

    case create = "CREATE"

    case edit = "EDIT"
  }
}

extension Enums.RevisionHistoryAction: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.RevisionHistoryAction(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "RevisionHistoryAction",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.create
}
extension Enums {
  /// ModActionType
  public enum ModActionType: String, CaseIterable, Codable {

    case note = "NOTE"

    case ban = "BAN"

    case delete = "DELETE"

    case edit = "EDIT"

    case expire = "EXPIRE"

    case report = "REPORT"

    case reset = "RESET"

    case anon = "ANON"
  }
}

extension Enums.ModActionType: GraphQLScalar {
  public init(from data: AnyCodable) throws {
    switch data.value {
    case let string as String:
      if let value = Enums.ModActionType(rawValue: string) {
        self = value
      } else {
        throw ScalarDecodingError.unknownEnumCase(value: string)
      }
    default:
      throw ScalarDecodingError.unexpectedScalarType(
        expected: "ModActionType",
        received: data.value
      )
    }
  }

  public static var mockValue = Self.note
}

// MARK: - Input Objects

/// Utility pointer to InputObjects.
public typealias Inputs = InputObjects

public enum InputObjects {}
extension InputObjects {
  public struct NotificationOptionInput: Encodable, Hashable {

    /// The type of notification
    public var type: OptionalArgument<Enums.NotificationType>
    /// Whether this type of notification is enabled
    public var enabled: OptionalArgument<Bool>

    public init(
      type: OptionalArgument<Enums.NotificationType> = .init(),
      enabled: OptionalArgument<Bool> = .init()
    ) {
      self.type = type
      self.enabled = enabled
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if type.hasValue { try container.encode(type, forKey: .type) }
      if enabled.hasValue { try container.encode(enabled, forKey: .enabled) }
    }

    public enum CodingKeys: String, CodingKey {
      case type = "type"
      case enabled = "enabled"
    }
  }
}
extension InputObjects {
  public struct MediaListOptionsInput: Encodable, Hashable {

    /// The order each list should be displayed in
    public var sectionOrder: OptionalArgument<[OptionalArgument<String>]>
    /// If the completed sections of the list should be separated by format
    public var splitCompletedSectionByFormat: OptionalArgument<Bool>
    /// The names of the user's custom lists
    public var customLists: OptionalArgument<[OptionalArgument<String>]>
    /// The names of the user's advanced scoring sections
    public var advancedScoring: OptionalArgument<[OptionalArgument<String>]>
    /// If advanced scoring is enabled
    public var advancedScoringEnabled: OptionalArgument<Bool>
    /// list theme
    public var theme: OptionalArgument<String>

    public init(
      sectionOrder: OptionalArgument<[OptionalArgument<String>]> = .init(),
      splitCompletedSectionByFormat: OptionalArgument<Bool> = .init(),
      customLists: OptionalArgument<[OptionalArgument<String>]> = .init(),
      advancedScoring: OptionalArgument<[OptionalArgument<String>]> = .init(),
      advancedScoringEnabled: OptionalArgument<Bool> = .init(),
      theme: OptionalArgument<String> = .init()
    ) {
      self.sectionOrder = sectionOrder
      self.splitCompletedSectionByFormat = splitCompletedSectionByFormat
      self.customLists = customLists
      self.advancedScoring = advancedScoring
      self.advancedScoringEnabled = advancedScoringEnabled
      self.theme = theme
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if sectionOrder.hasValue { try container.encode(sectionOrder, forKey: .sectionOrder) }
      if splitCompletedSectionByFormat.hasValue {
        try container.encode(splitCompletedSectionByFormat, forKey: .splitCompletedSectionByFormat)
      }
      if customLists.hasValue { try container.encode(customLists, forKey: .customLists) }
      if advancedScoring.hasValue {
        try container.encode(advancedScoring, forKey: .advancedScoring)
      }
      if advancedScoringEnabled.hasValue {
        try container.encode(advancedScoringEnabled, forKey: .advancedScoringEnabled)
      }
      if theme.hasValue { try container.encode(theme, forKey: .theme) }
    }

    public enum CodingKeys: String, CodingKey {
      case sectionOrder = "sectionOrder"
      case splitCompletedSectionByFormat = "splitCompletedSectionByFormat"
      case customLists = "customLists"
      case advancedScoring = "advancedScoring"
      case advancedScoringEnabled = "advancedScoringEnabled"
      case theme = "theme"
    }
  }
}
extension InputObjects {
  public struct ListActivityOptionInput: Encodable, Hashable {

    public var disabled: OptionalArgument<Bool>

    public var type: OptionalArgument<Enums.MediaListStatus>

    public init(
      disabled: OptionalArgument<Bool> = .init(),
      type: OptionalArgument<Enums.MediaListStatus> = .init()
    ) {
      self.disabled = disabled
      self.type = type
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if disabled.hasValue { try container.encode(disabled, forKey: .disabled) }
      if type.hasValue { try container.encode(type, forKey: .type) }
    }

    public enum CodingKeys: String, CodingKey {
      case disabled = "disabled"
      case type = "type"
    }
  }
}
extension InputObjects {
  public struct FuzzyDateInput: Encodable, Hashable {

    /// Numeric Year (2017)
    public var year: OptionalArgument<Int>
    /// Numeric Month (3)
    public var month: OptionalArgument<Int>
    /// Numeric Day (24)
    public var day: OptionalArgument<Int>

    public init(
      year: OptionalArgument<Int> = .init(),
      month: OptionalArgument<Int> = .init(),
      day: OptionalArgument<Int> = .init()
    ) {
      self.year = year
      self.month = month
      self.day = day
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if year.hasValue { try container.encode(year, forKey: .year) }
      if month.hasValue { try container.encode(month, forKey: .month) }
      if day.hasValue { try container.encode(day, forKey: .day) }
    }

    public enum CodingKeys: String, CodingKey {
      case year = "year"
      case month = "month"
      case day = "day"
    }
  }
}
extension InputObjects {
  public struct AniChartHighlightInput: Encodable, Hashable {

    public var mediaId: OptionalArgument<Int>

    public var highlight: OptionalArgument<String>

    public init(
      mediaId: OptionalArgument<Int> = .init(),
      highlight: OptionalArgument<String> = .init()
    ) {
      self.mediaId = mediaId
      self.highlight = highlight
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if mediaId.hasValue { try container.encode(mediaId, forKey: .mediaId) }
      if highlight.hasValue { try container.encode(highlight, forKey: .highlight) }
    }

    public enum CodingKeys: String, CodingKey {
      case mediaId = "mediaId"
      case highlight = "highlight"
    }
  }
}
extension InputObjects {
  public struct MediaTitleInput: Encodable, Hashable {

    /// The romanization of the native language title
    public var romaji: OptionalArgument<String>
    /// The official english title
    public var english: OptionalArgument<String>
    /// Official title in it's native language
    public var native: OptionalArgument<String>

    public init(
      romaji: OptionalArgument<String> = .init(),
      english: OptionalArgument<String> = .init(),
      native: OptionalArgument<String> = .init()
    ) {
      self.romaji = romaji
      self.english = english
      self.native = native
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if romaji.hasValue { try container.encode(romaji, forKey: .romaji) }
      if english.hasValue { try container.encode(english, forKey: .english) }
      if native.hasValue { try container.encode(native, forKey: .native) }
    }

    public enum CodingKeys: String, CodingKey {
      case romaji = "romaji"
      case english = "english"
      case native = "native"
    }
  }
}
extension InputObjects {
  public struct AiringScheduleInput: Encodable, Hashable {

    public var airingAt: OptionalArgument<Int>

    public var episode: OptionalArgument<Int>

    public var timeUntilAiring: OptionalArgument<Int>

    public init(
      airingAt: OptionalArgument<Int> = .init(),
      episode: OptionalArgument<Int> = .init(),
      timeUntilAiring: OptionalArgument<Int> = .init()
    ) {
      self.airingAt = airingAt
      self.episode = episode
      self.timeUntilAiring = timeUntilAiring
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if airingAt.hasValue { try container.encode(airingAt, forKey: .airingAt) }
      if episode.hasValue { try container.encode(episode, forKey: .episode) }
      if timeUntilAiring.hasValue {
        try container.encode(timeUntilAiring, forKey: .timeUntilAiring)
      }
    }

    public enum CodingKeys: String, CodingKey {
      case airingAt = "airingAt"
      case episode = "episode"
      case timeUntilAiring = "timeUntilAiring"
    }
  }
}
extension InputObjects {
  public struct MediaExternalLinkInput: Encodable, Hashable {

    /// The id of the external link
    public var id: Int
    /// The url of the external link
    public var url: String
    /// The site location of the external link
    public var site: String

    public init(
      id: Int,
      url: String,
      site: String
    ) {
      self.id = id
      self.url = url
      self.site = site
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      try container.encode(id, forKey: .id)
      try container.encode(url, forKey: .url)
      try container.encode(site, forKey: .site)
    }

    public enum CodingKeys: String, CodingKey {
      case id = "id"
      case url = "url"
      case site = "site"
    }
  }
}
extension InputObjects {
  public struct CharacterNameInput: Encodable, Hashable {

    /// The character's given name
    public var first: OptionalArgument<String>
    /// The character's middle name
    public var middle: OptionalArgument<String>
    /// The character's surname
    public var last: OptionalArgument<String>
    /// The character's full name in their native language
    public var native: OptionalArgument<String>
    /// Other names the character might be referred by
    public var alternative: OptionalArgument<[OptionalArgument<String>]>
    /// Other names the character might be referred to as but are spoilers
    public var alternativeSpoiler: OptionalArgument<[OptionalArgument<String>]>

    public init(
      first: OptionalArgument<String> = .init(),
      middle: OptionalArgument<String> = .init(),
      last: OptionalArgument<String> = .init(),
      native: OptionalArgument<String> = .init(),
      alternative: OptionalArgument<[OptionalArgument<String>]> = .init(),
      alternativeSpoiler: OptionalArgument<[OptionalArgument<String>]> = .init()
    ) {
      self.first = first
      self.middle = middle
      self.last = last
      self.native = native
      self.alternative = alternative
      self.alternativeSpoiler = alternativeSpoiler
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if first.hasValue { try container.encode(first, forKey: .first) }
      if middle.hasValue { try container.encode(middle, forKey: .middle) }
      if last.hasValue { try container.encode(last, forKey: .last) }
      if native.hasValue { try container.encode(native, forKey: .native) }
      if alternative.hasValue { try container.encode(alternative, forKey: .alternative) }
      if alternativeSpoiler.hasValue {
        try container.encode(alternativeSpoiler, forKey: .alternativeSpoiler)
      }
    }

    public enum CodingKeys: String, CodingKey {
      case first = "first"
      case middle = "middle"
      case last = "last"
      case native = "native"
      case alternative = "alternative"
      case alternativeSpoiler = "alternativeSpoiler"
    }
  }
}
extension InputObjects {
  public struct StaffNameInput: Encodable, Hashable {

    /// The person's given name
    public var first: OptionalArgument<String>
    /// The person's middle name
    public var middle: OptionalArgument<String>
    /// The person's surname
    public var last: OptionalArgument<String>
    /// The person's full name in their native language
    public var native: OptionalArgument<String>
    /// Other names the character might be referred by
    public var alternative: OptionalArgument<[OptionalArgument<String>]>

    public init(
      first: OptionalArgument<String> = .init(),
      middle: OptionalArgument<String> = .init(),
      last: OptionalArgument<String> = .init(),
      native: OptionalArgument<String> = .init(),
      alternative: OptionalArgument<[OptionalArgument<String>]> = .init()
    ) {
      self.first = first
      self.middle = middle
      self.last = last
      self.native = native
      self.alternative = alternative
    }

    public func encode(to encoder: Encoder) throws {
      var container = encoder.container(keyedBy: CodingKeys.self)
      if first.hasValue { try container.encode(first, forKey: .first) }
      if middle.hasValue { try container.encode(middle, forKey: .middle) }
      if last.hasValue { try container.encode(last, forKey: .last) }
      if native.hasValue { try container.encode(native, forKey: .native) }
      if alternative.hasValue { try container.encode(alternative, forKey: .alternative) }
    }

    public enum CodingKeys: String, CodingKey {
      case first = "first"
      case middle = "middle"
      case last = "last"
      case native = "native"
      case alternative = "alternative"
    }
  }
}