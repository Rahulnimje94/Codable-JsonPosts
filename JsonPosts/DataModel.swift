//
//  DataModel.swift
//  JsonPosts
//
//  Created by Anand Nimje on 12/09/18.
//  Copyright © 2018 Anand. All rights reserved.
//

import Foundation

struct DataModel: Codable {
    let id: Int?
    let title: String?
    let body: String?
    
//    enum CodingKeys: String, CodingKey {
//        case id
//        case title
//        case body
//    }
}

