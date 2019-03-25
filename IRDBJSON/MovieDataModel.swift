//
//  MovieDataModel.swift
//  IRDBJSON
//
//  Created by Sean Halstead on 3/20/19.
//  Copyright © 2019 Sean Halstead. All rights reserved.
//

import Foundation

class movieDataModel: Codable {
    var franchise: [Franchises]
}

class Franchises: Codable {
    let franchiseName: String
    let entries: [Entry]
}

class Entry: Codable {
    let name: String
    let format: String
    let yearStart: String
    let yearEnd: String?
    let episodes: Int?
    let studio: String
    let network: String?
    let imageUrl: String
    let description: String
    let summary: String
    
}
