//
//  Page.swift
//  ListApp
//
//  Created by German Blonski on 15.05.2022.
//

import Foundation

struct Page: Decodable {
    
    var page: Int
    var perpage: Int
    var total: Int
    var totalPages: Int
    var data: [Person]
    var support: Support
    
    enum CodingKeys: String, CodingKey {
        case page = "page"
        case perpage = "per_page"
        case total = "total"
        case totalPages = "total_pages"
        case data = "data"
        case support = "support"
    }
    
}
