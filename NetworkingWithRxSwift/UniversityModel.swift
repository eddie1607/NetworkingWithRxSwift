//
//  UniversityModel.swift
//  NetworkingWithRxSwift
//
//  Created by Edmilson vieira da silva on 23/02/21.
//  Copyright © 2021 Edmilson vieira da silva. All rights reserved.
//

import Foundation
struct UniversityModel: Codable {
    let name: String
    let webPages: [String]?
    let country: String

    private enum CodingKeys: String, CodingKey {
        case name
        case webPages = "web_pages"
        case country
    }

    var description: String {
        get {
            if let webPage = webPages?.first {
                return "\(country) • \(webPage)"
            } else {
                return country
            }
        }
    }
}


