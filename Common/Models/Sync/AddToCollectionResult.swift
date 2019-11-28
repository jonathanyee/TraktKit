//
//  AddToCollectionResult.swift
//  TraktKit
//
//  Created by Maximilian Litteral on 8/12/17.
//  Copyright © 2017 Maximilian Litteral. All rights reserved.
//

import Foundation

public struct AddToCollectionResult: Codable, Identifiable {
    public let id = UUID()
    public let added: Added
    public let updated: Added
    public let existing: Added
//    let notFound: NotFound

    public struct Added: Codable, Identifiable {
        public let id = UUID()
        public let movies: Int
        public let episodes: Int
    }
    
    public struct NotFound: Codable, Identifiable {
        public let id = UUID()
        public let movies: [TraktID]
        public let shows: [TraktID]
        public let seasons: [TraktID]
        public let episodes: [TraktID]
    }
    
    enum CodingKeys: String, CodingKey {
        case added
        case updated
        case existing
//        case notFound = "not_found"
    }
}
