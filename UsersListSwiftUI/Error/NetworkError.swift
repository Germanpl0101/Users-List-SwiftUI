//
//  NetworkError.swift
//  ListApp
//
//  Created by German Blonski on 15.05.2022.
//

import Foundation

enum NetworkError: Error {
    case requestError, serverError
}

extension NetworkError: CustomStringConvertible {
    
    var description: String {
        switch self {
        case .requestError:
            return "Network have bad response"
        case .serverError:
            return "Network server error"
        }
    }
    
}
