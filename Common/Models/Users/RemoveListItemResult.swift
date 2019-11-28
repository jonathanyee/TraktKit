//
//  RemoveListItemResult.swift
//  TraktKitTests
//
//  Created by Maximilian Litteral on 8/11/17.
//  Copyright © 2017 Maximilian Litteral. All rights reserved.
//

import Foundation

public struct RemoveListItemResult: Codable, Identifiable {
    public let id = UUID()
    public let deleted: Added
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
        case deleted
//        case notFound = "not_found"
    }
}
