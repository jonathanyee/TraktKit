//
//  UnhideItemResult.swift
//  TraktKit
//
//  Created by Maximilian Litteral on 9/4/17.
//  Copyright © 2017 Maximilian Litteral. All rights reserved.
//

import Foundation

public struct UnhideItemResult: Codable, Identifiable {
    public let id = UUID()
    public let deleted: Deleted
//    let notFound: NotFound

    public struct Deleted: Codable, Identifiable {
        public let id = UUID()
        public let movies: Int
        public let shows: Int
        public let seasons: Int
    }
    
    public struct NotFound: Codable, Identifiable {
        public let id = UUID()
        public let movies: [TraktID]
        public let shows: [TraktID]
        public let seasons: [TraktID]
        
        enum CodingKeys: String, CodingKey {
            case movies
            case shows
            case seasons
        }
        
        public init(from decoder: Decoder) throws {
//            let container = try decoder.container(keyedBy: CodingKeys.self)
//            let m = try container.decode([[String: ID]].self, forKey: .movies)
//            let s = try container.decode([[String: ID]].self, forKey: .shows)
//            let se = try container.decode([[String: ID]].self, forKey: .seasons)
//            movies = m.flatMap { $0.values.first }
//            shows = s.flatMap { $0.values.first }
//            seasons = se.flatMap { $0.values.first }
            movies = []
            shows = []
            seasons = []
        }
    }
    
    enum CodingKeys: String, CodingKey {
        case deleted
//        case notFound = "not_found"
    }
}
