//
//  RMLocation.swift
//  RickAndMorty
//
//  Created by Jiradet Amornpimonkul on 5/28/23.
//

import Foundation

struct RMLocation: Codable {
    let id: Int
    let name: String
    let type: String
    let dimension: String
    let residents: [String]
    let url: String
    let created: String
}
