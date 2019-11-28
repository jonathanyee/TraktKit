//
//  Alias.swift
//  TraktKit
//
//  Created by Maximilian Litteral on 8/10/17.
//  Copyright © 2017 Maximilian Litteral. All rights reserved.
//

import Foundation

public struct Alias: Codable, Identifiable {
    public let id = UUID()
    public let title: String
    public let country: String
}
