//
//  AccountSettings.swift
//  TraktKitTests
//
//  Created by Maximilian Litteral on 6/15/17.
//  Copyright © 2017 Maximilian Litteral. All rights reserved.
//

import Foundation

public struct AccountSettings: Codable, Identifiable {
    public let id = UUID()
    public let user: User
    public let connections: Connections
    
    public struct Connections: Codable, Identifiable {
        public let id = UUID()
        public let facebook: Bool
        public let twitter: Bool
        public let google: Bool
        public let tumblr: Bool
        public let medium: Bool
        public let slack: Bool
    }
}
