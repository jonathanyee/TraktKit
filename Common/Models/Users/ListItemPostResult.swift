//
//  ListItemPostResult.swift
//  TraktKit
//
//  Created by Maximilian Litteral on 8/10/17.
//  Copyright © 2017 Maximilian Litteral. All rights reserved.
//

import Foundation

public struct ListItemPostResult: Codable, Identifiable {
    public let id = UUID()
    public let added: Added
    public let existing: Added
//    let notFound: NotFound

    public struct Added: Codable, Identifiable {
        public let id = UUID()
        public let movies: Int
        public let shows: Int
        public let seasons: Int
        public let episodes: Int
        public let people: Int
    }
    
    public struct NotFound: Codable, Identifiable {
        public let id = UUID()
        public let movies: [TraktID]
        public let shows: [TraktID]
        public let seasons: [TraktID]
        public let episodes: [TraktID]
        public let people: [TraktID]
    }
    
    enum CodingKeys: String, CodingKey {
        case added
        case existing
//        case notFound = "not_found"
    }
}
