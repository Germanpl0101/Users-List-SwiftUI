//
//  Person.swift
//  ListApp
//
//  Created by German Blonski on 12.05.2022.
//

import Foundation


struct Person : Identifiable, Hashable, Decodable {
    
    var id: Int
    var email: String
    var firstName: String
    var lastname: String
    var avatarURL: String
    
    var profileURL: URL? {
        guard let url = URL(string: self.avatarURL) else { return nil }
        return url
    }
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case email = "email"
        case firstName = "first_name"
        case lastname = "last_name"
        case avatarURL = "avatar"
    }
    
}




