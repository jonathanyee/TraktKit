//
//  TraktShowTranslation.swift
//  TraktKit
//
//  Created by Maximilian Litteral on 4/13/16.
//  Copyright © 2016 Maximilian Litteral. All rights reserved.
//

import Foundation

public struct TraktShowTranslation: Codable, Identifiable {
    public let id = UUID()
    public let title: String
    public let overview: String
    public let language: String
}
