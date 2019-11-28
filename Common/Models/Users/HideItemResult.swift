//
//  HideItemResult.swift
//  TraktKit
//
//  Created by Maximilian Litteral on 9/8/17.
//  Copyright © 2017 Maximilian Litteral. All rights reserved.
//

import Foundation

public struct HideItemResult: Codable, Identifiable {
    public let id = UUID()
    let added: Added
//    let notFound: NotFound

    public struct Added: Codable, Identifiable {
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
            movies = []
            shows = []
            seasons = []
        }
    }
    
    enum CodingKeys: String, CodingKey {
        case added
//        case notFound = "not_found"
    }
}
