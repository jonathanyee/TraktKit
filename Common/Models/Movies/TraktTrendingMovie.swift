//
//  TraktTrendingMovie.swift
//  TraktKit
//
//  Created by Maximilian Litteral on 4/13/16.
//  Copyright © 2016 Maximilian Litteral. All rights reserved.
//

import Foundation

public struct TraktTrendingMovie: Codable, Identifiable {
    // Extended: Min
    public let id = UUID()
    public let watchers: Int
    public let movie: TraktMovie
}
