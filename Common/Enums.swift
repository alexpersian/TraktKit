//
//  Enums.swift
//  TraktKit
//
//  Created by Maximilian Litteral on 6/22/16.
//  Copyright © 2016 Maximilian Litteral. All rights reserved.
//

import Foundation

public enum Method: String {
    /// Select one or more items. Success returns 200 status code.
    case GET
    /// Create a new item. Success returns 201 status code.
    case POST
    /// Update an item. Success returns 200 status code.
    case PUT
    /// Delete an item. Success returns 200 or 204 status code.
    case DELETE
}

public struct StatusCodes {
    /// Success
    public static let Success = 200
    /// Success - new resource created (POST)
    public static let SuccessNewResourceCreated = 201
    /// Success - no content to return (DELETE)
    public static let SuccessNoContentToReturn = 204
    /// Bad Request - request couldn't be parsed
    public static let BadRequestion = 400
    /// Unauthorized - OAuth must be provided
    public static let Unauthorized = 401
    /// Forbidden - invalid API key or unapproved app
    public static let Forbidden = 403
    /// Not Found - method exists, but no record found
    public static let NotFound = 404
    /// Method Not Found - method doesn't exist
    public static let MethodNotFound = 405
    /// Conflict - resource already created
    public static let Conflict = 409
    /// Precondition Failed - use application/json content type
    public static let PreconditionFailed = 412
    /// Unprocessable Entity - validation errors
    public static let UnprocessableEntity = 422
    /// Rate Limit Exceeded
    public static let RateLimitExceeded = 429
    /// Server Error
    public static let ServerError = 500
    /// Service Unavailable - server overloaded
    public static let ServiceOverloaded = 503
    /// Service Unavailable - Cloudflare error
    public static let CloudflareError = 520
    /// Service Unavailable - Cloudflare error
    public static let CloudflareError2 = 521
    /// Service Unavailable - Cloudflare error
    public static let CloudflareError3 = 522
}

/// What to search for
public enum SearchType: String {
    case movie
    case show
    case episode
    case person
    case list
}

/// Type of ID used for look up
public enum LookupType: String {
    case TraktMovie = "trakt-movie"
    case TraktShow = "trakt-show"
    case TraktEpisode = "trakt-episode"
    case IMDB = "imdb"
    case TMDB = "tmdb"
    case TVDB = "tvdb"
    case TVRage = "tvrage"
}

public enum Type: String, CustomStringConvertible {
    case Movies = "movies"
    case Shows = "shows"
    
    public var description: String {
        return self.rawValue
    }
}

public enum WatchedType: String, CustomStringConvertible {
    case Movies = "movies"
    case Shows = "shows"
    case Seasons = "seasons"
    case Episodes = "episodes"
    
    public var description: String {
        return self.rawValue
    }
}

public enum Type2: String, CustomStringConvertible {
    case All = "all"
    case Movies = "movies"
    case Shows = "shows"
    case Seasons = "seasons"
    case Episodes = "episodes"
    case Lists = "lists"
    
    public var description: String {
        return self.rawValue
    }
}

/// Type of comments
public enum CommentType: String {
    case all = "all"
    case reviews = "reviews"
    case shouts = "shouts"
}

/// Extended information
public enum ExtendedType: String, CustomStringConvertible {
    /// Least amount of info
    case Min = "min"
    /// Images for Show, Episode, or Movie
    case Images = "images"
    /// All information, excluding images
    case Full = "full"
    /// All information, including images
    case FullAndImages = "full,images"
    case Metadata = "metadata"
    /// Get all seasons and episodes
    case Episodes = "episodes"
    /// Get full information about all episodes
    case FullAndEpisodes = "full,episodes"
    
    public var description: String {
        get {
            return self.rawValue
        }
    }
}

/// Possible values for items in Lists
public enum ListItemType: String {
    case movies
    case shows
    case seasons
    case episodes
    case people
}