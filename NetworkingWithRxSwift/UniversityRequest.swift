//
//  UniversityRequest.swift
//  NetworkingWithRxSwift
//
//  Created by Edmilson vieira da silva on 23/02/21.
//  Copyright © 2021 Edmilson vieira da silva. All rights reserved.
//

import Foundation

class UniversityRequest: APIRequest {
    var method = RequestType.GET
    var path = "search"
    var parameters = [String: String]()

    init(name: String) {
        parameters["name"] = name
    }
}
